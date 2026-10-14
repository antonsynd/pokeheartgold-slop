	.include "macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E87B4
	.extern ov102_021E7A4C
	.extern ov102_021E8B18
	.extern ov102_021E940C
	.extern ov102_021E9464
	.extern ov102_021E947C

	.text

	.text
	thumb_func_start ov102_021E87B4
ov102_021E87B4: ; 0x021E87B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r2, [r5]
	add r4, r0, #0
	cmp r2, #3
	bhi _021E881C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E87CC: ; jump table
	.short _021E87D4 - _021E87CC - 2 ; case 0
	.short _021E87DA - _021E87CC - 2 ; case 1
	.short _021E87EC - _021E87CC - 2 ; case 2
	.short _021E8806 - _021E87CC - 2 ; case 3
_021E87D4:
	bl ov102_021E8B18
	b _021E881C
_021E87DA:
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov102_021E947C
	cmp r0, #0
	beq _021E881C
	mov r0, #0
	str r0, [r5]
	b _021E881C
_021E87EC:
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov102_021E947C
	cmp r0, #0
	beq _021E881C
	ldr r0, [r4, #0x14]
	mov r1, #0x12
	bl ov102_021E940C
	mov r0, #0
	str r0, [r5]
	b _021E881C
_021E8806:
	ldr r0, [r4, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E881C
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov102_021E7A4C
	mov r0, #0
	str r0, [r5]
_021E881C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E87B4

