cmd_board/rockchip/common/platform/rsa.o := /data/build/android-rk3399-Industry/u-boot/../prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -Wp,-MD,board/rockchip/common/platform/.rsa.o.d  -nostdinc -isystem /data/build/android-rk3399-Industry/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9/include -Iinclude  -I/data/build/android-rk3399-Industry/u-boot/arch/arm/include -include /data/build/android-rk3399-Industry/u-boot/include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x00200000 -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Os -fno-stack-protector -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -march=armv8-a -fno-pic -mgeneral-regs-only -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(rsa)"  -D"KBUILD_MODNAME=KBUILD_STR(rsa)" -c -o board/rockchip/common/platform/rsa.o board/rockchip/common/platform/rsa.c

source_board/rockchip/common/platform/rsa.o := board/rockchip/common/platform/rsa.c

deps_board/rockchip/common/platform/rsa.o := \
  board/rockchip/common/platform/rsa.h \
  include/malloc.h \
  include/linux/stddef.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/use/stdint.h) \
  include/linux/posix_types.h \
  /data/build/android-rk3399-Industry/u-boot/arch/arm/include/asm/posix_types.h \
  /data/build/android-rk3399-Industry/u-boot/arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
  /data/build/android-rk3399-Industry/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/lib/gcc/aarch64-linux-android/4.9/include/stdbool.h \

board/rockchip/common/platform/rsa.o: $(deps_board/rockchip/common/platform/rsa.o)

$(deps_board/rockchip/common/platform/rsa.o):
