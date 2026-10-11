	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02227AEC
	.public ov07_02227B58
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C468
	.extern ov07_0221FA48
	.extern ov07_0221FAA0
	.extern ov07_02222268
	.extern ov07_022222B4
	.extern ov07_02222590
	.extern ov07_022278B0
	.extern ov07_02236732
	.extern ov07_02236734
	.extern ov07_02236736

	.text

	.text
	thumb_func_start ov07_02227AEC
ov07_02227AEC: ; 0x02227AEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl ov07_0221BFD0
	mov r1, #0x58
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	str r5, [r4, #8]
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov07_0221FA48
	str r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_GetAttr
	strh r0, [r4, #2]
	ldr r0, [r4, #8]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov07_0221FAA0
	str r0, [r4, #4]
	mov r0, #0x32
	str r0, [sp]
	mov r1, #0x64
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	mov r2, #0x96
	add r3, r1, #0
	bl ov07_02222590
	ldr r0, [r4, #8]
	ldr r1, _02227B54 ; =ov07_022278B0
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02227B54: .word ov07_022278B0
	thumb_func_end ov07_02227AEC

	thumb_func_start ov07_02227B58
ov07_02227B58: ; 0x02227B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r2, r0, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02227B72
	cmp r0, #1
	beq _02227C58
	cmp r0, #2
	bne _02227B70
	b _02227CBA
_02227B70:
	b _02227CEE
_02227B72:
	ldrb r3, [r5]
	mov r0, #0x1f
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #1
	add r1, r3, #1
	str r0, [sp, #0xc]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r0, #6
	mul r0, r1
	ldr r1, _02227D0C ; =ov07_02236736
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	sub r7, r2, r1
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	ldr r1, _02227D10 ; =ov07_02236734
	ldrsh r6, [r1, r0]
	mov r1, #8
	ldrsh r2, [r5, r1]
	ldr r1, _02227D14 ; =ov07_02236732
	ldrsh r4, [r1, r0]
	lsl r0, r7, #0x10
	str r3, [sp]
	add r1, r2, r4
	lsr r0, r0, #0x10
	add r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x28
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_02222268
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	mov r0, #8
	ldrsh r2, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r2, r4
	str r3, [sp]
	sub r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x4c
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_02222268
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	mov r0, #6
	mul r0, r1
	ldr r1, _02227D0C ; =ov07_02236736
	ldrsh r2, [r1, r0]
	ldr r1, [sp, #8]
	sub r7, r2, r1
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	ldr r1, _02227D10 ; =ov07_02236734
	ldrsh r6, [r1, r0]
	mov r1, #8
	ldrsh r2, [r5, r1]
	ldr r1, _02227D14 ; =ov07_02236732
	ldrsh r4, [r1, r0]
	lsl r0, r7, #0x10
	str r3, [sp]
	add r1, r2, r4
	lsr r0, r0, #0x10
	add r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x70
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_02222268
	mov r0, #0xa
	ldrsh r3, [r5, r0]
	mov r0, #8
	ldrsh r2, [r5, r0]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	sub r1, r2, r4
	str r3, [sp]
	sub r2, r2, r6
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, #0x94
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_02222268
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02227C58:
	mov r0, #0
	add r7, r5, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r7, #0x28
	add r6, r5, #0
	add r4, r5, #0
_02227C66:
	add r0, r7, #0
	bl ov07_022222B4
	cmp r0, #0
	bne _02227C7C
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	b _02227C8A
_02227C7C:
	mov r1, #0x28
	mov r2, #0x2a
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, #0x18]
	bl ManagedSprite_SetPositionXY
_02227C8A:
	ldr r0, [r4, #0x18]
	bl ManagedSprite_TickFrame
	ldr r0, [sp, #0x14]
	add r7, #0x24
	add r0, r0, #1
	add r6, #0x24
	add r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02227C66
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bne _02227D00
	ldrb r0, [r5]
	cmp r0, #9
	bne _02227CB4
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
	b _02227D00
_02227CB4:
	mov r0, #0
	strb r0, [r5, #1]
	b _02227D00
_02227CBA:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _02227CC4
	sub r0, r0, #1
	strb r0, [r5, #4]
_02227CC4:
	ldrb r0, [r5, #5]
	cmp r0, #0xf
	bhs _02227CCE
	add r0, r0, #1
	strb r0, [r5, #5]
_02227CCE:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _02227CE0
	ldrb r0, [r5, #5]
	cmp r0, #0xf
	bne _02227CE0
	ldrb r0, [r5, #1]
	add r0, r0, #1
	strb r0, [r5, #1]
_02227CE0:
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02227D18 ; =0x04000052
	strh r1, [r0]
	b _02227D00
_02227CEE:
	ldr r0, [r5, #0xc]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02227D00:
	ldr r0, [r5, #0x14]
	bl SpriteSystem_DrawSprites
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227D0C: .word ov07_02236736
_02227D10: .word ov07_02236734
_02227D14: .word ov07_02236732
_02227D18: .word 0x04000052
	thumb_func_end ov07_02227B58

