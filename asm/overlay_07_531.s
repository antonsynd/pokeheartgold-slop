	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222F378
	.public ov07_0222F408
	.public ov07_0222F434
	.public ov07_0222F4D4
	.public ov07_0222F600
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221FA48
	.extern ov07_02221F80
	.extern ov07_02221FF0
	.extern ov07_02222268
	.extern ov07_022222F0
	.extern ov07_02222508
	.extern ov07_02222558
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_02222644
	.extern ov07_022226FC
	.extern ov07_0222F210
	.extern ov07_02231924
	.extern ov07_022324D8
	.extern ov07_02236800

	.text

	.text
	thumb_func_start ov07_0222F378
ov07_0222F378: ; 0x0222F378
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x8c
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov07_022324D8
	add r4, r0, #0
	str r5, [r4]
	ldr r0, [sp]
	str r7, [r4, #4]
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_0221FA48
	mov r1, #6
	mov r2, #0
	str r0, [r4, #0x10]
	bl Pokepic_SetAttr
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov07_02221F80
	add r1, r4, #0
	add r1, #0x88
	strh r0, [r1]
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl ov07_02221F80
	add r1, r4, #0
	add r1, #0x8a
	strh r0, [r1]
	str r6, [r4, #0x5c]
	add r0, r6, #0
	mov r1, #0x64
	bl ManagedSprite_SetDrawPriority
	ldr r0, [r4, #0x5c]
	mov r1, #1
	bl ManagedSprite_SetPriority
	mov r1, #0x88
	mov r2, #0x8a
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x5c]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4]
	ldr r1, _0222F404 ; =ov07_0222F210
	add r2, r4, #0
	bl ov07_0221C410
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F404: .word ov07_0222F210
	thumb_func_end ov07_0222F378

	thumb_func_start ov07_0222F408
ov07_0222F408: ; 0x0222F408
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	bl ov07_02221FF0
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0
	lsl r2, r2, #0x10
	add r4, #0xc4
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #8
	bl PaletteData_BlendPalettes
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov07_0222F408

	thumb_func_start ov07_0222F434
ov07_0222F434: ; 0x0222F434
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r1, #0xa
	mov r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl ov07_02222590
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x4c
	add r2, r1, #0
	mov r3, #1
	bl ov07_02222508
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0]
	ldr r0, [r4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_02231924
	add r1, r0, #0
	lsl r2, r1, #1
	ldr r1, _0222F4D0 ; =ov07_02236800
	ldr r0, [r4, #0x20]
	ldrh r1, [r1, r2]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0x28
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov07_02222644
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #1
	bne _0222F4B8
	ldr r1, [sp, #0x10]
	mov r0, #0
	bl _fsub
	str r0, [sp, #0x10]
_0222F4B8:
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ManagedSprite_SetAffineScale
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ov07_0222F408
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0222F4D0: .word ov07_02236800
	thumb_func_end ov07_0222F434

	thumb_func_start ov07_0222F4D4
ov07_0222F4D4: ; 0x0222F4D4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r4, #0
	cmp r0, #0
	beq _0222F4F0
	cmp r0, #1
	beq _0222F578
	cmp r0, #2
	bne _0222F4EE
	b _0222F5F8
_0222F4EE:
	b _0222F5FA
_0222F4F0:
	add r0, r5, #0
	add r0, #0x28
	bl ov07_0222260C
	add r0, r5, #0
	add r0, #0x28
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov07_02222644
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #1
	bne _0222F518
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl _fsub
	str r0, [sp, #0x10]
_0222F518:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ManagedSprite_SetAffineScale
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x3c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_022226FC
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x98
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bge _0222F5FA
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r3, #0x14
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0]
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r0, #4
	add r5, #0x28
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov07_02222590
	b _0222F5FA
_0222F578:
	add r0, r5, #0
	add r0, #0x28
	bl ov07_0222260C
	add r0, r5, #0
	add r0, #0x4c
	bl ov07_02222558
	cmp r0, #0
	beq _0222F5D6
	mov r0, #0x4c
	ldrsh r0, [r5, r0]
	add r1, sp, #0x10
	add r2, sp, #0xc
	strh r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x28
	bl ov07_02222644
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	cmp r0, #1
	bne _0222F5B2
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl _fsub
	str r0, [sp, #0x10]
_0222F5B2:
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ManagedSprite_SetAffineScale
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x3c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_022226FC
	b _0222F5FA
_0222F5D6:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0]
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	mov r4, #1
	b _0222F5FA
_0222F5F8:
	mov r4, #1
_0222F5FA:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov07_0222F4D4

	thumb_func_start ov07_0222F600
ov07_0222F600: ; 0x0222F600
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r1, sp, #0xc
	ldr r0, [r4, #0x1c]
	add r1, #2
	add r2, sp, #0xc
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0xc
	mov r0, #0
	ldrsh r3, [r1, r0]
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #8
	str r3, [sp]
	sub r3, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #0x10
	add r0, #0x70
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov07_02222268
	mov r2, #0xa
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x28
	mov r1, #2
	mov r3, #0x14
	bl ov07_02222590
	add r0, r4, #0
	add r0, #0x28
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov07_02222644
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0]
	cmp r0, #1
	bne _0222F668
	ldr r1, [sp, #0x14]
	mov r0, #0
	bl _fsub
	str r0, [sp, #0x14]
_0222F668:
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl ManagedSprite_SetAffineScale
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0x70
	bl ov07_022222F0
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0x98
	str r1, [r0]
	ldr r0, [r4]
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_02231924
	add r1, r0, #0
	lsl r2, r1, #1
	ldr r1, _0222F6BC ; =ov07_02236800
	ldr r0, [r4, #0x24]
	ldrh r1, [r1, r2]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ov07_0222F408
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_0222F6BC: .word ov07_02236800
	thumb_func_end ov07_0222F600

