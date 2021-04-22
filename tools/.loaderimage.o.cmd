cmd_tools/loaderimage.o := cc -Wp,-MD,tools/.loaderimage.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer   -include /data/build/android-rk3399-Industry/u-boot/include/libfdt_env.h -idirafterinclude -idirafter/data/build/android-rk3399-Industry/u-boot/arch/arm/include -I/data/build/android-rk3399-Industry/u-boot/lib/libfdt -I/data/build/android-rk3399-Industry/u-boot/tools -DCONFIG_SYS_TEXT_BASE=0x00200000 -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -D_GNU_SOURCE  -c -o tools/loaderimage.o tools/loaderimage.c

source_tools/loaderimage.o := tools/loaderimage.c

deps_tools/loaderimage.o := \
    $(wildcard include/config/secureboot/sha256.h) \
    $(wildcard include/config/rk/nvme/boot/en.h) \
    $(wildcard include/config/ident/string.h) \
    $(wildcard include/config/sys/text/base.h) \
  /usr/include/stdc-predef.h \
  /data/build/android-rk3399-Industry/u-boot/include/libfdt_env.h \
  /data/build/android-rk3399-Industry/u-boot/include/compiler.h \
    $(wildcard include/config/use/stdint.h) \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h \
  /usr/include/stdint.h \
  /usr/include/x86_64-linux-gnu/bits/libc-header-start.h \
  /usr/include/features.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/bits/long-double.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/timesize.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/time64.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-intn.h \
  /usr/include/x86_64-linux-gnu/bits/stdint-uintn.h \
  /usr/include/errno.h \
  /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h \
  /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h \
  /usr/include/asm-generic/errno-base.h \
  /usr/include/x86_64-linux-gnu/bits/types/error_t.h \
  /usr/include/stdlib.h \
  /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/bits/floatn.h \
  /usr/include/x86_64-linux-gnu/bits/floatn-common.h \
  /usr/include/x86_64-linux-gnu/bits/types/locale_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/bits/types/clock_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/clockid_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/time_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/timer_t.h \
  /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endianness.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/uintn-identity.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h \
  /usr/include/x86_64-linux-gnu/bits/select2.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h \
  /usr/include/x86_64-linux-gnu/bits/struct_mutex.h \
  /usr/include/x86_64-linux-gnu/bits/struct_rwlock.h \
  /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib.h \
  /usr/include/stdio.h \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h \
  /usr/include/x86_64-linux-gnu/bits/types/__FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h \
  /usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/include/x86_64-linux-gnu/bits/stdio2.h \
  /usr/include/string.h \
  /usr/include/strings.h \
  /usr/include/x86_64-linux-gnu/bits/strings_fortified.h \
  /usr/include/x86_64-linux-gnu/bits/string_fortified.h \
  /usr/include/x86_64-linux-gnu/sys/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman.h \
  /usr/include/x86_64-linux-gnu/bits/mman-map-flags-generic.h \
  /usr/include/x86_64-linux-gnu/bits/mman-linux.h \
  /usr/include/x86_64-linux-gnu/bits/mman-shared.h \
  /usr/include/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl-linux.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h \
  /usr/include/linux/falloc.h \
  /usr/include/x86_64-linux-gnu/bits/stat.h \
  /usr/include/x86_64-linux-gnu/bits/fcntl2.h \
  /usr/include/byteswap.h \
  /usr/include/time.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_tm.h \
  /usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h \
  /data/build/android-rk3399-Industry/u-boot/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  /usr/include/linux/posix_types.h \
  /usr/include/linux/stddef.h \
  /usr/include/x86_64-linux-gnu/asm/posix_types.h \
  /usr/include/x86_64-linux-gnu/asm/posix_types_64.h \
  /usr/include/asm-generic/posix_types.h \
  /usr/include/x86_64-linux-gnu/asm/bitsperlong.h \
  /usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /usr/include/x86_64-linux-gnu/asm/types.h \
  /usr/include/asm-generic/types.h \
  /usr/include/asm-generic/int-ll64.h \
  /usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h \
  include/compiler.h \
  include/version.h \
  include/timestamp.h \
  include/generated/timestamp_autogenerated.h \
  include/generated/version_autogenerated.h \
  include/sha.h \
  /usr/include/inttypes.h \
  include/u-boot/sha256.h \
  include/u-boot/crc.h \
    $(wildcard include/config/rockchip.h) \
  include/linux/sizes.h \
  include/config.h \
    $(wildcard include/config/rkchip/rk3399.h) \
    $(wildcard include/config/product/mid.h) \
    $(wildcard include/config/normal/world.h) \
    $(wildcard include/config/second/level/bootloader.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
    $(wildcard include/config/partitions.h) \
  include/configs/rk33plat.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/rkchip/rk3368.h) \
    $(wildcard include/config/rkchip/rk3366.h) \
    $(wildcard include/config/rkchip/rk322xh.h) \
    $(wildcard include/config/gicv2.h) \
    $(wildcard include/config/rktimer/v2.h) \
    $(wildcard include/config/gicv3.h) \
    $(wildcard include/config/rktimer/v3.h) \
    $(wildcard include/config/sys/clk/freq/crystal.h) \
    $(wildcard include/config/ram/phy/start.h) \
    $(wildcard include/config/ram/phy/size.h) \
    $(wildcard include/config/ram/phy/end.h) \
    $(wildcard include/config/max/mem/addr.h) \
    $(wildcard include/config/kernel/running/addr.h) \
    $(wildcard include/config/switch/el3/to/el1.h) \
    $(wildcard include/config/icache/enable/for/kernel.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/rk/mcu.h) \
    $(wildcard include/config/secureboot/crypto.h) \
    $(wildcard include/config/rk/sdhci/boot/en.h) \
    $(wildcard include/config/rk/sdmmc/boot/en.h) \
    $(wildcard include/config/rk/flash/boot/en.h) \
    $(wildcard include/config/rk/ums/boot/en.h) \
    $(wildcard include/config/rk/trustos.h) \
    $(wildcard include/config/rk/pl330/dmac.h) \
    $(wildcard include/config/optee/client.h) \
    $(wildcard include/config/optee/v1.h) \
    $(wildcard include/config/rktimer/incrementer.h) \
    $(wildcard include/config/rockchip/display.h) \
    $(wildcard include/config/merger/trustimage.h) \
    $(wildcard include/config/lcd.h) \
    $(wildcard include/config/pm/subsystem.h) \
    $(wildcard include/config/perilp/mcu.h) \
    $(wildcard include/config/pmu/mcu.h) \
    $(wildcard include/config/cmd/rockusb.h) \
    $(wildcard include/config/cmd/fastboot.h) \
    $(wildcard include/config/rk/udc.h) \
    $(wildcard include/config/rk/dwc3/udc.h) \
    $(wildcard include/config/rk/gpio/ext/func.h) \
    $(wildcard include/config/charge/led.h) \
    $(wildcard include/config/power/fusb302.h) \
    $(wildcard include/config/optee/always/use/security/partition.h) \
    $(wildcard include/config/merger/miniloader.h) \
    $(wildcard include/config/fpga/board.h) \
    $(wildcard include/config/board/demo.h) \
    $(wildcard include/config/rk/io/tool.h) \
    $(wildcard include/config/skip/relocate/uboot.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/sys/l2cache/off.h) \
    $(wildcard include/config/rk/sdcard/boot/en.h) \
    $(wildcard include/config/rk/power.h) \
    $(wildcard include/config/rk/clock.h) \
    $(wildcard include/config/rk/iomux.h) \
    $(wildcard include/config/rk/i2c.h) \
    $(wildcard include/config/rk/key.h) \
    $(wildcard include/config/secure/rsa/key/in/ram.h) \
    $(wildcard include/config/secure/rsa/key/addr.h) \
    $(wildcard include/config/rknand/api/addr.h) \
    $(wildcard include/config/bootdelay.h) \
    $(wildcard include/config/rk/efuse.h) \
    $(wildcard include/config/rkefuse/v2.h) \
    $(wildcard include/config/efuse/ns/info/addr.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/generic/mmc.h) \
    $(wildcard include/config/sdhci.h) \
    $(wildcard include/config/rk/sdhci.h) \
    $(wildcard include/config/rk/ar/sdhci.h) \
    $(wildcard include/config/rk/mmc/dma.h) \
    $(wildcard include/config/rk/mmc/idmac.h) \
    $(wildcard include/config/rk/mmc/ddr/mode.h) \
    $(wildcard include/config/usbd/manufacturer.h) \
    $(wildcard include/config/usbd/product/name.h) \
    $(wildcard include/config/rockusb/timeout/check.h) \
    $(wildcard include/config/usbd/vendorid.h) \
    $(wildcard include/config/usbd/productid/rockusb.h) \
    $(wildcard include/config/usbd/productid/fastboot.h) \
    $(wildcard include/config/fastboot/log.h) \
    $(wildcard include/config/fastboot/log/size.h) \
    $(wildcard include/config/usb/dwc3.h) \
    $(wildcard include/config/usb/dwc3/gadget.h) \
    $(wildcard include/config/usb/ehci.h) \
    $(wildcard include/config/usb/ehci/rk.h) \
    $(wildcard include/config/usb/dwc/hcd.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/rk322x/fb.h) \
    $(wildcard include/config/direct/logo.h) \
    $(wildcard include/config/rk/tve.h) \
    $(wildcard include/config/rk/vop/dual/any/freq/pll.h) \
    $(wildcard include/config/rk/vop/full/fb.h) \
    $(wildcard include/config/rk/hdmi.h) \
    $(wildcard include/config/rk3036/tve.h) \
    $(wildcard include/config/logo/hash/check.h) \
    $(wildcard include/config/rk33/fb.h) \
    $(wildcard include/config/rk/hdmiv2.h) \
    $(wildcard include/config/rk1000/tve.h) \
    $(wildcard include/config/gm7122/tve.h) \
    $(wildcard include/config/rk32/dsi.h) \
    $(wildcard include/config/rk3399/edp.h) \
    $(wildcard include/config/uboot/charge.h) \
    $(wildcard include/config/rk/fb.h) \
    $(wildcard include/config/rk/pwm/bl.h) \
    $(wildcard include/config/cmd/bmp.h) \
    $(wildcard include/config/rockchip/vop.h) \
    $(wildcard include/config/rockchip/mipi/dsi.h) \
    $(wildcard include/config/rockchip/dw/mipi/dsi.h) \
    $(wildcard include/config/rockchip/lvds.h) \
    $(wildcard include/config/rockchip/analogix/dp.h) \
    $(wildcard include/config/drm/rockchip/dw/hdmi.h) \
    $(wildcard include/config/rkchip/inno/hdmi/phy.h) \
    $(wildcard include/config/rockchip/panel.h) \
    $(wildcard include/config/i2c/edid.h) \
    $(wildcard include/config/rockchip/drm/tve.h) \
    $(wildcard include/config/product/box.h) \
    $(wildcard include/config/rockchip/drm/rk1000.h) \
    $(wildcard include/config/cmd/charge/anim.h) \
    $(wildcard include/config/charge/deep/sleep.h) \
    $(wildcard include/config/charge/timer/wakeup.h) \
    $(wildcard include/config/power.h) \
    $(wildcard include/config/power/i2c.h) \
    $(wildcard include/config/power/pmic.h) \
    $(wildcard include/config/power/fg.h) \
    $(wildcard include/config/power/bat.h) \
    $(wildcard include/config/power/charger.h) \
    $(wildcard include/config/screen/on/vol/thresd.h) \
    $(wildcard include/config/system/on/vol/thresd.h) \
    $(wildcard include/config/power/pwm/regulator.h) \
    $(wildcard include/config/power/rk/sample.h) \
    $(wildcard include/config/power/ricoh619.h) \
    $(wildcard include/config/power/rk808.h) \
    $(wildcard include/config/power/rk818.h) \
    $(wildcard include/config/power/act8846.h) \
    $(wildcard include/config/charger/bq25700.h) \
    $(wildcard include/config/power/fg/cw201x.h) \
    $(wildcard include/config/battery/rk/sample.h) \
    $(wildcard include/config/battery/bq27541.h) \
    $(wildcard include/config/battery/ricoh619.h) \
    $(wildcard include/config/battery/ec.h) \
  /data/build/android-rk3399-Industry/u-boot/arch/arm/include/asm/arch/io.h \
  /data/build/android-rk3399-Industry/u-boot/arch/arm/include/asm/arch/io-rk3399.h \
  include/configs/rk_default_config.h \
    $(wildcard include/config/arch/cpu/init.h) \
    $(wildcard include/config/display/cpuinfo.h) \
    $(wildcard include/config/display/boardinfo.h) \
    $(wildcard include/config/setup/memory/tags.h) \
    $(wildcard include/config/cmdline/tag.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/initrd/tag.h) \
    $(wildcard include/config/board/late/init.h) \
    $(wildcard include/config/arch/early/init/r.h) \
    $(wildcard include/config/sys/generic/board.h) \
    $(wildcard include/config/sys/no/flash.h) \
    $(wildcard include/config/sha256.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/source.h) \
    $(wildcard include/config/bootm/ose.h) \
    $(wildcard include/config/lynxkdi.h) \
    $(wildcard include/config/integrity.h) \
    $(wildcard include/config/cmd/elf.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/fpga.h) \
    $(wildcard include/config/cmd/misc.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/cmd/nfs.h) \
    $(wildcard include/config/cmd/ximg.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/source.h) \
    $(wildcard include/config/cmd/bdi.h) \
    $(wildcard include/config/cmd/console.h) \
    $(wildcard include/config/cmd/cache.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/echo.h) \
    $(wildcard include/config/cmd/reginfo.h) \
    $(wildcard include/config/cmd/loadb.h) \
    $(wildcard include/config/cmd/loads.h) \
    $(wildcard include/config/cmd/imi.h) \
    $(wildcard include/config/cmd/editenv.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/setgetdcr.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/use/irq.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/imprecise/aborts/check.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/sys/clk/freq.h) \
    $(wildcard include/config/sys/hz.h) \
    $(wildcard include/config/preboot.h) \
    $(wildcard include/config/cmd/bootrk.h) \
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/env/is/in/rk/storage.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/lcd/console/disable.h) \
    $(wildcard include/config/sys/console/is/in/env.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/sys/hush/parser.h) \
    $(wildcard include/config/sys/prompt/hush/ps2.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/sys/ramboot.h) \
    $(wildcard include/config/sys/vsnprintf.h) \
    $(wildcard include/config/sdram/phy/start.h) \
    $(wildcard include/config/lmb/reserve/memory/size.h) \
    $(wildcard include/config/kernel/load/addr.h) \
    $(wildcard include/config/lmb/reserve/size.h) \
    $(wildcard include/config/rk/max/dram/banks.h) \
    $(wildcard include/config/rkddr/param/addr.h) \
    $(wildcard include/config/rktrust/param/addr.h) \
    $(wildcard include/config/rkhdmi/param/addr.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/sdram/size.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/stacksize/irq.h) \
    $(wildcard include/config/stacksize/fiq.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/max/bmp/blocks.h) \
    $(wildcard include/config/rk/global/buffer/size.h) \
    $(wildcard include/config/rk/boot/buffer/size.h) \
    $(wildcard include/config/fastboot/transfer/buffer/size.h) \
    $(wildcard include/config/fastboot/transfer/buffer/size/each.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/bootrk/rk/image/check.h) \
    $(wildcard include/config/bootrk/ota/image/check.h) \
    $(wildcard include/config/enable/erasekey.h) \
    $(wildcard include/config/quick/checksum.h) \
    $(wildcard include/config/max/partitions.h) \
    $(wildcard include/config/resource/partition.h) \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/of/from/resource.h) \
    $(wildcard include/config/rk/deviceinfo.h) \
    $(wildcard include/config/rk/pwm/remote.h) \
    $(wildcard include/config/rk/uart.h) \
    $(wildcard include/config/uart/num.h) \
    $(wildcard include/config/rkuart2usb/force.h) \
    $(wildcard include/config/usb/device.h) \
    $(wildcard include/config/rk/gpio.h) \
    $(wildcard include/config/i2c/multi/bus.h) \
    $(wildcard include/config/sys/i2c/speed.h) \
    $(wildcard include/config/rk/spi.h) \
    $(wildcard include/config/rk/pwm.h) \
    $(wildcard include/config/rk/gmac.h) \
    $(wildcard include/config/lcd/logo.h) \
    $(wildcard include/config/lcd/bmp/rle8.h) \
    $(wildcard include/config/compress/logo/rle8.h) \
    $(wildcard include/config/compress/logo/rle16.h) \
    $(wildcard include/config/bmp/16bpp.h) \
    $(wildcard include/config/bmp/24bpp.h) \
    $(wildcard include/config/bmp/32bpp.h) \
    $(wildcard include/config/sys/white/on/black.h) \
    $(wildcard include/config/lcd/max/width.h) \
    $(wildcard include/config/lcd/max/height.h) \
    $(wildcard include/config/rk/fb/ddrend.h) \
    $(wildcard include/config/kernel/logo.h) \
    $(wildcard include/config/rk/lcd/size.h) \
    $(wildcard include/config/rk/fb/size.h) \
    $(wildcard include/config/brightness/dim.h) \
  include/config_cmd_default.h \
    $(wildcard include/config/cmd/default/h.h) \
    $(wildcard include/config/cmd/flash.h) \
    $(wildcard include/config/cmd/imls.h) \
  /data/build/android-rk3399-Industry/u-boot/arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/sys/generic/global/data.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/static/rela.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/ls102xa.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/cmd/fat.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/cmd/ide.h) \
    $(wildcard include/config/cmd/sata.h) \
    $(wildcard include/config/cmd/scsi.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/disable/image/legacy.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/link/local.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/rarp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/cmd/tftpput.h) \
    $(wildcard include/config/cmd/tftpsrv.h) \

tools/loaderimage.o: $(deps_tools/loaderimage.o)

$(deps_tools/loaderimage.o):
