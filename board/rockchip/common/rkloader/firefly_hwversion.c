/*
 * (C) Copyright 2008-2016 Fuzhou Rockchip Electronics Co., Ltd
 * Peter, Software Engineering, <superpeter.cai@gmail.com>.
 *
 * SPDX-License-Identifier:     GPL-2.0+
 */
//#define DEBUG
#include <common.h>
#include <fdtdec.h>
#include <libfdt.h>
#include <power/rockchip_power.h> 
#include "../config.h"

DECLARE_GLOBAL_DATA_PTR;

#define read_XDATA32(address)           (*((uint32 volatile*)(unsigned long)(address)))
#define write_XDATA32(address, value)   (*((uint32 volatile*)(unsigned long)(address)) = value)

#define SARADC_BASE                     RKIO_SARADC_BASE

typedef struct {
   unsigned int index;
   unsigned int data;
   unsigned int stas;
   unsigned int ctrl;
}ADC_CONFIG;

typedef struct {
   unsigned int min;
   unsigned int max;
   unsigned int version;
}VERSION_DATE;



static int firefly_hwversion_adc_read_adc(ADC_CONFIG *adc){
    int i;
    unsigned int value = 0;

    write_XDATA32( adc->ctrl, 0);
    for(i = 0; i < 10; i++){
        DRVDelayUs(5);
        write_XDATA32( adc->ctrl, 0x0028 | ( adc->index));
        DRVDelayUs(5);
        while(!(read_XDATA32( adc->ctrl)&0x40)) DRVDelayUs(5);
        DRVDelayUs(5);
        value = read_XDATA32( adc->data);
        DRVDelayUs(5);
        write_XDATA32( adc->ctrl, 0);
    }
    return value;

}

static u32 firefly_hwversion_get_version(const VERSION_DATE *version_dates, int len, int value){
    int i;    

    for(i=0; i < len; i++){
        //debug("%s: %d %d %d\n", __FUNCTION__, value, version_dates[i].min, version_dates[i].max);
        if( value >= version_dates[i].min && value <= version_dates[i].max){
            return version_dates[i].version;
        }
    }
    printf("hwversion: get version fail!\n");
    return NULL;
}

static int firefly_hwversion_fdtdec_get_int_array(const void *blob, int node, const char *prop_name,
		VERSION_DATE *version_dates, int count)
{
	const u32 *cell;
	int i;

	cell = fdtdec_locate_array(blob, node, prop_name,
				      count);
	if (cell) {
		for (i = 0; i < count;) {
			version_dates[i/3].version = fdt32_to_cpu(cell[i++]);
			version_dates[i/3].min = fdt32_to_cpu(cell[i++]);
			version_dates[i/3].max = fdt32_to_cpu(cell[i++]);
        }
        return 0;
	}
	return -1;
}

int firefly_hwversion_setenv(char *command_line, int size){
	const char *prop;
    ADC_CONFIG adc;
    void *blob = (void *)gd->fdt_blob;
    int value;
    int i, version_len, range_len;
    int node;
	int ret;
    VERSION_DATE *version_dates;
    u32 hwversion;
    u32 channel = ~0;

	debug("%s: enter\n", __func__);
    node = fdt_node_offset_by_compatible(blob, 0, "firefly,hwversion"); 
    if(node < 0){
        printf("hwversion: can't find dts node for version\r\n");
        return -EINVAL;
    }

    if(fdtdec_get_is_enabled(blob, node) <= 0) {
        printf("hwversion: disabled!\r\n");
        return -EINVAL;
    }
   
    fdtdec_get_int_array(blob, node, "io-channel",
		&channel, 1);
   
	prop = fdt_getprop(blob, node, "versions-list", &range_len);
	if (!prop) {
		printf("hwversion: can't find prop versions-list\n");
		return -EINVAL;
    }
	range_len = range_len / sizeof(u32);	/* totoal int array members */
	if (!range_len || range_len % 3) {
		printf("hwversion: not 3 members per group!\n");
		return -EINVAL;
	}
    version_len = range_len/3;
    version_dates = (VERSION_DATE *)malloc(version_len*sizeof(VERSION_DATE));
	if (!version_dates) {
		printf("hwversion: malloc version_dates failed\n");
		return -ENOMEM;
	}
    ret = firefly_hwversion_fdtdec_get_int_array(blob, node, "versions-list",
		version_dates, range_len);
	if (ret) {
		printf("hwversion: fdt get range_dates failed\n");
		goto error;
    }
    debug("io-channel:%d\n", channel);
    debug("version list:\n");
    for(i=0; i<version_len; i++){
        debug("V%08x: %d - %d\n", version_dates[i].version, 
                version_dates[i].min, version_dates[i].max);
    }

    adc.index = channel;
    adc.data = SARADC_BASE + 0;
    adc.stas = SARADC_BASE + 4;
    adc.ctrl = SARADC_BASE + 8;

    value = firefly_hwversion_adc_read_adc(&adc);
    hwversion = firefly_hwversion_get_version(version_dates, version_len, value);
    debug("hwversion: adc=%d, hwversion=0x%08x\n", value, hwversion);
    snprintf(command_line, size, "%s hwversion=0x%08x", command_line, hwversion);

	debug("%s: exit\n", __func__);
error:
    free(version_dates);
    return ret;    
}
