	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247C60
	.public ov71_02247DEC
	.public ov71_02247ED0
	.public ov71_02247F9C
	.extern ov71_02247388
	.extern ov71_0224738C
	.extern ov71_02247390
	.extern ov71_022473A8
	.extern ov71_022473B0
	.extern ov71_022473DC
	.extern ov71_02247704
	.extern ov71_022480C0
	.extern ov71_02248110
	.extern ov71_0224817C
	.extern ov71_022481C8
	.extern ov71_022481D8

	.text

	.text
	thumb_func_start ov71_02247C60
ov71_02247C60: ; 0x02247C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bhi _02247C9A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02247C7A: ; jump table
	.short _02247C84 - _02247C7A - 2 ; case 0
	.short _02247C90 - _02247C7A - 2 ; case 1
	.short _02247D04 - _02247C7A - 2 ; case 2
	.short _02247DB4 - _02247C7A - 2 ; case 3
	.short _02247DD4 - _02247C7A - 2 ; case 4
_02247C84:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02247DE4
_02247C90:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	bgt _02247C9C
_02247C9A:
	b _02247DE4
_02247C9C:
	ldr r0, [r4]
	bl ov71_0224738C
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl ov71_02247388
	add r7, r0, #0
	ldr r0, [r4]
	bl ov71_022473DC
	cmp r0, #1
	bne _02247CBC
	mov r1, #0
	mov r6, #2
	b _02247CC0
_02247CBC:
	mov r1, #4
	mov r6, #3
_02247CC0:
	ldr r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	bl ReadMsgDataIntoString
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	add r0, r7, #0
	bl StringExpandPlaceholders
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x58
	mov r1, #1
	bl AddTextPrinterParameterized
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0x6d
	mov r2, #2
	bl sub_0200E948
	add r0, r4, #0
	add r0, #0x58
	bl CopyWindowToVram
	mov r0, #0
	str r0, [r4, #8]
	str r6, [r5]
	b _02247DE4
_02247D04:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x3c
	ble _02247DE4
	ldr r0, [r4]
	bl ov71_0224738C
	add r6, r0, #0
	ldr r0, [r4]
	bl ov71_02247388
	add r7, r0, #0
	ldr r2, [r4, #0x68]
	add r0, r6, #0
	mov r1, #1
	bl ReadMsgDataIntoString
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x68]
	add r0, r7, #0
	bl StringExpandPlaceholders
	ldr r0, [r4]
	bl ov71_02247390
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	bne _02247D80
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Pokepic_StartAnim
	ldr r0, [r4]
	bl ov71_022473A8
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #0x10
	mov r3, #1
	bl sub_020729A4
	ldr r0, [r4]
	bl ov71_022473A8
	add r6, r0, #0
	ldr r0, [r4]
	bl ov71_022473B0
	add r2, r0, #0
	add r1, sp, #0x10
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_020062E0
_02247D80:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x6c]
	add r0, #0x58
	mov r1, #1
	bl AddTextPrinterParameterized
	add r0, r4, #0
	add r0, #0x58
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02247DE4
_02247DB4:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x3c
	ble _02247DE4
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ClearFrameAndWindow2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02247DE4
_02247DD4:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x14
	ble _02247DE4
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02247DE4:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov71_02247C60

	thumb_func_start ov71_02247DEC
ov71_02247DEC: ; 0x02247DEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _02247EC6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247E06: ; jump table
	.short _02247E10 - _02247E06 - 2 ; case 0
	.short _02247E2A - _02247E06 - 2 ; case 1
	.short _02247E50 - _02247E06 - 2 ; case 2
	.short _02247E7C - _02247E06 - 2 ; case 3
	.short _02247EAE - _02247E06 - 2 ; case 4
_02247E10:
	ldr r0, _02247ECC ; =0x000006A7
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xc
	bl ov71_022480C0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247E2A:
	bl ov71_02248110
	cmp r0, #0
	beq _02247EC6
	ldr r0, [r5, #0x10]
	bl Pokepic_Delete
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x40]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247E50:
	ldr r0, [r5, #0x40]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _02247EC6
	ldr r0, [r5, #0x74]
	mov r1, #1
	bl ov71_02247704
	mov r1, #0x10
	add r0, r5, #0
	mov r2, #0
	add r3, r1, #0
	bl ov71_022480C0
	add r0, r5, #0
	bl ov71_0224817C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247E7C:
	bl ov71_022481D8
	cmp r0, #2
	bge _02247E8E
	add r0, r5, #0
	bl ov71_022481C8
	cmp r0, #1
	bne _02247EC6
_02247E8E:
	mov r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02247EC6
_02247EAE:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02247EC6
	add r0, r5, #0
	bl ov71_022481C8
	cmp r0, #0
	beq _02247EC6
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02247EC6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02247ECC: .word 0x000006A7
	thumb_func_end ov71_02247DEC

	thumb_func_start ov71_02247ED0
ov71_02247ED0: ; 0x02247ED0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _02247F78 ; =0x04000060
	ldr r2, _02247F7C ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _02247F80 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02247F84 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _02247F88 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	ldr r3, _02247F8C ; =NNS_GfdDefaultFuncAllocTexVram
	mov r0, #1
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _02247F90 ; =NNS_GfdDefaultFuncAllocPlttVram
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _02247F94 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl PokepicManager_SetCharBaseAddrAndSize
	ldr r2, _02247F98 ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0xc]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl PokepicManager_SetPlttBaseAddrAndSize
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02247F78: .word 0x04000060
_02247F7C: .word 0xFFFFCFFD
_02247F80: .word 0x0000CFFB
_02247F84: .word 0x04000540
_02247F88: .word 0xBFFF0000
_02247F8C: .word NNS_GfdDefaultFuncAllocTexVram
_02247F90: .word NNS_GfdDefaultFuncAllocPlttVram
_02247F94: .word 0x7FFF0000
_02247F98: .word 0xFFFF0000
	thumb_func_end ov71_02247ED0

	thumb_func_start ov71_02247F9C
ov71_02247F9C: ; 0x02247F9C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5]
	bl ov71_02247390
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl GetBoxmonSpriteCharAndPlttNarcIds
	ldr r0, [r5]
	bl ov71_022473A8
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x80
	add r1, r5, #0
	ldr r0, [r0]
	add r1, #0x14
	mov r3, #1
	bl NARC_ReadPokepicAnimScript
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_02070854
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0x14
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0xc]
	add r3, #0x50
	add r1, sp, #0x10
	mov r2, #0x80
	bl PokepicManager_CreatePokepic
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_02247F9C

