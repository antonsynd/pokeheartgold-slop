	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02228684
	.public ov07_02228750
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C468
	.extern ov07_0221C4E8
	.extern ov07_0221C514
	.extern ov07_0221FA78
	.extern ov07_0221FA80
	.extern ov07_0221FA90
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_02228684
ov07_02228684: ; 0x02228684
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0222869A
	cmp r0, #1
	beq _022286B2
	cmp r0, #2
	beq _022286D2
	b _02228714
_0222869A:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	blo _02228730
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228730
_022286B2:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl ManagedSprite_SetOamMode
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228730
_022286D2:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	blo _02228730
	ldr r0, _02228744 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02228748 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228730
_02228714:
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r1, [r3]
	ldr r0, _0222874C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3]
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
_02228730:
	ldr r0, [r4, #0xc]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x10]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #8]
	bl SpriteSystem_DrawSprites
	pop {r4, pc}
	.balign 4, 0
_02228744: .word 0x0400004A
_02228748: .word 0xFFFFC0FF
_0222874C: .word 0xFFFF1FFF
	thumb_func_end ov07_02228684

	thumb_func_start ov07_02228750
ov07_02228750: ; 0x02228750
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x14
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov07_0221C514
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov07_0221C4E8
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov07_0221C4E8
	str r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02228828 ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0222882C ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x12
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221FA80
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221FA90
	str r0, [sp, #0x18]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #1
	bl ObjPlttTransfer_GetPaletteVramOffset
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221FA78
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov07_0221BFD0
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #0x20
	lsl r0, r6, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r1, #0xe0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, r7, #0
	bl PaletteData_LoadNarc_CustomTint
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #4]
	ldr r1, _02228830 ; =ov07_02228684
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228828: .word 0xFFFF1FFF
_0222882C: .word 0xFFFFC0FF
_02228830: .word ov07_02228684
	thumb_func_end ov07_02228750

