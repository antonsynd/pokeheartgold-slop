	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02261C58
	.extern ov93_02262C7A
	.extern ov93_02262CB4
	.extern ov93_02262CB6
	.extern ov93_02262CD8
	.extern ov93_02262D2C

	.text

	.text
	thumb_func_start ov93_02261C58
ov93_02261C58: ; 0x02261C58
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	ldr r4, _02261D04 ; =0
	beq _02261D02
	bl sub_0203769C
	ldr r1, [sp]
	cmp r1, r0
	beq _02261D02
	add r0, r4, #0
	add r2, r7, #0
_02261C74:
	ldrb r1, [r2, #0x15]
	cmp r1, #0
	bne _02261C82
	mov r1, #0x18
	mul r1, r0
	add r4, r7, r1
	b _02261C8A
_02261C82:
	add r0, r0, #1
	add r2, #0x18
	cmp r0, #3
	blt _02261C74
_02261C8A:
	cmp r4, #0
	beq _02261D02
	ldr r1, [sp]
	add r0, r6, #0
	bl ov93_0225E3C4
	ldr r1, [r6]
	ldr r2, _02261D08 ; =ov93_02262D2C
	add r1, #0x30
	ldrb r1, [r1]
	add r7, r0, #0
	ldr r0, [r4]
	lsl r3, r1, #3
	lsl r1, r7, #1
	add r2, r2, r3
	ldrh r1, [r1, r2]
	bl ManagedSprite_SetPaletteOverride
	ldr r1, _02261D0C ; =ov93_02262C7A
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	ldr r0, [r4]
	bl ManagedSprite_SetAnim
	ldr r0, [r6]
	mov r3, #0x16
	add r0, #0x30
	ldrb r0, [r0]
	lsl r3, r3, #0x10
	lsl r1, r0, #2
	ldr r0, _02261D10 ; =ov93_02262CD8
	add r0, r0, r1
	ldrb r0, [r7, r0]
	ldr r1, _02261D14 ; =ov93_02262CB4
	lsl r2, r0, #2
	ldr r0, _02261D18 ; =ov93_02262CB6
	ldrsh r1, [r1, r2]
	ldrsh r0, [r0, r2]
	mov r2, #0x10
	sub r0, #0x18
	strh r0, [r4, #0x10]
	ldrsh r2, [r4, r2]
	ldr r0, [r4]
	sub r2, #0x60
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, [sp, #0x18]
	strb r5, [r4, #0x12]
	sub r0, #0xc
	strh r0, [r4, #0x16]
	mov r0, #0
	strb r0, [r4, #0x13]
	mov r0, #1
	strb r0, [r4, #0x15]
_02261D02:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02261D04: .word 0
_02261D08: .word ov93_02262D2C
_02261D0C: .word ov93_02262C7A
_02261D10: .word ov93_02262CD8
_02261D14: .word ov93_02262CB4
_02261D18: .word ov93_02262CB6
	thumb_func_end ov93_02261C58

