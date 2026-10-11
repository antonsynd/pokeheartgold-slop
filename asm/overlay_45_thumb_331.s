#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222DD78
	.extern ov45_0222DD44
	.extern ov45_02254C0C

	.text

	.text
	thumb_func_start ov45_0222DD78
ov45_0222DD78: ; 0x0222DD78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	str r1, [sp, #8]
	add r5, r3, #0
	bl ov45_0222DD44
	cmp r0, #0
	bne _0222DD8E
	bl GF_AssertFail
_0222DD8E:
	mov r2, #0x8a
	lsl r2, r2, #2
	ldr r4, [r4, r2]
	ldr r3, [sp, #0x28]
	mov r0, #1
	mov r1, #0x1b
	add r2, #0xcd
	bl NewMsgDataFromNarc
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	bl MessageFormat_New
	ldrb r6, [r4]
	str r0, [sp, #0xc]
	cmp r6, #9
	bhs _0222DDCA
	ldr r0, [sp, #0x28]
	str r5, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r4, _0222DDE0 ; =ov45_02254C0C
	lsl r5, r6, #2
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r4, [r4, r5]
	add r3, r7, #0
	blx r4
	add r4, r0, #0
	b _0222DDCC
_0222DDCA:
	mov r4, #0
_0222DDCC:
	add r0, r7, #0
	bl DestroyMsgData
	ldr r0, [sp, #0xc]
	bl MessageFormat_Delete
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DDE0: .word ov45_02254C0C
	thumb_func_end ov45_0222DD78

