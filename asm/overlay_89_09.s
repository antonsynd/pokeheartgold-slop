	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_022598D0
	.public ov89_02259A3C
	.public ov89_02259B00
	.extern _0225C9B0
	.extern ov89_0225A1D8
	.extern ov89_0225C88C
	.extern ov89_0225C9B8
	.extern ov89_0225C9C0

	.text

	.text
	thumb_func_start ov89_022598D0
ov89_022598D0: ; 0x022598D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #0xc]
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	str r0, [sp, #0x28]
	ldr r0, [r6, #0xc]
	mov r1, #2
	bl PaletteData_GetFadedBuf
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	str r6, [sp, #0x20]
	str r6, [sp, #0x1c]
	str r0, [sp, #0x14]
_022598FC:
	ldr r2, _02259A1C ; =0x000008DA
	ldr r0, [sp, #0x20]
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _0225990C
	ldr r3, _02259A20 ; =0x000001ED
	cmp r0, r3
	bls _02259966
_0225990C:
	ldr r1, _02259A24 ; =0x00000924
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r1, _02259A28 ; =0x0000093C
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r1, _02259A2C ; =0x00000954
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp, #0x18]
	ldr r5, _02259A30 ; =_0225C9B0
	lsl r0, r0, #0x18
	mov r4, #0
	lsr r7, r0, #0x18
_0225993A:
	add r0, r4, #0
	add r0, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrh r2, [r5]
	ldr r0, [r6, #8]
	mov r1, #2
	add r3, r7, #0
	bl FillBgTilemapRect
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0225993A
	b _022599DC
_02259966:
	add r1, r3, #0
	sub r1, #0x89
	ldr r1, [r6, r1]
	add r4, r2, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r1, _02259A34 ; =0x000019E0
	add r2, #0x7a
	ldr r1, [r6, r1]
	sub r3, #0x8d
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	ldr r3, [r6, r3]
	ldrb r1, [r1, r4]
	ldr r4, [sp, #0x1c]
	ldr r2, [r4, r2]
	bl ov89_02259A3C
	ldr r1, _02259A38 ; =0x000008D8
	ldr r0, [sp, #0x20]
	mov r3, #0xc
	ldrh r2, [r0, r1]
	ldr r0, [sp, #0x14]
	strh r2, [r0, #0x22]
	ldr r0, [sp, #0x20]
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x22]
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r0, #0x11
	lsl r1, r0, #1
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	ldr r1, [sp, #0x2c]
	add r1, #0x21
	lsl r2, r1, #1
	ldr r1, [sp, #0x28]
	add r1, r1, r2
	mov r2, #1
	bl BlendPalette
	ldr r0, [sp, #0x14]
	add r0, #0x42
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0x42
	strh r1, [r0]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _022599DC
	add r0, r0, #1
	str r0, [sp, #0x24]
	mov r1, #0x92
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #4
	strb r0, [r6, r1]
_022599DC:
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #6
	bge _02259A06
	b _022598FC
_02259A06:
	add r0, r6, #0
	mov r1, #0
	bl ov89_0225A1D8
	ldr r0, [r6, #8]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02259A1C: .word 0x000008DA
_02259A20: .word 0x000001ED
_02259A24: .word 0x00000924
_02259A28: .word 0x0000093C
_02259A2C: .word 0x00000954
_02259A30: .word _0225C9B0
_02259A34: .word 0x000019E0
_02259A38: .word 0x000008D8
	thumb_func_end ov89_022598D0

	thumb_func_start ov89_02259A3C
ov89_02259A3C: ; 0x02259A3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	cmp r4, #0
	beq _02259A50
	ldr r2, _02259AFC ; =0x000001ED
	cmp r4, r2
	ble _02259A56
_02259A50:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259A56:
	ldr r2, [sp, #0x30]
	bl ov89_0225C88C
	cmp r0, #1
	bne _02259A90
	ldr r0, [sp, #0x28]
	mov r2, #1
	add r1, r4, #3
	mov r3, #0x7d
	str r2, [sp]
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x80
	str r0, [sp, #4]
	b _02259ABA
_02259A90:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x7d
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0xc]
	mov r1, #0x80
	ldr r0, [r0, #0x14]
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	str r4, [sp, #4]
	add r4, #0x40
_02259ABA:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _02259AC6
	mov r5, #0x19
	lsl r5, r5, #0x16
	b _02259ACA
_02259AC6:
	mov r5, #0x66
	lsl r5, r5, #0x14
_02259ACA:
	ldr r0, [r6]
	bl Sprite_GetImageProxy
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0x40
	lsl r7, r0, #2
	ldr r1, [r6, r7]
	ldr r0, [sp, #4]
	add r1, r5, r1
	bl MIi_CpuCopy16
	ldr r1, [r6, r7]
	add r5, #0x40
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x40
	bl MIi_CpuCopy16
	ldr r0, [sp, #8]
	bl Heap_Free
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02259AFC: .word 0x000001ED
	thumb_func_end ov89_02259A3C

	thumb_func_start ov89_02259B00
ov89_02259B00: ; 0x02259B00
	push {r3, r4, r5, lr}
	sub sp, #0x20
	ldr r3, _02259B90 ; =ov89_0225C9C0
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x7d
	bl Camera_New
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r1, #0x1f
	str r0, [sp, #8]
	ldr r2, _02259B94 ; =ov89_0225C9B8
	ldr r3, _02259B98 ; =0x00000FA4
	add r0, sp, #0x14
	lsl r1, r1, #0xe
	bl Camera_Init_FromTargetDistanceAndAngle
	add r2, r5, #0
	add r2, #0xcc
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r2]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl Camera_SetStaticPtr
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl Camera_GetPerspectiveAngle
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0]
	bl Camera_GetDistance
	add r1, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r2, _02259B9C ; =0x00001555
	add r0, r4, #0
	add r3, sp, #0x10
	bl sub_02020E10
	add r0, r5, #0
	ldr r1, [sp, #0x10]
	add r0, #0xd0
	str r1, [r0]
	ldr r0, [sp, #0xc]
	add r5, #0xd4
	str r0, [r5]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_02259B90: .word ov89_0225C9C0
_02259B94: .word ov89_0225C9B8
_02259B98: .word 0x00000FA4
_02259B9C: .word 0x00001555
	thumb_func_end ov89_02259B00

