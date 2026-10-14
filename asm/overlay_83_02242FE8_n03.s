	.include "macros.inc"
	.include "overlay_83_02242FE8.inc"
	.include "global.inc"
	.public ov83_022432B4
	.extern ov83_022433B8

    .text

	.text
	thumb_func_start ov83_022432B4
ov83_022432B4: ; 0x022432B4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _022433B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022432CC: ; jump table
	.short _022432D6 - _022432CC - 2 ; case 0
	.short _022432F2 - _022432CC - 2 ; case 1
	.short _0224331A - _022432CC - 2 ; case 2
	.short _02243360 - _022432CC - 2 ; case 3
	.short _022433A2 - _022432CC - 2 ; case 4
_022432D6:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _022432EA
	bl sub_02037BEC
	mov r0, #0xd8
	bl sub_02037AC0
_022432EA:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_022432F2:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02243312
	mov r0, #0xd8
	bl sub_02037B38
	cmp r0, #1
	bne _022433B0
	bl sub_02037BEC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_02243312:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_0224331A:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0224333A
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	bl ov83_022450A8
	cmp r0, #1
	bne _022433B0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_0224333A:
	add r0, r4, #0
	bl ov83_022433B8
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_02243360:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0224339A
	ldrb r0, [r4, #0x17]
	cmp r0, #2
	blo _022433B0
	mov r0, #0
	strb r0, [r4, #0x17]
	add r0, r4, #0
	bl ov83_022433B8
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_0224339A:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022433B0
_022433A2:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022433B0
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_022433B0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_022432B4

