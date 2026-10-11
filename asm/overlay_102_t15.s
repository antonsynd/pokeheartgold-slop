	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7BF8
	.extern ov102_021E7AB8
	.extern ov102_021E7BD8
	.extern ov102_021E7BE8
	.extern ov102_021E940C

	.text

	.text
	thumb_func_start ov102_021E7BF8
ov102_021E7BF8: ; 0x021E7BF8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021E7C08
	bl ov102_021E7BD8
	b _021E7C0C
_021E7C08:
	bl ov102_021E7BE8
_021E7C0C:
	cmp r0, #3
	bhi _021E7C80
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E7C1C: ; jump table
	.short _021E7C24 - _021E7C1C - 2 ; case 0
	.short _021E7C3E - _021E7C1C - 2 ; case 1
	.short _021E7C58 - _021E7C1C - 2 ; case 2
	.short _021E7C58 - _021E7C1C - 2 ; case 3
_021E7C24:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #1
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7C3E:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #2
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7C58:
	add r1, r4, #0
	mov r2, #0
	add r1, #0x50
	strh r2, [r1]
	sub r1, r0, #2
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x4c
	strh r2, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #0
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7C80:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov102_021E7BF8

