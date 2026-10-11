#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E83EC
	.public ov73_021E93EC
	.public ov73_021E9F34

	.text

	thumb_func_start ov73_021E93EC
ov73_021E93EC: ; 0x021E93EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9414 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9418 ; =0x00000BD4
	mov r2, #2
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9F34
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0xd
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9414: .word 0x00000F0F
_021E9418: .word 0x00000BD4
	thumb_func_end ov73_021E93EC

