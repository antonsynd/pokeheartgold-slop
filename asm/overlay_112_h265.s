#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EDF4C
	.extern ov112_021E7464
	.extern ov112_021EA08C
	.extern ov112_021ED610
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EDF4C
ov112_021EDF4C: ; 0x021EDF4C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0xc
	mov r1, #0x9a
	bl String_New
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	add r0, r5, #0
	bl ov112_021ED610
	cmp r0, #0
	beq _021EDFB8
	ldr r1, _021EDFD8 ; =0x00009D54
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0xc
	bl CopyU16ArrayToStringN
	mov r1, #1
	str r1, [sp]
	ldr r3, _021EDFDC ; =0x00009D51
	str r1, [sp, #4]
	ldrb r3, [r5, r3]
	ldr r0, _021EDFE0 ; =0x0001E448
	add r2, r4, #0
	lsl r3, r3, #0x19
	ldr r0, [r5, r0]
	lsr r3, r3, #0x1e
	bl BufferString
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x1b
	bl ov112_021EA08C
	b _021EDFC2
_021EDFB8:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x20
	bl ov112_021EA08C
_021EDFC2:
	ldr r1, _021EDFE4 ; =0x0001E524
	str r0, [r5, r1]
	bl ov112_021E7464
	add r0, r4, #0
	bl String_Delete
	mov r0, #0x26
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021EDFD8: .word 0x00009D54
_021EDFDC: .word 0x00009D51
_021EDFE0: .word 0x0001E448
_021EDFE4: .word 0x0001E524
	thumb_func_end ov112_021EDF4C

