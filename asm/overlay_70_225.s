#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238F80
	.public ov70_02240948

	.text

	thumb_func_start ov70_02240948
ov70_02240948: ; 0x02240948
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_02238F80
	bl sub_0203A914
	ldr r0, _0224099C ; =0x000011FC
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02240978
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	b _02240990
_02240978:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl BeginNormalPaletteFade
_02240990:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0224099C: .word 0x000011FC
	thumb_func_end ov70_02240948

