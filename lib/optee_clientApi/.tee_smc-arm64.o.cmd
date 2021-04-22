cmd_lib/optee_clientApi/tee_smc-arm64.o := /data/build/android-rk3399-Industry/u-boot/../prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -Wp,-MD,lib/optee_clientApi/.tee_smc-arm64.o.d  -nostdinc -isystem /data/build/android-rk3399-Industry/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9/include -Iinclude  -I/data/build/android-rk3399-Industry/u-boot/arch/arm/include -include /data/build/android-rk3399-Industry/u-boot/include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x00200000  -D__ASSEMBLY__ -g       -D__ARM__           -march=armv8-a  -fno-pic  -mgeneral-regs-only  -mstrict-align  -ffunction-sections -fdata-sections -fno-common -ffixed-r9   -fno-common -ffixed-x18 -pipe     -c -o lib/optee_clientApi/tee_smc-arm64.o lib/optee_clientApi/tee_smc-arm64.S

source_lib/optee_clientApi/tee_smc-arm64.o := lib/optee_clientApi/tee_smc-arm64.S

deps_lib/optee_clientApi/tee_smc-arm64.o := \
    $(wildcard include/config/arm64.h) \
  include/linux/linkage.h \
  /data/build/android-rk3399-Industry/u-boot/arch/arm/include/asm/linkage.h \

lib/optee_clientApi/tee_smc-arm64.o: $(deps_lib/optee_clientApi/tee_smc-arm64.o)

$(deps_lib/optee_clientApi/tee_smc-arm64.o):
