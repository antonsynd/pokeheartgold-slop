	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDEA8
	.extern ov103_021EDF88
	.extern ov103_021EE048
	.extern ov103_021EE0CC
	.extern ov103_021EE13C
	.extern ov103_021EE160
	.extern ov103_021EE2E0
	.extern ov103_021EED58

	.text

	.text
	thumb_func_start ov103_021EDEA8
ov103_021EDEA8: ; 0x021EDEA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #0xc]
	bl ov103_021EE13C
	ldr r0, [r5, #0xc]
	bl ov103_021EDF88
	ldr r0, [r5, #0xc]
	bl ov103_021EE2E0
	ldr r0, [r5, #0xc]
	bl ov103_021EE160
	mov r7, #0
	ldr r6, _021EDF4C ; =ov103_021EED58
	add r4, r7, #0
_021EDEDA:
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl ov103_021EE048
	ldr r1, [r5, #0xc]
	add r7, r7, #1
	add r2, r1, r4
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r6, #0x34
	add r4, r4, #4
	cmp r7, #7
	blo _021EDEDA
	ldr r0, [r5, #0xc]
	add r1, #0x88
	ldrh r1, [r0, r1]
	cmp r1, #0xa
	bhi _021EDF14
	mov r1, #0
	add r2, r1, #0
	bl ov103_021EE0CC
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r2, #0
	bl ov103_021EE0CC
	b _021EDF2C
_021EDF14:
	ldrh r1, [r5, #0x1c]
	cmp r1, #0
	bne _021EDF24
	mov r1, #0
	add r2, r1, #0
	bl ov103_021EE0CC
	b _021EDF2C
_021EDF24:
	mov r1, #1
	mov r2, #0
	bl ov103_021EE0CC
_021EDF2C:
	ldr r0, [r5, #0xc]
	mov r1, #4
	mov r2, #0
	bl ov103_021EE0CC
	ldr r0, [r5, #0xc]
	mov r1, #5
	mov r2, #0
	bl ov103_021EE0CC
	ldr r0, [r5, #0xc]
	mov r1, #6
	mov r2, #0
	bl ov103_021EE0CC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EDF4C: .word ov103_021EED58
	thumb_func_end ov103_021EDEA8

