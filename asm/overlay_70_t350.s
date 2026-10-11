#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243768
	.extern ov70_02238F9C
	.extern ov70_02242D44
	.extern ov70_02245DF8
	.extern ov70_02245DF9

	.text

	.text
	thumb_func_start ov70_02243768
ov70_02243768: ; 0x02243768
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #6
	mov r2, #0x20
	add r4, r0, #0
	bl ov70_02242D44
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	sub r2, r1, #4
	add r3, r1, #0
	bl sub_020198FC
	mov r0, #1
	str r0, [r4, #0x4c]
	mov r0, #0x11
	str r0, [r4, #0x50]
	mov r0, #0xa
	str r0, [r4, #0x48]
	sub r0, #0xb
	strh r0, [r4, #0x3c]
	ldr r0, [r4, #0x48]
	ldr r1, _022437C0 ; =ov70_02245DF8
	lsl r3, r0, #1
	ldr r2, _022437C4 ; =ov70_02245DF9
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r4, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0
	mvn r0, r0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022437C0: .word ov70_02245DF8
_022437C4: .word ov70_02245DF9
	thumb_func_end ov70_02243768

