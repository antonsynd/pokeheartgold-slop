	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_022628A0
	.extern ov12_02262240

	.text

	.text
	thumb_func_start ov12_022628A0
ov12_022628A0: ; 0x022628A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r4, r0, #0
	lsl r0, r7, #2
	add r0, r4, r0
	ldr r1, [r0, #0x34]
	ldr r0, _02262950 ; =0x00000195
	str r2, [sp, #4]
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _022628BE
	mov r2, #2
	b _022628C0
_022628BE:
	mov r2, #0
_022628C0:
	mov r0, #0xc0
	add r6, r7, #0
	mul r6, r0
	ldr r0, [r4, #0x30]
	ldr r5, _02262954 ; =0x00002D66
	add r0, r0, r6
	ldrb r0, [r0, r5]
	mov r1, #6
	lsl r0, r0, #0x1b
	lsr r3, r0, #0x1b
	add r0, sp, #8
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r6
	add r0, r5, #0
	add r0, #0x4a
	ldr r6, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r6
	beq _0226290E
	add r0, r5, #0
	add r0, #0x7e
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x26
	add r5, #0x94
	ldrh r0, [r1, r0]
	ldrh r1, [r1, r5]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl GetMonPicHeightBySpeciesGenderForm
	b _02262930
_0226290E:
	add r0, r5, #0
	add r0, #0x42
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x26
	add r5, #0x58
	ldrh r0, [r1, r0]
	ldrb r1, [r1, r5]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x18
	bl GetMonPicHeightBySpeciesGenderForm
_02262930:
	add r1, sp, #8
	strb r0, [r1, #1]
	ldr r0, [sp, #4]
	add r1, sp, #8
	strh r0, [r1, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #8
	bl ov12_02262240
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02262950: .word 0x00000195
_02262954: .word 0x00002D66
	thumb_func_end ov12_022628A0

