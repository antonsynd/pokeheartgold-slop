	.include "asm/macros.inc"
	.include "overlay_49_022595CC.inc"
	.include "global.inc"
	.public ov49_02259AA4
	.public ov49_02259C90
	.extern ov49_0225A038

    .text

	.text
	thumb_func_start ov49_02259AA4
ov49_02259AA4: ; 0x02259AA4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl OverlayManager_GetArgs
	mov r2, #0x3a
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x77
	lsl r2, r2, #0xc
	bl Heap_Create
	mov r2, #0x3d
	mov r0, #3
	mov r1, #0x78
	lsl r2, r2, #0xc
	bl Heap_Create
	mov r1, #0xfe
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x77
	bl OverlayManager_CreateAndGetData
	mov r2, #0xfe
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	add r0, #0xc
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x34]
	bl ov45_0222A53C
	strb r0, [r4, #2]
	ldr r0, [r4, #0x34]
	bl ov45_0222A53C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02259B02
	bl GF_AssertFail
_02259B02:
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r5]
	bl Save_PlayerData_GetProfile
	mov r1, #0xfd
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r5]
	add r0, #0x3c
	mov r2, #0x77
	bl ov49_0225A5EC
	mov r0, #0x77
	bl ov49_02258958
	mov r1, #0xfa
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, #0xc
	ldr r0, [r4, r1]
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	mov r0, #0x78
	mov r2, #0xfa
	str r0, [sp]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	mov r0, #0x18
	mov r3, #0x77
	bl ov49_02258AB4
	mov r2, #0x3e
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #0x78
	str r0, [sp]
	add r2, #8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r4, r2]
	mov r3, #0x77
	bl ov49_0225DF18
	mov r1, #0xf9
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x77
	bl ov49_0225CB78
	mov r1, #0xfb
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0xf4
	add r0, r4, r1
	add r1, r4, #0
	ldr r2, [r5]
	add r1, #0x3c
	mov r3, #0x77
	bl ov49_0225AAC8
	mov r0, #0xc6
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r2, [r5]
	add r0, r4, r0
	add r1, #0x3c
	mov r3, #0x77
	bl ov49_0225ACA8
	mov r0, #0xce
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x77
	bl ov49_0225AD20
	mov r0, #0x39
	lsl r0, r0, #4
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x77
	bl ov49_0225B214
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x3c
	mov r2, #0x77
	bl ov49_0225B0D4
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x77
	bl ov49_0225B308
	mov r1, #0x3a
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xc4
	add r1, r4, r1
	mov r2, #0x77
	bl ov49_0225B198
	mov r0, #0x77
	str r0, [sp]
	mov r3, #0xfd
	mov r0, #0x61
	lsl r3, r3, #2
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r1, [r4, #0x38]
	ldr r3, [r4, r3]
	add r0, r4, r0
	add r2, #0x3c
	bl ov49_0225B450
	ldr r0, [r4, #0x34]
	bl ov45_0222A5C0
	add r5, r0, #0
	bl ov45_0222AADC
	cmp r0, #1
	bne _02259C2E
	mov r0, #0x61
	mov r2, #0xb7
	lsl r0, r0, #2
	add r1, r4, #0
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, #0x3c
	add r2, r4, r2
	mov r3, #0x77
	str r5, [sp]
	bl ov49_0225B9AC
_02259C2E:
	add r0, r4, #0
	mov r1, #0x77
	bl ov49_0225EEAC
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov49_0225F1A8
	add r0, r4, #0
	bl ov49_0225F1F0
	mov r0, #0x77
	str r0, [sp]
	mov r0, #0x78
	mov r3, #0xfa
	str r0, [sp, #4]
	lsl r3, r3, #2
	add r2, r3, #4
	ldr r1, [r4, r3]
	sub r3, #8
	ldr r0, [r4, #0x34]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov49_022652E8
	mov r1, #0xf5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x77
	add r1, r4, #0
	bl ov49_02268764
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02259C8C ; =ov49_0225A5C8
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02259C8C: .word ov49_0225A5C8
	thumb_func_end ov49_02259AA4

	thumb_func_start ov49_02259C90
ov49_02259C90: ; 0x02259C90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r6, #0
	bl OverlayManager_GetArgs
	ldr r0, [r5]
	cmp r0, #8
	bhi _02259D58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02259CB6: ; jump table
	.short _02259CC8 - _02259CB6 - 2 ; case 0
	.short _02259CEA - _02259CB6 - 2 ; case 1
	.short _02259CFE - _02259CB6 - 2 ; case 2
	.short _02259D7A - _02259CB6 - 2 ; case 3
	.short _02259DF8 - _02259CB6 - 2 ; case 4
	.short _02259E08 - _02259CB6 - 2 ; case 5
	.short _02259E58 - _02259CB6 - 2 ; case 6
	.short _02259E76 - _02259CB6 - 2 ; case 7
	.short _02259ED0 - _02259CB6 - 2 ; case 8
_02259CC8:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259CEA:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02259D58
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259CFE:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _02259D26
	bl ov45_0222D844
	cmp r0, #1
	beq _02259D1A
	ldr r0, [r4, #0x34]
	bl ov45_0222A1FC
	cmp r0, #0
	beq _02259D26
_02259D1A:
	ldrb r1, [r4, #4]
	mov r0, #0xf0
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r4, #4]
_02259D26:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _02259D42
	ldr r0, [r4, #0x34]
	bl ov45_0222A33C
	cmp r0, #1
	bne _02259D42
	mov r0, #1
	strb r0, [r4, #6]
	add r0, r4, #0
	mov r1, #8
	bl ov49_0225A038
_02259D42:
	ldrb r0, [r4]
	cmp r0, #1
	beq _02259D5A
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #1
	beq _02259D5A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _02259D5A
_02259D58:
	b _02259EE2
_02259D5A:
	ldrb r0, [r4, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _02259D68
	mov r0, #3
	str r0, [r5]
	b _02259EE2
_02259D68:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _02259D74
	mov r0, #5
	str r0, [r5]
	b _02259EE2
_02259D74:
	mov r0, #7
	str r0, [r5]
	b _02259EE2
_02259D7A:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AC74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov49_0225B014
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B124
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov49_0225B200
	bl sub_020393C8
	cmp r0, #0
	beq _02259DBE
	mov r1, #0x39
	lsl r1, r1, #4
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov49_0225B284
	b _02259DF2
_02259DBE:
	bl sub_020397FC
	cmp r0, #0
	beq _02259DDC
	bl ov45_0222E7CC
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov49_0225B2C0
	b _02259DF2
_02259DDC:
	ldr r0, [r4, #0x34]
	bl ov45_0222A1FC
	mov r1, #0x39
	lsl r1, r1, #4
	add r2, r0, #0
	add r0, r4, r1
	sub r1, #0xb4
	add r1, r4, r1
	bl ov49_0225B2F0
_02259DF2:
	mov r0, #4
	str r0, [r5]
	b _02259EE2
_02259DF8:
	ldr r0, _02259EF4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02259EE2
	mov r0, #7
	str r0, [r5]
	b _02259EE2
_02259E08:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AC74
	mov r0, #0xce
	lsl r0, r0, #2
	mov r1, #0
	add r0, r4, r0
	add r2, r1, #0
	bl ov49_0225B014
	mov r0, #0xf1
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B124
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov49_0225B200
	mov r0, #0xb7
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	mov r2, #0x46
	bl ov49_0225B388
	add r1, r0, #0
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AB44
	mov r0, #6
	str r0, [r5]
	mov r0, #0x3c
	str r0, [r4, #8]
	b _02259EE2
_02259E58:
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225AC5C
	cmp r0, #0
	beq _02259EE2
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _02259EE2
	mov r0, #7
	str r0, [r5]
	b _02259EE2
_02259E76:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B898
	cmp r0, #5
	bne _02259EA8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259EA8:
	cmp r0, #0
	bne _02259EE2
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x77
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02259EE2
_02259ED0:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02259EE2
	mov r0, #0
	strb r0, [r4, #3]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02259EE2:
	add r0, r4, #0
	bl ov49_0225A98C
	add r0, r4, #0
	bl ov49_0225AA2C
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02259EF4: .word gSystem
	thumb_func_end ov49_02259C90

