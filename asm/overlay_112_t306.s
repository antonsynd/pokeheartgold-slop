#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EF8D4
	.extern ov112_021EA08C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EF8D4
ov112_021EF8D4: ; 0x021EF8D4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EF940 ; =0x0001E440
	ldr r0, [r5, r0]
	bl sub_02032718
	add r2, r0, #0
	ldr r0, _021EF944 ; =0x0001E448
	lsl r2, r2, #0x18
	ldr r0, [r5, r0]
	mov r1, #1
	lsr r2, r2, #0x18
	bl BufferPokewalkerCourseName
	mov r0, #0xc
	mov r1, #0x9a
	bl String_New
	ldr r1, _021EF948 ; =0x00009D54
	mov r2, #0xb
	add r1, r5, r1
	add r4, r0, #0
	bl CopyU16ArrayToStringN
	mov r1, #1
	ldr r0, _021EF94C ; =0x00001090
	str r1, [sp]
	ldr r0, [r5, r0]
	ldr r3, _021EF950 ; =0x00009D51
	str r0, [sp, #4]
	ldrb r3, [r5, r3]
	ldr r0, _021EF944 ; =0x0001E448
	add r2, r4, #0
	lsl r3, r3, #0x19
	ldr r0, [r5, r0]
	lsr r3, r3, #0x1e
	bl BufferString
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x2c
	bl ov112_021EA08C
	ldr r1, _021EF954 ; =0x0001E524
	str r0, [r5, r1]
	mov r0, #4
	str r0, [r5, #0xc]
	mov r0, #0x23
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF940: .word 0x0001E440
_021EF944: .word 0x0001E448
_021EF948: .word 0x00009D54
_021EF94C: .word 0x00001090
_021EF950: .word 0x00009D51
_021EF954: .word 0x0001E524
	thumb_func_end ov112_021EF8D4

