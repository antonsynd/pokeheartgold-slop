	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02229630
	.public ov07_022297B8
	.extern ov07_0221BFC0
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C468
	.extern ov07_0221C4A8
	.extern ov07_0221C4C0
	.extern ov07_0221FAE8
	.extern ov07_02222338
	.extern ov07_022223CC
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_02222644
	.extern ov07_02222674
	.extern ov07_02222DC8
	.extern ov07_02222DE4
	.extern ov07_02222E0C
	.extern ov07_02222E48
	.extern ov07_02229480
	.extern ov07_0223192C
	.extern ov07_02231E08
	.extern ov07_02231FE4
	.extern ov07_022324D8
	.extern ov07_022366E1
	.extern ov07_02236704
	.extern ov07_02236705
	.extern ov07_02236706
	.extern ov07_02236707
	.extern ov07_02236708

	.text

	.text
	thumb_func_start ov07_02229630
ov07_02229630: ; 0x02229630
	push {r4, r5, lr}
	sub sp, #0x14
	mov r1, #0xd4
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	bl ov07_02231FE4
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4C0
	str r0, [r4, #0x44]
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221C4C0
	mov r1, #0
	str r0, [r4, #0x48]
	mvn r1, r1
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	bl ov07_02231E08
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	mov r1, #0
	strb r1, [r4, #0xc]
	mov r0, #0x1f
	strb r0, [r4, #0xd]
	strb r1, [r4, #0xe]
	strb r0, [r4, #0xf]
	strb r0, [r4, #0x10]
	mov r0, #4
	strb r0, [r4, #0x11]
	add r0, r5, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _022296C0
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x48]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl ManagedSprite_SetAnim
	mov r0, #0xb3
	strh r0, [r4, #0x14]
	mov r0, #0x78
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl ov07_0221FAE8
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, r1, #1
	bl ManagedSprite_SetPriority
	mov r0, #0
	mvn r0, r0
	strh r0, [r4, #0x12]
	b _02229720
_022296C0:
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_0223192C
	cmp r0, #4
	bne _022296F0
	ldr r0, [r4, #0x48]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ManagedSprite_SetAnim
	mov r0, #0x90
	strh r0, [r4, #0x14]
	mov r0, #0x40
	strh r0, [r4, #0x16]
	b _0222971C
_022296F0:
	ldr r0, [r4, #0x44]
	mov r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x48]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl ManagedSprite_SetAnim
	mov r0, #0x4c
	strh r0, [r4, #0x14]
	mov r0, #0x78
	strh r0, [r4, #0x16]
	add r0, r5, #0
	bl ov07_0221FAE8
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, r1, #1
	bl ManagedSprite_SetPriority
_0222971C:
	mov r0, #1
	strh r0, [r4, #0x12]
_02229720:
	mov r1, #0x14
	mov r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x40]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	mov r3, #0x64
	add r1, r0, #0
	mov r0, #5
	str r0, [sp]
	mul r1, r3
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x9c
	add r2, r1, #0
	bl ov07_02222590
	add r0, r4, #0
	add r0, #0x9c
	bl ov07_0222260C
	add r0, r4, #0
	add r0, #0x9c
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov07_02222644
	ldr r0, [r4, #0x40]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ManagedSprite_SetAffineScale
	mov r0, #0x16
	add r2, r4, #0
	add r2, #0xb0
	ldrsh r0, [r4, r0]
	ldr r2, [r2]
	mov r1, #0x10
	bl ov07_02222674
	mov r2, #0x16
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r4, #0x40]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x1c]
	ldr r1, _022297B4 ; =ov07_02229480
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022297B4: .word ov07_02229480
	thumb_func_end ov07_02229630

	thumb_func_start ov07_022297B8
ov07_022297B8: ; 0x022297B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldrb r0, [r4]
	cmp r0, #8
	bls _022297C8
	b _02229B1C
_022297C8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022297D4: ; jump table
	.short _022297E6 - _022297D4 - 2 ; case 0
	.short _0222981E - _022297D4 - 2 ; case 1
	.short _02229878 - _022297D4 - 2 ; case 2
	.short _02229892 - _022297D4 - 2 ; case 3
	.short _022298C6 - _022297D4 - 2 ; case 4
	.short _0222994A - _022297D4 - 2 ; case 5
	.short _022299DC - _022297D4 - 2 ; case 6
	.short _02229A7A - _022297D4 - 2 ; case 7
	.short _02229AC2 - _022297D4 - 2 ; case 8
_022297E6:
	ldrb r1, [r4, #0xc]
	ldr r2, _02229B00 ; =ov07_02236705
	ldr r5, _02229B04 ; =ov07_02236706
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _02229B08 ; =ov07_02236707
	ldr r1, _02229B0C ; =ov07_02236704
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _02229B10 ; =ov07_02236708
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xcc
	bl ov07_02222590
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_0222981E:
	add r0, r4, #0
	add r0, #0xcc
	bl ov07_0222260C
	cmp r0, #1
	bne _02229864
	mov r2, #0xcc
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xc
	bl Pokepic_SetAttr
	mov r2, #0xce
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #0xd
	bl Pokepic_SetAttr
	mov r0, #0x20
	add r2, r4, #0
	add r2, #0xe0
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x24]
	ldr r2, [r2]
	bl ov07_02222674
	mov r2, #0x20
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r2, r2, r3
	bl Pokepic_SetAttr
	b _02229B56
_02229864:
	ldrb r0, [r4, #0xc]
	cmp r0, #3
	ldrb r0, [r4]
	blo _02229872
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_02229872:
	sub r0, r0, #1
	strb r0, [r4]
	b _02229B56
_02229878:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #1
	blo _02229956
	mov r0, #0
	strb r0, [r4, #1]
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_02229892:
	add r1, sp, #0x2c
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x2c
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0x14
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	cmp r0, #0x68
	bgt _022298BE
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #2
	bl ManagedSprite_OffsetPositionXY
	b _02229B56
_022298BE:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_022298C6:
	add r1, sp, #0x28
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x28
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0x14
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0x68
	bgt _022298F2
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #2
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #2
	bl ManagedSprite_OffsetPositionXY
	b _022298FE
_022298F2:
	ldr r0, _02229B14 ; =0x04000052
	mov r1, #0x10
	strh r1, [r0]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022298FE:
	ldrb r0, [r4, #1]
	mov r1, #0x10
	add r2, r1, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	add r0, r4, #4
	bl ov07_02222E48
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r0, #8
	sub r2, #0x10
	bl ov07_02222E48
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02229B14 ; =0x04000052
	strh r1, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0xa
	bne _02229938
	ldr r0, [r4, #0x30]
	mov r1, #0
	mov r2, #0x10
	bl ManagedSprite_OffsetPositionXY
_02229938:
	ldrb r0, [r4, #1]
	cmp r0, #0xc
	bne _02229956
	ldr r0, [r4, #0x7c]
	mov r1, #0
	mov r2, #0x10
	bl ManagedSprite_OffsetPositionXY
	b _02229B56
_0222994A:
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhs _02229958
_02229956:
	b _02229B56
_02229958:
	mov r0, #0
	strb r0, [r4, #1]
	add r1, sp, #0x24
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x24
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0x20
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0x20
	bl ManagedSprite_GetPositionXY
	add r0, r4, #0
	add r0, #0xc8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xca
	str r0, [sp, #4]
	add r3, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	mov r2, #0xe
	mov r5, #0xc
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl ov07_02222DC8
	add r0, r4, #0
	add r0, #0x2c
	str r0, [sp]
	mov r3, #0xca
	add r2, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xc8
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl ov07_02222DE4
	add r0, r4, #0
	add r0, #0x28
	str r0, [sp]
	mov r3, #0xca
	add r2, sp, #0x14
	mov r0, #0x12
	mov r1, #0x10
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xc8
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl ov07_02222E0C
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [r4, #0x2c]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_022299DC:
	ldr r3, _02229B18 ; =ov07_022366E1
	add r2, sp, #0x30
	mov r1, #0xa
_022299E2:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022299E2
	add r1, sp, #0x1c
	ldr r0, [r4, #0x30]
	add r1, #2
	add r2, sp, #0x1c
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0x18
	ldr r0, [r4, #0x7c]
	add r1, #2
	add r2, sp, #0x18
	bl ManagedSprite_GetPositionXY
	add r3, sp, #0x14
	mov r0, #8
	ldrsh r0, [r3, r0]
	mov r2, #0xa
	str r0, [sp]
	mov r0, #4
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x2c]
	lsl r5, r1, #1
	add r1, sp, #0x30
	ldrsb r1, [r1, r5]
	mov r5, #6
	mul r1, r0
	str r1, [sp, #0xc]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x34
	add r1, #0x58
	bl ov07_02222338
	add r3, sp, #0x14
	mov r0, #4
	ldrsh r0, [r3, r0]
	mov r5, #0xa
	str r0, [sp]
	mov r0, #8
	ldrsh r0, [r3, r0]
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldrb r1, [r4, #0xc]
	ldr r0, [r4, #0x2c]
	lsl r2, r1, #1
	add r1, sp, #0x30
	add r1, #1
	ldrsb r1, [r1, r2]
	mov r2, #6
	mul r1, r0
	str r1, [sp, #0xc]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, r4, #0
	ldrsh r3, [r3, r5]
	add r0, #0x80
	add r1, #0xa4
	bl ov07_02222338
	ldrb r0, [r4, #0xc]
	add r0, r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_02229A7A:
	add r0, r4, #0
	ldr r2, [r4, #0x30]
	add r0, #0x34
	add r1, #0x58
	mov r5, #0
	bl ov07_022223CC
	cmp r0, #0
	bne _02229A92
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02229A92:
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, [r4, #0x7c]
	add r0, #0x80
	add r1, #0xa4
	bl ov07_022223CC
	cmp r0, #0
	bne _02229AAA
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02229AAA:
	cmp r5, #2
	bne _02229B56
	ldrb r0, [r4, #0xc]
	cmp r0, #5
	ldrb r0, [r4]
	bne _02229ABC
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
_02229ABC:
	sub r0, r0, #1
	strb r0, [r4]
	b _02229B56
_02229AC2:
	mov r5, #0
	add r0, r4, #4
	add r1, r5, #0
	sub r2, r5, #2
	bl ov07_02222E48
	cmp r0, #1
	bne _02229AD4
	add r5, r5, #1
_02229AD4:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x10
	mov r2, #2
	bl ov07_02222E48
	cmp r0, #1
	bne _02229AE6
	add r5, r5, #1
_02229AE6:
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _02229B14 ; =0x04000052
	cmp r5, #2
	strh r1, [r0]
	bne _02229B56
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _02229B56
	nop
_02229B00: .word ov07_02236705
_02229B04: .word ov07_02236706
_02229B08: .word ov07_02236707
_02229B0C: .word ov07_02236704
_02229B10: .word ov07_02236708
_02229B14: .word 0x04000052
_02229B18: .word ov07_022366E1
_02229B1C:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _02229B44
	add r5, r4, #0
	add r7, r6, #0
_02229B2E:
	ldr r0, [r5, #0x30]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov07_0221C4A8
	cmp r6, r0
	blt _02229B2E
_02229B44:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x10]
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_02229B56:
	mov r6, #0
	ldr r0, [r4, #0x10]
	add r1, r6, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _02229BC2
	add r5, r4, #0
	add r7, sp, #0x14
_02229B68:
	add r1, sp, #0x14
	ldr r0, [r5, #0x30]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	mov r0, #0
	ldrsh r0, [r7, r0]
	cmp r0, #0x50
	bge _02229B8C
	ldr r0, [r4, #0x10]
	bl ov07_0221FAE8
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl ManagedSprite_SetPriority
	b _02229BB2
_02229B8C:
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0x80
	ldr r0, [r4, #0x10]
	ble _02229BA4
	bl ov07_0221FAE8
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl ManagedSprite_SetPriority
	b _02229BB2
_02229BA4:
	bl ov07_0221FAE8
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	add r1, r1, #1
	bl ManagedSprite_SetPriority
_02229BB2:
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r5, #0x4c
	add r6, r6, #1
	bl ov07_0221C4A8
	cmp r6, r0
	blt _02229B68
_02229BC2:
	ldrb r0, [r4]
	cmp r0, #4
	blo _02229BF6
	mov r5, #0
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _02229BF0
	add r6, r4, #0
	add r7, r5, #0
_02229BDA:
	ldr r0, [r6, #0x30]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r6, #0x4c
	add r5, r5, #1
	bl ov07_0221C4A8
	cmp r5, r0
	blt _02229BDA
_02229BF0:
	ldr r0, [r4, #0x18]
	bl SpriteSystem_DrawSprites
_02229BF6:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov07_022297B8

