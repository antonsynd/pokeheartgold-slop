	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02231524
	.public ov07_022315C0
	.extern ov07_0221BFD0
	.extern ov07_0221C448
	.extern ov07_0221FB04
	.extern ov07_02232508
	.extern ov07_0223680C
	.extern ov07_02236810
	.extern ov07_02236814

	.text

	.text
	thumb_func_start ov07_02231524
ov07_02231524: ; 0x02231524
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl ov07_0221BFD0
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #3
	bl ov07_0221FB04
	add r1, r0, #0
	lsl r0, r4, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5]
	lsl r2, r1, #4
	ldr r1, _022315B4 ; =ov07_0223680C
	add r3, r4, #0
	ldr r1, [r1, r2]
	ldr r2, [r5, #0x2c]
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x30]
	lsl r3, r2, #4
	ldr r2, _022315B8 ; =ov07_02236810
	ldr r1, [r5]
	ldr r2, [r2, r3]
	add r3, r6, #0
	bl PaletteData_LoadNarc
	lsl r1, r4, #0x18
	ldr r0, [r5, #0x2c]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r1, [r5, #4]
	ldr r0, [r5]
	lsl r2, r1, #4
	ldr r1, _022315BC ; =ov07_02236814
	add r3, r4, #0
	ldr r1, [r1, r2]
	ldr r2, [r5, #0x2c]
	bl GfGfxLoader_LoadScrnData
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022315B4: .word ov07_0223680C
_022315B8: .word ov07_02236810
_022315BC: .word ov07_02236814
	thumb_func_end ov07_02231524

	thumb_func_start ov07_022315C0
ov07_022315C0: ; 0x022315C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #3
	bhi _0223167C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022315D8: ; jump table
	.short _022315E0 - _022315D8 - 2 ; case 0
	.short _022315F0 - _022315D8 - 2 ; case 1
	.short _02231608 - _022315D8 - 2 ; case 2
	.short _02231628 - _022315D8 - 2 ; case 3
_022315E0:
	add r0, r4, #0
	mov r1, #2
	bl ov07_02231524
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _022316CA
_022315F0:
	ldrh r0, [r4, #0x16]
	mov r1, #4
	mov r2, #0x39
	str r0, [sp]
	ldrh r3, [r4, #0x14]
	ldr r0, _02231718 ; =0x04000050
	bl G2x_SetBlendAlpha_
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _022316CA
_02231608:
	add r1, r4, #0
	add r1, #0x40
	ldrb r1, [r1]
	cmp r1, #0x14
	bls _02231618
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _022316CA
_02231618:
	add r0, r4, #0
	add r0, #0x40
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x40
	strb r1, [r0]
	b _022316CA
_02231628:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02231632
	sub r0, r0, #1
	strh r0, [r4, #0x14]
_02231632:
	ldrh r0, [r4, #0x16]
	cmp r0, #0x10
	bhs _0223163C
	add r0, r0, #1
	strh r0, [r4, #0x16]
_0223163C:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _0223166E
	ldrh r0, [r4, #0x16]
	cmp r0, #0x10
	bne _0223166E
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
_0223166E:
	ldrh r0, [r4, #0x16]
	ldrh r1, [r4, #0x14]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0223171C ; =0x04000052
	strh r1, [r0]
	b _022316CA
_0223167C:
	ldr r0, _02231720 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02231724 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r2, r3
	orr r1, r2
	strh r1, [r0]
	mov r2, #0
	ldr r0, [r4, #0x2c]
	mov r1, #2
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #0x2c]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02231728 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl ov07_02232508
	pop {r3, r4, r5, pc}
_022316CA:
	mov r3, #0x10
	mov r0, #0xc
	ldrsh r1, [r4, r3]
	ldrsh r0, [r4, r0]
	mov r2, #0
	add r0, r1, r0
	strh r0, [r4, #0x10]
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0x12]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl BgSetPosTextAndCommit
	mov r3, #0x12
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x2c]
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #0x34]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x38]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x3c]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x24]
	bl SpriteSystem_DrawSprites
	pop {r3, r4, r5, pc}
	nop
_02231718: .word 0x04000050
_0223171C: .word 0x04000052
_02231720: .word 0x0400004A
_02231724: .word 0xFFFFC0FF
_02231728: .word 0xFFFF1FFF
	thumb_func_end ov07_022315C0

