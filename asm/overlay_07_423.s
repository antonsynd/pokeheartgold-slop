	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02228684
	.public ov07_02228750
	.public ov07_02228834
	.public ov07_02228A50
	.public ov07_02228B38
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C468
	.extern ov07_0221C4E8
	.extern ov07_0221C514
	.extern ov07_0221E6C8
	.extern ov07_0221FA48
	.extern ov07_0221FA78
	.extern ov07_0221FA80
	.extern ov07_0221FA90
	.extern ov07_0221FAA0
	.extern ov07_0221FB78
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_02222644
	.extern ov07_022226FC
	.extern ov07_022227A8
	.extern ov07_022227D8
	.extern ov07_02231E08
	.extern ov07_022324D8
	.extern ov07_022366C8
	.extern ov07_02236722

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

	thumb_func_start ov07_02228834
ov07_02228834: ; 0x02228834
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _02228844
	b _02228A26
_02228844:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228850: ; jump table
	.short _02228858 - _02228850 - 2 ; case 0
	.short _0222886A - _02228850 - 2 ; case 1
	.short _02228982 - _02228850 - 2 ; case 2
	.short _022289BA - _02228850 - 2 ; case 3
_02228858:
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #1
	bl Pokepic_SetAttr
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228A42
_0222886A:
	mov r0, #0
	add r6, r4, #0
	ldr r7, _02228A4C ; =ov07_022366C8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r5, r4, #0
	add r6, #0x20
_02228878:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _02228884
	cmp r0, #1
	beq _022288B2
	b _02228900
_02228884:
	ldrb r0, [r5, #0x19]
	add r0, r0, #1
	strb r0, [r5, #0x19]
	ldrb r1, [r5, #0x19]
	ldrb r0, [r7]
	cmp r1, r0
	blo _02228906
	mov r0, #5
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0x64
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #5
	add r3, r1, #0
	bl ov07_02222590
	ldrb r0, [r5, #0x18]
	add r0, r0, #1
	strb r0, [r5, #0x18]
	b _02228906
_022288B2:
	add r0, r6, #0
	bl ov07_0222260C
	cmp r0, #0
	bne _022288C4
	ldrb r0, [r5, #0x18]
	add r0, r0, #1
	strb r0, [r5, #0x18]
	b _02228906
_022288C4:
	add r0, r6, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov07_02222644
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl _fflt
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl _fmul
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x24]
	bl ManagedSprite_SetAffineScale
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r2, [r4, #4]
	ldrsh r1, [r4, r1]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	asr r2, r2, #0x10
	bl ov07_022226FC
	b _02228906
_02228900:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_02228906:
	ldr r0, [r5, #0x1c]
	bl ManagedSprite_TickFrame
	ldr r0, [sp, #0x14]
	add r5, #0x2c
	add r0, r0, #1
	add r7, r7, #1
	add r6, #0x2c
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _02228878
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bge _02228924
	b _02228A42
_02228924:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhs _0222897A
	mov r6, #0
	add r5, r4, #0
	add r7, r6, #0
_02228936:
	add r1, sp, #0x18
	ldr r0, [r5, #0x1c]
	add r1, #2
	add r2, sp, #0x18
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0x18
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x1c]
	bl ManagedSprite_SetPositionXY
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl _fflt
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r5, #0x1c]
	lsl r2, r2, #0x16
	bl ManagedSprite_SetAffineScale
	strb r7, [r5, #0x18]
	strb r7, [r5, #0x19]
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _02228936
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	b _02228A42
_0222897A:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228A42
_02228982:
	add r5, r4, #0
	mov r7, #0
	add r6, r4, #0
	add r5, #0x20
_0222898A:
	ldr r0, [r6, #0x1c]
	mov r1, #0
	bl ManagedSprite_SetOamMode
	mov r0, #0x64
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #5
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0x64
	add r3, r1, #0
	bl ov07_02222590
	add r7, r7, #1
	add r6, #0x2c
	add r5, #0x2c
	cmp r7, #3
	blt _0222898A
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228A42
_022289BA:
	mov r7, #0
	add r6, r4, #0
	str r7, [sp, #0xc]
	add r6, #0x20
	add r5, r4, #0
_022289C4:
	add r0, r6, #0
	bl ov07_0222260C
	cmp r0, #0
	bne _022289D2
	add r7, r7, #1
	b _02228A0C
_022289D2:
	add r0, r6, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov07_02222644
	mov r0, #8
	ldrsb r0, [r4, r0]
	bl _fflt
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl _fmul
	add r1, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	bl ManagedSprite_SetAffineScale
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	ldr r2, [r4, #4]
	ldrsh r1, [r4, r1]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x34]
	asr r2, r2, #0x10
	bl ov07_022226FC
_02228A0C:
	ldr r0, [sp, #0xc]
	add r6, #0x2c
	add r0, r0, #1
	add r5, #0x2c
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _022289C4
	cmp r7, #3
	blt _02228A42
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02228A42
_02228A26:
	ldr r0, [r4, #0xc]
	mov r1, #0xe
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_02228A42:
	ldr r0, [r4, #0x14]
	bl SpriteSystem_DrawSprites
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02228A4C: .word ov07_022366C8
	thumb_func_end ov07_02228834

	thumb_func_start ov07_02228A50
ov07_02228A50: ; 0x02228A50
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x9c
	str r0, [sp]
	bl ov07_022324D8
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	ldr r0, [sp]
	str r0, [r4, #0x10]
	bl ov07_0221C514
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov07_0221FA48
	str r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_GetAttr
	strh r0, [r4, #2]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl Pokepic_GetAttr
	mov r1, #2
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	strh r0, [r4, #2]
	ldr r0, [r4, #0x10]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov07_0221FAA0
	mov r1, #0
	str r0, [r4, #4]
	mvn r1, r1
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	bl ov07_02231E08
	mov r6, #0
	ldr r1, _02228B2C ; =0x0000060C
	ldr r0, _02228B30 ; =0x04000052
	add r5, r4, #0
	strh r1, [r0]
	add r7, r6, #0
_02228ABC:
	strb r7, [r5, #0x18]
	strb r7, [r5, #0x19]
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov07_0221C4E8
	str r0, [r5, #0x1c]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r5, #0x1c]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	ldr r0, [r5, #0x1c]
	add r1, r6, #1
	bl ManagedSprite_SetDrawPriority
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _02228ABC
	ldr r0, [sp]
	mov r1, #0
	bl ov07_0221FB78
	cmp r0, #1
	bne _02228AFA
	mov r0, #0
	mvn r0, r0
	b _02228AFC
_02228AFA:
	mov r0, #1
_02228AFC:
	strb r0, [r4, #8]
	mov r6, #0
	add r5, r4, #0
	mov r7, #8
_02228B04:
	ldrsb r0, [r4, r7]
	bl _fflt
	add r1, r0, #0
	mov r2, #0xfe
	ldr r0, [r5, #0x1c]
	lsl r2, r2, #0x16
	bl ManagedSprite_SetAffineScale
	add r6, r6, #1
	add r5, #0x2c
	cmp r6, #3
	blt _02228B04
	ldr r0, [r4, #0x10]
	ldr r1, _02228B34 ; =ov07_02228834
	add r2, r4, #0
	bl ov07_0221C410
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02228B2C: .word 0x0000060C
_02228B30: .word 0x04000052
_02228B34: .word ov07_02228834
	thumb_func_end ov07_02228A50

	thumb_func_start ov07_02228B38
ov07_02228B38: ; 0x02228B38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bls _02228B48
	b _02228C72
_02228B48:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02228B54: ; jump table
	.short _02228B5C - _02228B54 - 2 ; case 0
	.short _02228B8E - _02228B54 - 2 ; case 1
	.short _02228BA2 - _02228B54 - 2 ; case 2
	.short _02228BFE - _02228B54 - 2 ; case 3
_02228B5C:
	ldr r0, [r4, #0xc]
	bl ov07_0221FA78
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl ov07_0221E6C8
	add r2, r0, #0
	mov r1, #0
	lsl r2, r2, #0x10
	str r1, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	add r0, r5, #0
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl PaletteData_BeginPaletteFade
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02228B8E:
	ldr r0, [r4, #0xc]
	bl ov07_0221FA78
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	bne _02228C80
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228BA2:
	mov r0, #5
	str r0, [sp]
	ldrb r1, [r4, #1]
	add r0, r4, #0
	add r0, #0xb4
	lsl r2, r1, #1
	ldr r1, _02228C84 ; =ov07_02236722
	ldrsh r1, [r1, r2]
	mov r2, #0
	add r3, r2, #0
	bl ov07_022227A8
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldr r0, [r4, #0xc]
	bne _02228BD4
	bl ov07_0221FA78
	mov r1, #0
	mov r2, #0xff
	mov r3, #0xa
	str r1, [sp]
	bl PaletteData_BlendPalettes
	b _02228BE6
_02228BD4:
	bl ov07_0221FA78
	ldr r1, _02228C88 ; =0x00007FFF
	mov r2, #0xff
	str r1, [sp]
	mov r1, #0
	mov r3, #0xa
	bl PaletteData_BlendPalettes
_02228BE6:
	mov r0, #3
	strb r0, [r4, #3]
	ldrb r1, [r4, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228BFE:
	add r0, r4, #0
	add r0, #0xb4
	bl ov07_022227D8
	cmp r0, #0
	bne _02228C1C
	ldrb r0, [r4, #1]
	cmp r0, #8
	ldrb r0, [r4]
	blo _02228C18
	add r0, r0, #1
	strb r0, [r4]
	b _02228C1C
_02228C18:
	sub r0, r0, #1
	strb r0, [r4]
_02228C1C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _02228C3E
	sub r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _02228C3E
	ldr r0, [r4, #0xc]
	bl ov07_0221FA78
	mov r1, #0
	mov r2, #0xff
	add r3, r1, #0
	str r1, [sp]
	bl PaletteData_BlendPalettes
_02228C3E:
	mov r6, #0
	add r5, r4, #0
	mov r7, #0x14
_02228C44:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02228C58
	mov r2, #0xb4
	ldrsh r3, [r4, r2]
	ldrsh r2, [r5, r7]
	mov r1, #0
	add r2, r3, r2
	bl Pokepic_SetAttr
_02228C58:
	add r6, r6, #1
	add r5, #0x14
	cmp r6, #4
	blt _02228C44
	mov r3, #0xb4
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #0
	bl BgSetPosTextAndCommit
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02228C72:
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
_02228C80:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02228C84: .word ov07_02236722
_02228C88: .word 0x00007FFF
	thumb_func_end ov07_02228B38

