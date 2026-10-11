	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222C610
	.public ov07_0222C6A8
	.extern ov07_0221C448
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_02222644
	.extern ov07_022227D8

	.text

	.text
	thumb_func_start ov07_0222C610
ov07_0222C610: ; 0x0222C610
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r2, #0x60
	ldrsh r3, [r4, r2]
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	add r2, r3, r2
	bl Pokepic_SetAttr
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	add r2, r3, r2
	bl Pokepic_SetAttr
	mov r1, #0x60
	ldrsh r2, [r4, r1]
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0x58]
	add r1, r2, r1
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r3, r3, r2
	mov r2, #0x66
	ldrsh r2, [r4, r2]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	add r0, #0x34
	add r1, sp, #4
	add r2, sp, #0
	bl ov07_02222644
	mov r0, #0x64
	ldrsh r0, [r4, r0]
	bl _fflt
	add r1, r0, #0
	ldr r0, _0222C6A4 ; =0x3DCCCCCD
	bl _fmul
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl _fadd
	add r1, r0, #0
	str r1, [sp, #4]
	ldr r0, [r4, #0x58]
	ldr r2, [sp]
	bl ManagedSprite_SetAffineScale
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r4, #0x64
	mul r0, r1
	strh r0, [r4]
	add sp, #8
	pop {r4, pc}
	nop
_0222C6A4: .word 0x3DCCCCCD
	thumb_func_end ov07_0222C610

	thumb_func_start ov07_0222C6A8
ov07_0222C6A8: ; 0x0222C6A8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222C6C0
	cmp r0, #1
	beq _0222C6FA
	cmp r0, #2
	beq _0222C762
	b _0222C774
_0222C6C0:
	add r0, r4, #0
	add r0, #0x10
	bl ov07_022227D8
	add r0, r4, #0
	add r0, #0x34
	bl ov07_0222260C
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0222C610
	cmp r5, #0
	bne _0222C774
	mov r2, #0xa
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xc
	mov r3, #0xf
	bl ov07_02222590
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0222C774
_0222C6FA:
	add r0, r4, #0
	add r0, #0x10
	bl ov07_022227D8
	add r0, r4, #0
	add r0, #0x34
	bl ov07_0222260C
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0222C610
	cmp r5, #0
	bne _0222C774
	mov r2, #0x60
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl Pokepic_SetAttr
	mov r2, #0x62
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl Pokepic_SetAttr
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ManagedSprite_SetOamMode
	mov r2, #0x62
	ldrsh r3, [r4, r2]
	mov r2, #0x66
	ldrsh r2, [r4, r2]
	mov r1, #0x60
	ldrsh r1, [r4, r1]
	sub r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x58]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r1, #0xfe
	lsl r1, r1, #0x16
	ldr r0, [r4, #0x58]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0222C774
_0222C762:
	ldr r0, [r4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, pc}
_0222C774:
	ldr r0, [r4, #4]
	bl SpriteSystem_DrawSprites
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov07_0222C6A8

