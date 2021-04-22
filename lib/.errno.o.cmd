cmd_lib/errno.o := /data/build/android-rk3399-Industry/u-boot/../prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -Wp,-MD,lib/.errno.o.d  -nostdinc -isystem /data/build/android-rk3399-Industry/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9/include -Iinclude  -I/data/build/android-rk3399-Industry/u-boot/arch/arm/include -include /data/build/android-rk3399-Industry/u-boot/include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x00200000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -march=armv8-a -fno-pic -mgeneral-regs-only -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(errno)"  -D"KBUILD_MODNAME=KBUILD_STR(errno)" -c -o lib/errno.o lib/errno.c

source_lib/errno.o := lib/errno.c

deps_lib/errno.o := \

lib/errno.o: $(deps_lib/errno.o)

$(deps_lib/errno.o):
