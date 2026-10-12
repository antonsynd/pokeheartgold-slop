	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EBB64
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_SetStateField07
	.extern ov96_021E5F24
	.extern ov96_021EC2E0
	.extern ov96_021EC458
	.extern ov96_021ECA70
	.extern ov96_021ECB38
	.extern ov96_021ECBFC
	.extern ov96_021ECC14
	.extern ov96_021ECC38
	.extern ov96_021ECC4C
	.extern ov96_021ECC7C
	.extern ov96_021ED0C8
	.extern ov96_021ED158
	.extern ov96_021ED578
	.extern ov96_021ED5E0
	.extern ov96_021ED618
	.extern ov96_021ED660
	.extern ov96_021ED6A8
	.extern ov96_021ED6F8
	.extern ov96_021ED728
	.extern ov96_021ED748
	.extern ov96_021ED74C
	.extern ov96_021ED750
	.extern ov96_021ED754
	.extern ov96_021ED78C
	.extern ov96_021ED7C4
	.extern ov96_021ED7FC
	.extern ov96_021EDC38
	.extern ov96_021EDCB4
	.extern ov96_021EDDA4
	.extern ov96_021EDE64
	.extern ov96_021EDF3C
	.extern ov96_021EE290
	.extern ov96_021EE440
	.extern ov96_021EE580
	.extern ov96_021EE830
	.extern ov96_021EE8CC
	.extern ov96_021EE944
	.extern ov96_021EE97C
	.extern ov96_021EEA80

	.text

	.extern PokeathlonCourse_RunSubStateLoop
	.extern PokeathlonCourse_InitStateInfo
	.extern PokeathlonCourse_InitPlayerProfiles
	.extern PokeathlonCourse_GetPlayerProfile
	.extern PokeathlonCourse_GetParticipantCount
	.extern PokeathlonCourse_GetParticipantData
	.extern PokeathlonCourse_GetParticipantUnk04
	.extern PokeathlonCourse_GetSaveData
	.extern PokeathlonCourse_GetFieldData
	.extern PokeathlonCourse_GetFieldData_AtIndex
	.extern PokeathlonCourse_GetFieldBA4
	.extern PokeathlonCourse_AllocPtr4FromHeap
	.extern PokeathlonCourse_FreePtr4HeapAlloc
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern PokeathlonCourse_GetHeapID
	.extern PokeathlonCourse_GetField1ED
	.extern PokeathlonCourse_SetField1ED
	.extern PokeathlonCourse_IncrementField1ED
	.extern PokeathlonCourse_SetField1F4
	.extern ov96_021E5E04
	.extern PokeathlonCourse_GetField3D8_ForCurrentParticipant
	.extern PokeathlonCourse_GetField3D8_AtIndex
	.extern ov96_021E5E7C
	.extern PokeathlonCourse_GetCurrentParticipantIndex
	.extern PokeathlonCourse_GetMode
	.extern PokeathlonCourse_GetField1EF
	.extern PokeathlonCourse_IncrementField1EF
	.extern PokeathlonCourse_ResetField1EF
	.extern PokeathlonCourse_GetSystem
	.extern ov96_021E5F24
	.extern PokeathlonCourse_GetPlayerProfileFromData
	.extern PokeathlonCourse_GetField974_AtIndex
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_ResetDataCopyArea
	.extern PokeathlonCourse_SetField3A4
	.extern PokeathlonCourse_ResetField3A4
	.extern PokeathlonCourse_GetField3A4
	.extern PokeathlonCourse_GetUnkConstant4
	.extern PokeathlonCourse_SetField5E0_AtIndex
	.extern PokeathlonCourse_GetField5F0_AtIndex
	.extern PokeathlonCourse_SetStateField07
	.extern PokeathlonCourse_SetStateField07_IfDifferent
	.extern PokeathlonCourse_SetStateTransitionType
	.extern PokeathlonCourse_SetVBlankIntrCB
	.extern PokeathlonCourse_GetGraphicsSystem

	.text
	thumb_func_start ov96_021EBB64
ov96_021EBB64: ; 0x021EBB64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r5, #0
	bl ov96_021ECBFC
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl ov96_021ED0C8
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #1
	bne _021EBB96
	add r0, r6, #0
	bl ov96_021EE440
	add r5, r0, #0
_021EBB96:
	ldr r0, [r4, #0xc]
	bl ov96_021EE830
	ldr r0, [r4, #0xc]
	bl ov96_021EEA80
	cmp r0, #0
	bne _021EBBAA
	cmp r5, #0
	beq _021EBBAC
_021EBBAA:
	b _021EC1A4
_021EBBAC:
	ldr r0, [r4, #0xc]
	bl ov96_021EE97C
	add r1, r4, #0
	add r1, #0xb5
	mov r7, #0
	ldrb r1, [r1]
	add r5, r0, #0
	mvn r7, r7
	cmp r1, #0x16
	bls _021EBBC4
	b _021EC184
_021EBBC4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EBBD0: ; jump table
	.short _021EBBFE - _021EBBD0 - 2 ; case 0
	.short _021EBC0A - _021EBBD0 - 2 ; case 1
	.short _021EBC16 - _021EBBD0 - 2 ; case 2
	.short _021EBC40 - _021EBBD0 - 2 ; case 3
	.short _021EBC84 - _021EBBD0 - 2 ; case 4
	.short _021EBCA6 - _021EBBD0 - 2 ; case 5
	.short _021EBCF8 - _021EBBD0 - 2 ; case 6
	.short _021EBD04 - _021EBBD0 - 2 ; case 7
	.short _021EBD58 - _021EBBD0 - 2 ; case 8
	.short _021EBD78 - _021EBBD0 - 2 ; case 9
	.short _021EBD8C - _021EBBD0 - 2 ; case 10
	.short _021EBDDE - _021EBBD0 - 2 ; case 11
	.short _021EBDFA - _021EBBD0 - 2 ; case 12
	.short _021EBEA0 - _021EBBD0 - 2 ; case 13
	.short _021EBEE4 - _021EBBD0 - 2 ; case 14
	.short _021EBEF8 - _021EBBD0 - 2 ; case 15
	.short _021EBF34 - _021EBBD0 - 2 ; case 16
	.short _021EBF44 - _021EBBD0 - 2 ; case 17
	.short _021EC008 - _021EBBD0 - 2 ; case 18
	.short _021EC07E - _021EBBD0 - 2 ; case 19
	.short _021EC126 - _021EBBD0 - 2 ; case 20
	.short _021EC142 - _021EBBD0 - 2 ; case 21
	.short _021EBFD6 - _021EBBD0 - 2 ; case 22
_021EBBFE:
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb5
	mov r7, #3
	strb r1, [r0]
	b _021EC188
_021EBC0A:
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb5
	mov r7, #4
	strb r1, [r0]
	b _021EC188
_021EBC16:
	mov r5, #0
_021EBC18:
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021ED6F8
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	lsl r1, r5, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021ECC38
	add r5, r5, #1
	cmp r5, #4
	blt _021EBC18
	add r0, r4, #0
	mov r1, #3
	add r0, #0xb5
	strb r1, [r0]
_021EBC40:
	add r0, r4, #0
	add r0, #0xb2
	ldrb r1, [r0]
	cmp r1, #4
	blo _021EBC5E
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0xb5
	mov r7, #6
	strb r1, [r0]
	b _021EC188
_021EBC5E:
	add r0, r6, #0
	mov r7, #5
	bl ov96_021ED6F8
	add r1, r4, #0
	add r1, #0xb2
	add r2, r0, #0
	ldrb r1, [r1]
	add r0, r6, #0
	bl ov96_021ED578
	add r0, r4, #0
	add r0, #0xb2
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb2
	strb r1, [r0]
	b _021EC188
_021EBC84:
	add r0, r6, #0
	bl ov96_021ED5E0
	cmp r0, #0
	beq _021EBC9A
	add r0, r4, #0
	mov r1, #5
	add r0, #0xb5
	mov r7, #7
	strb r1, [r0]
	b _021EC188
_021EBC9A:
	add r0, r4, #0
	mov r1, #6
	add r0, #0xb5
	mov r7, #9
	strb r1, [r0]
	b _021EC188
_021EBCA6:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	bne _021EBD0E
	add r0, r6, #0
	bl ov96_021ED754
	add r1, r4, #0
	add r1, #0xb4
	ldrb r1, [r1]
	cmp r1, r0
	blo _021EBCE0
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #6
	add r0, #0xb5
	mov r7, #0xa
	strb r1, [r0]
	b _021EC188
_021EBCE0:
	add r0, r4, #0
	bl ov96_021ED748
	add r2, r0, #0
	ldr r1, _021EBFF0 ; =ov96_021ED618
	add r0, r6, #0
	bl ov96_021EDDA4
	cmp r0, #0
	beq _021EBD0E
	mov r7, #8
	b _021EC188
_021EBCF8:
	add r0, r4, #0
	mov r1, #7
	add r0, #0xb5
	mov r7, #0xb
	strb r1, [r0]
	b _021EC188
_021EBD04:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	beq _021EBD10
_021EBD0E:
	b _021EC188
_021EBD10:
	add r0, r6, #0
	bl ov96_021ED78C
	add r1, r4, #0
	add r1, #0xb4
	ldrb r1, [r1]
	cmp r1, r0
	blo _021EBD40
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb5
	mov r7, #0xa
	strb r1, [r0]
	b _021EC188
_021EBD40:
	add r0, r4, #0
	bl ov96_021ED74C
	add r2, r0, #0
	ldr r1, _021EBFF4 ; =ov96_021ED660
	add r0, r6, #0
	bl ov96_021EDDA4
	cmp r0, #0
	beq _021EBE20
	mov r7, #0xc
	b _021EC188
_021EBD58:
	add r0, r6, #0
	bl ov96_021EDCB4
	cmp r0, #4
	beq _021EBD6E
	add r0, r4, #0
	mov r1, #9
	add r0, #0xb5
	mov r7, #0xe
	strb r1, [r0]
	b _021EC188
_021EBD6E:
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBD78:
	add r0, r6, #0
	bl ov96_021EDCB4
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xb5
	add r7, #0xf
	strb r1, [r0]
	b _021EC188
_021EBD8C:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	bne _021EBE20
	add r0, r6, #0
	bl ov96_021ED7C4
	add r1, r4, #0
	add r1, #0xb4
	ldrb r1, [r1]
	cmp r1, r0
	blo _021EBDC6
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb2
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb3
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0xb5
	mov r7, #0x15
	strb r1, [r0]
	b _021EC188
_021EBDC6:
	add r0, r4, #0
	bl ov96_021ED750
	add r2, r0, #0
	ldr r1, _021EBFF8 ; =ov96_021ED6A8
	add r0, r6, #0
	bl ov96_021EDDA4
	cmp r0, #0
	beq _021EBE20
	mov r7, #0x14
	b _021EC188
_021EBDDE:
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0xb5
	mov r7, #0x16
	strb r1, [r0]
	bl GF_GetCurrentPlayingBGM
	mov r1, #0x10
	bl StopBGM
	ldr r0, _021EBFFC ; =0x000006EE
	bl PlaySE
	b _021EC188
_021EBDFA:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov96_021ECC14
	cmp r0, #0
	beq _021EBE20
	add r1, r4, #0
	add r1, #0x94
	add r0, r4, #0
	ldr r1, [r1]
	add r0, #0x94
	add r2, r1, #1
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x94
	str r2, [r1]
	cmp r0, #0x1e
	bgt _021EBE22
_021EBE20:
	b _021EC188
_021EBE22:
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	bne _021EBE30
	mov r0, #3
	b _021EBE32
_021EBE30:
	mov r0, #4
_021EBE32:
	add r1, r4, #0
	mov r3, #0
	add r1, #0x94
	str r3, [r1]
	add r1, r4, #0
	add r1, #0xb4
	lsl r0, r0, #0x18
	ldrb r1, [r1]
	lsr r0, r0, #0x18
	cmp r1, r0
	blo _021EBE58
	add r0, r4, #0
	add r0, #0xb4
	strb r3, [r0]
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBE58:
	add r0, r5, #0
	add r1, r1, #1
	mov r2, #1
	mov r7, #0x17
	bl ov96_021EDF3C
	mov r5, #0
_021EBE66:
	add r2, r4, #0
	add r2, #0xb4
	ldrb r2, [r2]
	lsl r1, r5, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov96_021ED728
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	lsl r1, r5, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	bl ov96_021ECC38
	add r5, r5, #1
	cmp r5, #4
	blt _021EBE66
	add r0, r4, #0
	add r0, #0xb4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	strb r1, [r0]
	b _021EC188
_021EBEA0:
	add r0, r6, #0
	add r1, sp, #0x14
	bl ov96_021ED7FC
	add r0, r4, #0
	add r0, #0x8c
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x9c
	add r2, sp, #0x14
	bl ov96_021ECC7C
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r1, r0, #0x18
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x18
	cmp r1, r0
	bne _021EBEDA
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBEDA:
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBEE4:
	add r0, r4, #0
	add r0, #0x9c
	mov r7, #0x18
	bl ov96_021EE290
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBEF8:
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	add r0, r4, #0
	lsl r1, r1, #4
	add r0, #0x8c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r7, #0x19
	bl ov96_021ECC4C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	mov r3, #0
	bl ov96_021EDF3C
	add r1, r4, #0
	add r1, #0x8c
	ldr r1, [r1]
	add r0, r6, #0
	bl ov96_021EDE64
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBF34:
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov96_021EC458
	add r0, r4, #0
	mov r1, #0x11
	add r0, #0xb5
	strb r1, [r0]
_021EBF44:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r7, #0x1a
	lsl r0, r0, #4
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl BufferPlayersName
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov96_021ECA70
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	mov r1, #1
	bl ov96_021ED158
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x20
	add r1, r6, #0
	mov r3, #2
	bl ov96_021ECB38
	ldr r0, [sp, #0xc]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x20]
	bl ManagedSprite_SetAnim
	ldr r0, _021EBFFC ; =0x000006EE
	mov r1, #0
	bl StopSE
	ldr r0, _021EC000 ; =0x000008E2
	bl PlaySE
	mov r0, #0x8e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, _021EC004 ; =0x00000476
	bl PlayBGM
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _021EBFCC
	add r0, r4, #0
	mov r1, #0x16
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBFCC:
	add r0, r4, #0
	mov r1, #0x12
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EBFD6:
	add r2, r4, #0
	add r2, #0xb1
	ldrb r2, [r2]
	mov r1, #0
	mov r7, #0x1e
	bl BufferPokeathlonCourseName
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
	nop
_021EBFF0: .word ov96_021ED618
_021EBFF4: .word ov96_021ED660
_021EBFF8: .word ov96_021ED6A8
_021EBFFC: .word 0x000006EE
_021EC000: .word 0x000008E2
_021EC004: .word 0x00000476
_021EC008:
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	add r0, r6, #0
	lsl r1, r1, #4
	lsr r1, r1, #0x1c
	mov r7, #0x1b
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	mov r1, #0
	bl ov96_021EDC38
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl BufferPokeathlonMedalName
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	cmp r0, #5
	blo _021EC074
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	mov r7, #0x1c
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	mov r1, #1
	bl ov96_021EDC38
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl BufferPokeathlonMedalName
_021EC074:
	add r0, r4, #0
	mov r1, #0x13
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EC07E:
	add r0, r4, #0
	add r0, #0xb1
	ldrb r0, [r0]
	str r0, [sp, #8]
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	bne _021EC110
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	lsl r0, r0, #4
	lsr r0, r0, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov96_021E5F24
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021EC110
	add r0, r1, #0
	beq _021EC0B0
	bl GF_AssertFail
_021EC0B0:
	add r0, r6, #0
	bl PokeathlonCourse_GetSaveData
	bl Save_Pokeathlon_Get
	bl PokeathlonSave_dummy2
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	str r0, [sp, #0x10]
	add r0, r4, #0
	lsl r1, r1, #4
	add r0, #0x8c
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	bl ov96_021ECC4C
	ldr r2, [sp, #8]
	mov r1, #0x2c
	mul r1, r2
	ldr r2, [sp, #0x10]
	add r1, r2, r1
	ldrh r1, [r1, #6]
	cmp r1, r0
	bhs _021EC11C
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1]
	add r0, r6, #0
	lsl r1, r1, #4
	lsr r1, r1, #0x1c
	mov r7, #0x1d
	bl PokeathlonCourse_GetPlayerProfileFromData
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl BufferPlayersName
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl BufferPokeathlonCourseName
	b _021EC11C
_021EC110:
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	mov r7, #0x1e
	bl BufferPokeathlonCourseName
_021EC11C:
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EC126:
	ldr r0, _021EC1AC ; =0x000008E2
	mov r1, #0x78
	mov r7, #0x1f
	bl StopSE
	add r0, r4, #0
	mov r1, #1
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0x15
	add r0, #0xb5
	strb r1, [r0]
	b _021EC188
_021EC142:
	add r0, r6, #0
	bl PokeathlonCourse_GetMode
	cmp r0, #0
	beq _021EC156
	add r0, r6, #0
	bl ov96_021EE580
	cmp r0, #0
	beq _021EC188
_021EC156:
	add r0, r4, #0
	bl ov96_021EC2E0
	cmp r0, #0
	beq _021EC170
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, [r4, #8]
	bl SysTask_Destroy
_021EC170:
	ldr r0, [r4, #0xc]
	bl ov96_021EE944
	add r0, r6, #0
	mov r1, #2
	bl PokeathlonCourse_SetStateField07
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC184:
	bl GF_AssertFail
_021EC188:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _021EC1A4
	ldr r0, [r4, #0xc]
	add r1, r7, #0
	bl ov96_021EE8CC
	add r0, r4, #0
	add r0, #0xb7
	ldrb r0, [r0]
	add r4, #0xb7
	add r0, r0, #1
	strb r0, [r4]
_021EC1A4:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC1AC: .word 0x000008E2
	thumb_func_end ov96_021EBB64

