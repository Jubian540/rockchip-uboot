cmd_arch/arm/lib/sections.o := /data/build/android-rk3399-Industry/u-boot/../prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -Wp,-MD,arch/arm/lib/.sections.o.d  -nostdinc -isystem /data/build/android-rk3399-Industry/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9/include -Iinclude  -I/data/build/android-rk3399-Industry/u-boot/arch/arm/include -include /data/build/android-rk3399-Industry/u-boot/include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x00200000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -march=armv8-a -fno-pic -mgeneral-regs-only -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(sections)"  -D"KBUILD_MODNAME=KBUILD_STR(sections)" -c -o arch/arm/lib/sections.o arch/arm/lib/sections.c

source_arch/arm/lib/sections.o := arch/arm/lib/sections.c

deps_arch/arm/lib/sections.o := \

arch/arm/lib/sections.o: $(deps_arch/arm/lib/sections.o)

$(deps_arch/arm/lib/sections.o):
