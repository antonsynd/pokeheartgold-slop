	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02237EB8
	.extern ov57_02237E90
	.extern ov57_02237EA8

	.text

	.text
	thumb_func_start ov57_02237EB8
ov57_02237EB8: ; 0x02237EB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _02237F0C
	cmp r2, #1
	bne _02237EE8
	ldr r3, _02237F10 ; =gSystem + 0x40
	mov r1, #0x20
	mov r2, #0x22
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	bl ManagedSprite_SetPositionXY
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r0, r5, #0
	bl ov57_02237EA8
	pop {r3, r4, r5, pc}
_02237EE8:
	add r1, sp, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov57_02237E90
_02237F0C:
	pop {r3, r4, r5, pc}
	nop
_02237F10: .word gSystem + 0x40
	thumb_func_end ov57_02237EB8

