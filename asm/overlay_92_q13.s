	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225C5C4
	.extern ov92_0225C5A8
	.extern ov92_0225D3CC
	.extern ov92_0225D894
	.extern ov92_0225D8C4
	.extern ov92_0225D9A8
	.extern ov92_0225D9B4
	.extern ov92_0225DE08
	.extern ov92_0225DE70
	.extern ov92_0225E130
	.extern ov92_0225E3C4
	.extern ov92_0225E6A4
	.extern ov92_0225E820
	.extern ov92_0225E93C
	.extern ov92_0225E9B4
	.extern ov92_0225EB40
	.extern ov92_0225EB88
	.extern ov92_0226077C
	.extern ov92_022638A0
	.extern ov92_02263A14

	.text

	.text
	thumb_func_start ov92_0225C5C4
ov92_0225C5C4: ; 0x0225C5C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	bl GetLCRNGSeed
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1]
	add r0, r5, #0
	bl ov92_0225D3CC
	ldr r0, _0225C934 ; =ov92_0225D894
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #0x20
	mov r1, #0x71
	bl GF_CreateVramTransferManager
	ldr r1, _0225C938 ; =0x00200010
	mov r0, #1
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
	mov r0, #0x71
	bl sub_0203A4AC
	add r1, sp, #0x24
	add r4, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x24]
	ldr r0, [r5, #0x5c]
	ldr r1, [r1, #0xc]
	mov r2, #2
	mov r3, #0xe0
	bl PaletteData_LoadPalette
	add r0, r4, #0
	bl Heap_Free
	bl sub_020347A0
	add r4, r0, #0
	bl sub_0203769C
	str r0, [r5, #0x44]
	add r0, r5, #0
	bl ov92_0225C5A8
	add r0, r5, #0
	bl ov92_0225D8C4
	cmp r0, #1
	bne _0225C64E
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x48
	bl ov92_0225EB40
	str r0, [r5]
_0225C64E:
	add r2, r5, #0
	ldr r1, [r5, #0x44]
	add r0, r4, #0
	add r2, #0x48
	bl ov92_0225EB88
	str r0, [r5, #4]
	ldrb r2, [r5, #0x14]
	ldr r1, _0225C93C ; =0x00002BB4
	str r2, [r0, r1]
	add r0, r5, #0
	add r0, #0x80
	ldr r3, [r0]
	ldr r2, [r5, #4]
	sub r0, r1, #4
	str r3, [r2, r0]
	bl EnableTouchPad
	mov r0, #4
	bl InitializeTouchPad
	add r0, r5, #0
	bl ov92_0225E9B4
	add r0, r5, #0
	bl ov92_0225E3C4
	ldr r1, [r5, #4]
	add r0, r5, #0
	bl ov92_0225E6A4
	ldr r0, [r5, #4]
	bl ov92_0225DE70
	ldr r0, [r5, #4]
	bl ov92_0225DE08
	ldr r0, [r5, #4]
	bl ov92_0225E820
	ldr r0, [r5, #4]
	bl ov92_0225E93C
	ldr r1, [r5, #0x44]
	add r0, r5, #0
	bl ov92_0226077C
	add r1, r0, #0
	add r0, r5, #0
	bl ov92_0225E130
	ldr r4, _0225C940 ; =ov92_02263A14
	add r3, sp, #0x38
	mov r2, #0x10
_0225C6BA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225C6BA
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r4, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #8]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x6c
	add r7, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x10]
_0225C6D8:
	mov r0, #0xb5
	ldr r2, [sp, #8]
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	ldr r2, [r2]
	add r0, r0, r4
	bl ov92_0225D9A8
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	add r0, r0, r4
	bl ov92_0225D9B4
	ldr r1, [r5, #4]
	mov r0, #0x71
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _0225C944 ; =0x00000BC8
	str r0, [sp, #4]
	ldr r0, _0225C948 ; =0x00000BD8
	ldr r3, [sp, #8]
	add r0, r1, r0
	add r1, r1, r2
	ldr r2, [r5, #0x48]
	ldr r3, [r3, #4]
	add r0, r0, r4
	add r1, r1, r4
	bl sub_020180BC
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r2, _0225C948 ; =0x00000BD8
	add r0, r0, r4
	add r1, r1, r2
	add r1, r1, r4
	bl sub_020181D4
	ldr r1, [r5, #4]
	ldr r0, _0225C948 ; =0x00000BD8
	add r0, r1, r0
	add r0, r0, r4
	mov r1, #0
	bl sub_02018198
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r0, r4
	mov r1, #0
	bl sub_020182A0
	ldrb r0, [r5, #0x14]
	ldr r1, [sp, #0xc]
	cmp r0, #0
	ldr r0, [sp, #0xc]
	lsl r2, r1, #0x1f
	lsr r0, r0, #0x1f
	sub r2, r2, r0
	mov r1, #0x1f
	ror r2, r1
	add r0, r0, r2
	beq _0225C7A6
	cmp r7, #0
	ble _0225C77A
	add r0, r6, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C788
_0225C77A:
	add r0, r6, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C788:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x14]
	bl _ffix
	mov r1, #0xd3
	ldr r2, [sp, #0x14]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r1, r0
	mov r0, #0xd3
	ldr r1, [sp, #0x14]
	lsl r0, r0, #4
	str r2, [r1, r0]
	b _0225C7E6
_0225C7A6:
	cmp r7, #0
	ble _0225C7BC
	add r0, r6, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C7CA
_0225C7BC:
	add r0, r6, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C7CA:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x18]
	bl _ffix
	mov r1, #0xd3
	ldr r2, [sp, #0x18]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	sub r2, r1, r0
	mov r0, #0xd3
	ldr r1, [sp, #0x18]
	lsl r0, r0, #4
	str r2, [r1, r0]
_0225C7E6:
	ldr r0, [sp, #0xc]
	cmp r0, #8
	bge _0225C830
	add r1, r0, #1
	mov r0, #5
	mul r0, r1
	cmp r0, #0
	ble _0225C808
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C816
_0225C808:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C816:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x1c]
	bl _ffix
	ldr r2, [sp, #0x1c]
	ldr r1, _0225C94C ; =0x00000D38
	ldr r1, [r2, r1]
	add r2, r1, r0
	ldr r1, [sp, #0x1c]
	ldr r0, _0225C94C ; =0x00000D38
	str r2, [r1, r0]
	b _0225C86C
_0225C830:
	cmp r7, #0
	ble _0225C846
	add r0, r6, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225C854
_0225C846:
	add r0, r6, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225C854:
	ldr r1, [r5, #4]
	add r1, r1, r4
	str r1, [sp, #0x20]
	bl _ffix
	ldr r2, [sp, #0x20]
	ldr r1, _0225C94C ; =0x00000D38
	ldr r1, [r2, r1]
	sub r2, r1, r0
	ldr r1, [sp, #0x20]
	ldr r0, _0225C94C ; =0x00000D38
	str r2, [r1, r0]
_0225C86C:
	ldr r0, [sp, #8]
	add r7, r7, #5
	add r0, #8
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #2
	add r4, r4, r0
	mov r0, #5
	lsl r0, r0, #0xc
	add r6, r6, r0
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #8
	bge _0225C88C
	b _0225C6D8
_0225C88C:
	ldr r1, [r5, #4]
	ldr r0, _0225C950 ; =0x00000944
	mov r2, #0x47
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov92_0225D9A8
	ldr r1, [r5, #4]
	ldr r0, _0225C950 ; =0x00000944
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov92_0225D9B4
	ldr r1, [r5, #4]
	ldr r0, _0225C950 ; =0x00000944
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r3, _0225C954 ; =ov92_022638A0
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0x44]
	add r0, r5, #0
	bl ov92_0226077C
	lsl r1, r0, #2
	add r0, sp, #0x28
	ldr r2, [r0, r1]
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov92_0225D9A8
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov92_0225D9B4
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	mov r2, #0x33
	bl ov92_0225D9A8
	ldr r1, [r5, #4]
	ldr r0, _0225C958 ; =0x0000052C
	mov r2, #0x39
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov92_0225D9A8
	ldr r1, [r5, #4]
	ldr r0, _0225C95C ; =0x00000738
	mov r2, #0x37
	add r0, r1, r0
	ldr r1, [r5, #0x48]
	bl ov92_0225D9A8
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov92_0225D9B4
	ldr r1, [r5, #4]
	ldr r0, _0225C958 ; =0x0000052C
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov92_0225D9B4
	ldr r1, [r5, #4]
	ldr r0, _0225C95C ; =0x00000738
	b _0225C960
	.balign 4, 0
_0225C934: .word ov92_0225D894
_0225C938: .word 0x00200010
_0225C93C: .word 0x00002BB4
_0225C940: .word ov92_02263A14
_0225C944: .word 0x00000BC8
_0225C948: .word 0x00000BD8
_0225C94C: .word 0x00000D38
_0225C950: .word 0x00000944
_0225C954: .word ov92_022638A0
_0225C958: .word 0x0000052C
_0225C95C: .word 0x00000738
_0225C960:
	add r0, r1, r0
	ldrb r1, [r5, #0x14]
	bl ov92_0225D9B4
	mov r6, #0x32
	ldr r4, [r5, #4]
	mov r0, #0x71
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	lsl r6, r6, #4
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x35
	bl sub_020180BC
	add r0, r4, r6
	add r1, r0, #0
	add r1, #0x88
	bl sub_020181D4
	add r0, r4, r6
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	mov r0, #0x71
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x9c
	add r1, #0x78
	mov r3, #0x34
	bl sub_020180BC
	add r0, r4, r6
	add r0, #0x9c
	mov r1, #0
	bl sub_02018198
	mov r0, #0x71
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0xb0
	add r1, #0x78
	mov r3, #0x3a
	bl sub_020180BC
	add r0, r4, r6
	add r0, #0xb0
	mov r1, #0
	bl sub_02018198
	ldr r4, [r5, #4]
	mov r0, #0x71
	str r0, [sp]
	add r0, r5, #0
	ldr r6, _0225CAA0 ; =0x0000052C
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x38
	bl sub_020180BC
	add r0, r4, r6
	add r1, r0, #0
	add r1, #0x88
	bl sub_020181D4
	add r0, r4, r6
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	ldr r4, [r5, #4]
	mov r0, #0x71
	str r0, [sp]
	add r0, r5, #0
	ldr r6, _0225CAA4 ; =0x00000738
	add r0, #0x6c
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, r4, r6
	ldr r2, [r5, #0x48]
	add r0, #0x88
	add r1, #0x78
	mov r3, #0x36
	bl sub_020180BC
	add r0, r4, r6
	add r1, r0, #0
	add r1, #0x88
	bl sub_020181D4
	add r0, r4, r6
	add r0, #0x88
	mov r1, #0
	bl sub_02018198
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	beq _0225CA6C
	mov r1, #0xbe
	ldr r0, _0225CAA8 ; =0xFFFF8000
	ldr r2, [r5, #4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r2, [r5, #4]
	ldr r1, _0225CAAC ; =0x00000504
	str r0, [r2, r1]
	add r1, r6, #0
	ldr r2, [r5, #4]
	sub r1, #0x28
	str r0, [r2, r1]
	ldr r2, [r5, #4]
	ldr r1, _0225CAB0 ; =0x0000091C
	str r0, [r2, r1]
_0225CA6C:
	ldr r0, [r5, #0x54]
	bl SpriteManager_GetSpriteList
	mov r1, #0x71
	bl ov90_02258BD4
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1]
	mov r1, #2
	ldr r0, [r5, #0x5c]
	mov r2, #0
	lsl r3, r1, #8
	bl PaletteData_LoadPaletteSlotFromHardware
	add r5, #0x88
	ldr r0, [r5]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0225CA9A
	mov r0, #0x71
	bl ov00_021E69A8
_0225CA9A:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CAA0: .word 0x0000052C
_0225CAA4: .word 0x00000738
_0225CAA8: .word 0xFFFF8000
_0225CAAC: .word 0x00000504
_0225CAB0: .word 0x0000091C
	thumb_func_end ov92_0225C5C4

