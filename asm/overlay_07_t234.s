	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221F04
	.extern ov07_02236468
	.extern ov07_0223646A

	.text

	.text
	thumb_func_start ov07_02221F04
ov07_02221F04: ; 0x02221F04
	push {r3, r4, r5, r6}
	cmp r2, #0
	beq _02221F1A
	mov r4, #0x18
	add r6, r0, #0
	mul r6, r4
	ldr r4, _02221F30 ; =ov07_02236468
	lsl r5, r1, #2
	add r4, r4, r6
	ldrsh r4, [r5, r4]
	strh r4, [r2]
_02221F1A:
	cmp r3, #0
	beq _02221F2C
	mov r2, #0x18
	mul r2, r0
	ldr r0, _02221F34 ; =ov07_0223646A
	lsl r1, r1, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	strh r0, [r3]
_02221F2C:
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
_02221F30: .word ov07_02236468
_02221F34: .word ov07_0223646A
	thumb_func_end ov07_02221F04

