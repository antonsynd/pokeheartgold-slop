	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225C5C4
	.public ov92_0225CAB4
	.public ov92_0225CB2C
	.public ov92_0225CC6C
	.public ov92_0225CDF4
	.extern ov92_0225C5A8
	.extern ov92_0225D1FC
	.extern ov92_0225D344
	.extern ov92_0225D3CC
	.extern ov92_0225D868
	.extern ov92_0225D88C
	.extern ov92_0225D894
	.extern ov92_0225D8C4
	.extern ov92_0225D8E4
	.extern ov92_0225D9A8
	.extern ov92_0225D9B4
	.extern ov92_0225DA40
	.extern ov92_0225DE08
	.extern ov92_0225DE70
	.extern ov92_0225E008
	.extern ov92_0225E070
	.extern ov92_0225E100
	.extern ov92_0225E130
	.extern ov92_0225E1A8
	.extern ov92_0225E360
	.extern ov92_0225E3C4
	.extern ov92_0225E6A4
	.extern ov92_0225E820
	.extern ov92_0225E93C
	.extern ov92_0225E9B4
	.extern ov92_0225EB40
	.extern ov92_0225EB70
	.extern ov92_0225EB88
	.extern ov92_0225FC2C
	.extern ov92_02260428
	.extern ov92_02260628
	.extern ov92_0226077C
	.extern ov92_02260A38
	.extern ov92_0226156C
	.extern ov92_02261B18
	.extern ov92_022630E8
	.extern ov92_02263878
	.extern ov92_02263884
	.extern ov92_022638A0
	.extern ov92_02263A14
	.extern ov92_02263A94

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
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
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

	thumb_func_start ov92_0225CAB4
ov92_0225CAB4: ; 0x0225CAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r2, #0x65
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x71
	lsl r2, r2, #0xc
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0xd0
	mov r2, #0x71
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0xd0
	str r0, [sp, #4]
	bl memset
	add r0, r4, #0
	bl OverlayManager_GetArgs
	ldr r1, [sp, #4]
	ldr r6, [sp, #4]
	add r1, #0x88
	str r0, [r1]
	mov r4, #0
	add r5, r6, #0
	mov r7, #0xff
_0225CAEE:
	add r0, r6, #0
	add r0, #0xbc
	str r7, [r0]
	add r0, r4, #0
	bl sub_02034818
	cmp r0, #0
	beq _0225CB06
	add r0, r5, #0
	add r0, #0xbc
	str r4, [r0]
	add r5, r5, #4
_0225CB06:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _0225CAEE
	ldr r0, [sp, #4]
	add r0, #0x88
	ldr r3, [r0]
	ldr r0, [sp, #4]
	str r3, [sp]
	ldr r1, [r3, #0x38]
	ldr r2, [r3, #0x34]
	add r0, #0x8c
	ldr r3, [r3, #0x3c]
	str r0, [sp, #4]
	bl ov90_02258800
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov92_0225CAB4

	thumb_func_start ov92_0225CB2C
ov92_0225CB2C: ; 0x0225CB2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _0225CBC6
	cmp r6, #0
	bne _0225CBC6
	ldr r3, _0225CC48 ; =0x00001FD4
	mov r0, #0
	mov r2, #0xc3
	str r0, [r5, r3]
	add r1, r3, #4
	lsl r2, r2, #2
	str r0, [r5, r1]
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _0225CB82
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0xfe
	add r0, r5, r0
	lsl r1, r1, #0x16
	bl ov92_02260628
	ldr r4, _0225CC4C ; =ov92_02263884
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _0225CC50 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CB82:
	add r1, r2, #4
	str r0, [r5, r1]
	add r2, #8
	str r0, [r5, r2]
	add r1, r3, #4
	ldr r2, [r5, r1]
	ldr r1, [r5, r3]
	ldr r3, _0225CC54 ; =0x3FF0A3D7
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260428
	ldr r0, _0225CC58 ; =0x00001FD8
	ldr r2, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _0225CC5C ; =0x3E6147AE
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260428
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CBC6:
	ldr r0, _0225CC60 ; =0x00001FCC
	mov r1, #0x28
	ldr r0, [r5, r0]
	asr r7, r0, #0xc
	mov r0, #0x64
	sub r0, r0, r7
	bl _s32_div_f
	bl _fflt
	ldr r0, _0225CC48 ; =0x00001FD4
	cmp r7, #0x5f
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0225CBEA
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
_0225CBEA:
	ldr r3, _0225CC58 ; =0x00001FD8
	add r1, r4, #0
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x1e
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r3, [r5, r3]
	add r0, r5, r0
	add r2, r6, #0
	bl ov92_02260428
	ldr r3, _0225CC64 ; =ov92_02263878
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x4d
	str r0, [r2]
	ldr r2, _0225CC50 ; =0x00001FC8
	lsl r1, r1, #4
	add r0, r7, #0
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	ldr r0, _0225CC68 ; =0x0000058A
	bl IsSEPlaying
	cmp r0, #0
	bne _0225CC3A
	ldr r0, _0225CC68 ; =0x0000058A
	bl PlaySE
_0225CC3A:
	ldr r0, _0225CC48 ; =0x00001FD4
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225CC48: .word 0x00001FD4
_0225CC4C: .word ov92_02263884
_0225CC50: .word 0x00001FC8
_0225CC54: .word 0x3FF0A3D7
_0225CC58: .word 0x00001FD8
_0225CC5C: .word 0x3E6147AE
_0225CC60: .word 0x00001FCC
_0225CC64: .word ov92_02263878
_0225CC68: .word 0x0000058A
	thumb_func_end ov92_0225CB2C

	thumb_func_start ov92_0225CC6C
ov92_0225CC6C: ; 0x0225CC6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	ldr r3, _0225CDEC ; =ov92_02263A94
	add r5, r0, #0
	add r2, sp, #0xc
	mov r1, #0x60
_0225CC78:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0225CC78
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_GetAnimationFrame
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0xc
	mul r0, r1
	add r0, r7, r0
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldrsh r4, [r0, r1]
	add r0, sp, #0xc
	add r0, #2
	ldrsh r6, [r0, r1]
	cmp r4, #0
	bne _0225CCB8
	cmp r6, #0
	bne _0225CCB8
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov92_0225CB2C
	b _0225CCF0
_0225CCB8:
	add r1, r4, #0
	add r2, r6, #0
	add r0, r5, #0
	add r1, #0x80
	add r2, #0x80
	bl ov92_0225CB2C
	cmp r4, #0
	beq _0225CCDE
	add r4, #0x58
	add r6, #0x80
	lsl r1, r4, #0x10
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov92_02260A38
	b _0225CCF0
_0225CCDE:
	add r4, #0x80
	add r6, #0x80
	lsl r1, r4, #0x10
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov92_02260A38
_0225CCF0:
	cmp r7, #0
	bne _0225CD00
	ldr r0, [r5, #8]
	cmp r0, r7
	beq _0225CD00
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
_0225CD00:
	str r7, [r5, #8]
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _0225CD76
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_GetActiveAnim
	cmp r0, #2
	beq _0225CD76
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #0x80
	mov r2, #0x64
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #2
	bl ManagedSprite_SetAnimNoRestart
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
_0225CD76:
	ldr r0, [r5, #0xc]
	cmp r0, #3
	bne _0225CDDC
	cmp r7, #0xb
	bne _0225CDDC
	mov r1, #0
	str r1, [r5, #8]
	add r0, r5, #0
	str r1, [r5, #0xc]
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	add sp, #0xcc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225CDDC:
	add r5, #0xf0
	ldr r0, [r5]
	bl ManagedSprite_TickTwoFrames
	mov r0, #0
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	nop
_0225CDEC: .word ov92_02263A94
_0225CDF0: .word 0x3F4CCCCD
	thumb_func_end ov92_0225CC6C

	thumb_func_start ov92_0225CDF4
ov92_0225CDF4: ; 0x0225CDF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov92_0225D8E4
	cmp r0, #0
	beq _0225CE18
	cmp r0, #1
	beq _0225CE10
	cmp r0, #2
	beq _0225CE14
	b _0225CE18
_0225CE10:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225CE14:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225CE18:
	ldr r0, [r7]
	cmp r0, #0x14
	bls _0225CE20
	b _0225D1B8
_0225CE20:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CE2C: ; jump table
	.short _0225CE56 - _0225CE2C - 2 ; case 0
	.short _0225CE74 - _0225CE2C - 2 ; case 1
	.short _0225CE8C - _0225CE2C - 2 ; case 2
	.short _0225CEBE - _0225CE2C - 2 ; case 3
	.short _0225CEDC - _0225CE2C - 2 ; case 4
	.short _0225CEEE - _0225CE2C - 2 ; case 5
	.short _0225CF0E - _0225CE2C - 2 ; case 6
	.short _0225CF44 - _0225CE2C - 2 ; case 7
	.short _0225CF52 - _0225CE2C - 2 ; case 8
	.short _0225CF6A - _0225CE2C - 2 ; case 9
	.short _0225CF92 - _0225CE2C - 2 ; case 10
	.short _0225CFE6 - _0225CE2C - 2 ; case 11
	.short _0225D00E - _0225CE2C - 2 ; case 12
	.short _0225D026 - _0225CE2C - 2 ; case 13
	.short _0225D068 - _0225CE2C - 2 ; case 14
	.short _0225D096 - _0225CE2C - 2 ; case 15
	.short _0225D0AA - _0225CE2C - 2 ; case 16
	.short _0225D0C6 - _0225CE2C - 2 ; case 17
	.short _0225D12A - _0225CE2C - 2 ; case 18
	.short _0225D194 - _0225CE2C - 2 ; case 19
	.short _0225D1B8 - _0225CE2C - 2 ; case 20
_0225CE56:
	add r0, r4, #0
	add r0, #0x8c
	mov r1, #0x71
	bl ov90_02258920
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CE74:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl ov90_022589BC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CE8C:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl ov90_022589CC
	strb r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl ov90_02258938
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	bl ov92_0225C5C4
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CEBE:
	mov r0, #0x1b
	bl ov92_0225D868
	add r5, r0, #0
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov92_0225E1A8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CEDC:
	bl IsPaletteFadeFinished
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #5
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CEEE:
	ldr r0, [r4, #4]
	bl ov92_0225E070
	ldr r0, [r4, #4]
	bl ov92_0226156C
	ldr r0, [r4, #4]
	bl ov92_02261B18
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF0E:
	ldr r0, [r4, #4]
	bl ov92_0225CC6C
	add r5, r0, #0
	beq _0225CF36
	add r0, r4, #0
	bl ov92_0225D8C4
	cmp r0, #1
	bne _0225CF36
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r4, #0
	str r0, [r4, #0x18]
	mov r0, #0x16
	add r1, #0x14
	mov r2, #8
	bl sub_02037030
_0225CF36:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF44:
	ldr r1, [r4, #8]
	add r0, r4, #0
	mov r2, #8
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF52:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258C8C
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF6A:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258CE0
	add r5, r0, #0
	beq _0225CF84
	ldr r0, [r4, #4]
	bl ov92_0225E360
	ldr r0, [r4, #4]
	bl ov92_0225E100
_0225CF84:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF92:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0225CFA8
	ldr r1, [r4, #4]
	ldr r0, _0225D1E4 ; =0x00002AE4
	ldr r1, [r1, r0]
	mov r0, #0x4b
	lsl r0, r0, #4
	cmp r1, r0
	bge _0225CFA8
	mov r5, #0
_0225CFA8:
	cmp r5, #0
	bne _0225CFD8
	add r0, r4, #0
	bl ov92_0225D8C4
	cmp r0, #1
	bne _0225CFD2
	ldr r0, [r4]
	bl ov92_0225EB70
	cmp r0, #0
	bne _0225CFD2
	ldr r0, _0225D1E8 ; =0x00000589
	mov r1, #0
	bl StopSE
	mov r1, #0
	mov r0, #0x17
	add r2, r1, #0
	bl sub_02037030
_0225CFD2:
	ldr r0, [r4, #4]
	bl ov92_0225FC2C
_0225CFD8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CFE6:
	ldr r0, _0225D1EC ; =0x0000058B
	mov r1, #0
	bl StopSE
	ldr r0, _0225D1E8 ; =0x00000589
	mov r1, #0
	bl StopSE
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258CB0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xc
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D00E:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258CE0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xd
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D026:
	ldr r1, [r4, #4]
	ldr r0, _0225D1F0 ; =0x00002AF0
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x64
	mul r1, r0
	ldr r0, _0225D1F4 ; =0x000186A0
	str r1, [r4, #0x1c]
	cmp r1, r0
	blo _0225D040
	str r0, [r4, #0x1c]
_0225D040:
	ldr r1, [r4, #4]
	ldr r0, _0225D1F8 ; =0x00002B94
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0225D04E
	mov r0, #1
	str r0, [r4, #0x1c]
_0225D04E:
	add r1, r4, #0
	mov r0, #0x19
	add r1, #0x1c
	mov r2, #8
	bl sub_02037030
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D068:
	mov r1, #0
	add r0, r1, #0
	add r3, r1, #0
	add r5, r4, #0
_0225D070:
	ldr r2, [r5, #0x24]
	cmp r2, #0
	beq _0225D078
	add r0, r0, #1
_0225D078:
	add r3, r3, #1
	add r5, #8
	cmp r3, #4
	blt _0225D070
	ldr r2, [r4, #4]
	ldr r2, [r2, #4]
	cmp r0, r2
	bne _0225D08A
	mov r1, #1
_0225D08A:
	add r0, r4, #0
	mov r2, #0xf
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D096:
	mov r0, #0x1a
	bl ov92_0225D868
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x10
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D0AA:
	bl IsPaletteFadeFinished
	add r5, r0, #0
	beq _0225D0B8
	add r0, r4, #0
	bl ov92_0225D1FC
_0225D0B8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x11
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D0C6:
	mov r6, #0
	add r5, r4, #0
_0225D0CA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov92_0226077C
	cmp r0, #0xff
	beq _0225D0F2
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r2, [r5, #0x24]
	add r1, #0xa0
	str r2, [r1]
	add r1, r4, r0
	add r1, #0xa0
	ldr r1, [r1]
	cmp r1, #1
	bhi _0225D0F2
	add r1, r4, r0
	add r1, #0xa0
	mov r0, #0
	str r0, [r1]
_0225D0F2:
	add r6, r6, #1
	add r5, #8
	cmp r6, #4
	blt _0225D0CA
	add r1, r4, #0
	add r1, #0x94
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0xa0
	bl ov90_02258AA8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x8c
	add r1, #0xa0
	mov r2, #0x71
	bl ov90_022589EC
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D12A:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov90_02258AA0
	add r5, r0, #0
	beq _0225D186
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov90_02258AA4
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov90_02258A04
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	cmp r6, #0
	beq _0225D186
	add r0, r4, #0
	mov r1, #1
	add r0, #0xcc
	str r1, [r0]
	add r0, r4, #0
	bl ov92_0225D344
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	add r3, r7, #0
	bl ov92_0225D88C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0225D1CA
	bl ov00_021E6A4C
	b _0225D1CA
_0225D186:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x13
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D194:
	mov r0, #0x1b
	bl sub_02037AC0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0225D1AA
	bl ov00_021E6A4C
_0225D1AA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D1B8:
	mov r0, #0x1b
	bl sub_02037B38
	cmp r0, #1
	bne _0225D1C6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D1C6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225D1CA:
	ldr r0, [r7]
	cmp r0, #3
	blt _0225D1E0
	cmp r0, #0x10
	bge _0225D1E0
	ldr r0, [r4, #4]
	bl ov92_0225E008
	add r0, r4, #0
	bl ov92_0225DA40
_0225D1E0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D1E4: .word 0x00002AE4
_0225D1E8: .word 0x00000589
_0225D1EC: .word 0x0000058B
_0225D1F0: .word 0x00002AF0
_0225D1F4: .word 0x000186A0
_0225D1F8: .word 0x00002B94
	thumb_func_end ov92_0225CDF4

