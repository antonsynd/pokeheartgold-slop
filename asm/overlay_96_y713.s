	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_0220D6CC
	.public ov96_0220D744
	.public ov96_0220D8C4
	.public ov96_0220D910
	.public ov96_0220D9A4
	.public ov96_0220DAA0
	.public ov96_0220DB3C
	.extern ov96_021E8228
	.extern ov96_021EB06C
	.extern ov96_021EB0A4
	.extern ov96_021EB0CC
	.extern ov96_0220E960
	.extern ov96_0221CEF4
	.extern ov96_0221CF00
	.extern ov96_0221CFBC
	.extern ov96_0221CFBE

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
	thumb_func_start ov96_0220D6CC
ov96_0220D6CC: ; 0x0220D6CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r5, _0220D740 ; =ov96_0221CF00
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0xc
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r1, sp, #0
	str r0, [r4]
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r3, #4]
	str r0, [sp]
	ldr r0, [r3]
	str r0, [sp, #8]
	add r0, r2, #0
	str r4, [sp, #4]
	bl CalcAngleBetweenVecs
	mov r2, #2
	lsl r2, r2, #0xc
	cmp r0, r2
	bls _0220D70A
	mov r1, #0xe
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _0220D710
_0220D70A:
	add sp, #0x18
	mov r0, #4
	pop {r3, r4, r5, pc}
_0220D710:
	cmp r0, r2
	bls _0220D722
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	bhs _0220D722
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, pc}
_0220D722:
	mov r1, #6
	lsl r1, r1, #0xc
	cmp r0, r1
	blo _0220D738
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r0, r1
	bhi _0220D738
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, pc}
_0220D738:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_0220D740: .word ov96_0221CF00
	thumb_func_end ov96_0220D6CC

	thumb_func_start ov96_0220D744
ov96_0220D744: ; 0x0220D744
	push {r4, r5, r6, lr}
	sub sp, #0x60
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0220D752
	b _0220D8B0
_0220D752:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x10
	add r1, #0x1c
	add r2, sp, #0x54
	bl VEC_Subtract
	add r0, sp, #0x54
	bl VEC_Mag
	add r4, r0, #0
	cmp r4, #0
	ble _0220D770
	mov r2, #1
	b _0220D772
_0220D770:
	mov r2, #0
_0220D772:
	ldr r1, [r5, #0x40]
	ldr r0, _0220D8B4 ; =0xEFFFFFFF
	and r1, r0
	lsl r0, r2, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r5, #0x40]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	beq _0220D844
	mov r2, #0
	add r0, sp, #0x24
	str r2, [r0]
	add r1, sp, #0x30
	str r2, [r0, #4]
	str r2, [r1]
	str r2, [r0, #8]
	add r0, r5, #0
	str r2, [r1, #4]
	add r0, #0x34
	str r2, [r1, #8]
	bl VEC_Normalize
	ldr r0, _0220D8B8 ; =0x00000CCD
	add r1, sp, #0x30
	add r2, sp, #0x24
	add r3, sp, #0x18
	bl VEC_MultAdd
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bge _0220D7B4
	neg r0, r0
_0220D7B4:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bge _0220D7BE
	neg r0, r0
_0220D7BE:
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x40]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	beq _0220D806
	ldr r0, [r5, #8]
	mov r1, #0x64
	ldr r0, [r0, #4]
	bl _s32_div_f
	add r6, r0, #0
	add r0, sp, #0x54
	add r1, sp, #0x48
	bl VEC_Normalize
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x28
	add r2, sp, #0x24
	add r3, sp, #0xc
	bl VEC_MultAdd
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bge _0220D7F2
	neg r1, r1
_0220D7F2:
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	cmp r1, #0
	bge _0220D800
	neg r1, r1
_0220D800:
	ldr r0, [sp, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x1c]
_0220D806:
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, #0x34
	bl ov96_0220E960
	add r0, r5, #0
	add r0, #0x1c
	add r1, r5, #0
	add r1, #0x34
	add r2, r0, #0
	bl VEC_Add
	add r3, r5, #0
	add r3, #0x1c
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _0220D8B0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0220D8B0
	ldr r1, [r5, #0x40]
	ldr r0, _0220D8BC ; =0xFBFFFFFF
	and r0, r1
	str r0, [r5, #0x40]
_0220D844:
	ldr r0, [r5, #0x40]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _0220D8B0
	add r0, sp, #0x54
	add r1, sp, #0x48
	bl VEC_Normalize
	ldr r0, [r5, #0x40]
	lsl r0, r0, #5
	lsr r0, r0, #0x1f
	bne _0220D870
	add r0, sp, #0x48
	bl ov96_0220D6CC
	lsl r0, r0, #0x1c
	ldr r2, [r5, #0x40]
	ldr r1, _0220D8C0 ; =0xFF0FFFFF
	lsr r0, r0, #8
	and r1, r2
	orr r0, r1
	str r0, [r5, #0x40]
_0220D870:
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	cmp r4, r0
	bgt _0220D886
	add r3, sp, #0x54
	ldmia r3!, {r0, r1}
	add r2, sp, #0x3c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	b _0220D898
_0220D886:
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	add r1, sp, #0x48
	add r3, sp, #0x3c
	bl VEC_MultAdd
_0220D898:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #0x3c
	add r2, r0, #0
	bl VEC_Add
	add r2, sp, #0x48
	ldmia r2!, {r0, r1}
	add r5, #0x28
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
_0220D8B0:
	add sp, #0x60
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220D8B4: .word 0xEFFFFFFF
_0220D8B8: .word 0x00000CCD
_0220D8BC: .word 0xFBFFFFFF
_0220D8C0: .word 0xFF0FFFFF
	thumb_func_end ov96_0220D744

	thumb_func_start ov96_0220D8C4
ov96_0220D8C4: ; 0x0220D8C4
	push {lr}
	sub sp, #0xc
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [r0, #4]
	asr r1, r1, #0xc
	asr r2, r2, #0xc
	add r3, sp, #8
	bl ov96_021EB06C
	ldr r1, [sp, #8]
	cmp r1, #0
	ble _0220D8EC
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0220D8EC
	cmp r1, #0xff
	bge _0220D8EC
	cmp r0, #0xff
	blt _0220D8F2
_0220D8EC:
	add sp, #0xc
	mov r0, #1
	pop {pc}
_0220D8F2:
	cmp r1, #8
	blt _0220D902
	cmp r1, #0xf8
	bge _0220D902
	cmp r0, #8
	blt _0220D902
	cmp r0, #0xb4
	blt _0220D908
_0220D902:
	add sp, #0xc
	mov r0, #1
	pop {pc}
_0220D908:
	mov r0, #0
	add sp, #0xc
	pop {pc}
	.balign 4, 0
	thumb_func_end ov96_0220D8C4

	thumb_func_start ov96_0220D910
ov96_0220D910: ; 0x0220D910
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	mov r1, #3
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl _s32_div_f
	lsl r4, r1, #2
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r0, #0
	mov r1, #0xc
	mul r2, r1
	ldr r1, _0220D994 ; =ov96_0221CFBC
	add r0, sp, #4
	add r1, r1, r2
	ldr r3, _0220D998 ; =ov96_0221CFBE
	str r0, [sp]
	add r2, r3, r2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #4]
	add r3, sp, #8
	bl ov96_021EB0A4
	ldr r0, [sp, #8]
	add r2, r5, #0
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	add r3, sp, #0xc
	lsl r0, r0, #0xc
	str r0, [r5, #0x20]
	ldr r0, [sp, #8]
	add r2, #0x34
	lsl r0, r0, #0xc
	str r0, [r5, #0x10]
	ldr r0, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r3]
	str r0, [r3, #4]
	str r0, [r3, #8]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r5, #0x40]
	ldr r0, _0220D99C ; =0xFF0FFFFF
	and r1, r0
	mov r0, #2
	lsl r0, r0, #0x14
	orr r1, r0
	ldr r0, _0220D9A0 ; =0xFBFFFFFF
	and r0, r1
	str r0, [r5, #0x40]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0220D994: .word ov96_0221CFBC
_0220D998: .word ov96_0221CFBE
_0220D99C: .word 0xFF0FFFFF
_0220D9A0: .word 0xFBFFFFFF
	thumb_func_end ov96_0220D910

	thumb_func_start ov96_0220D9A4
ov96_0220D9A4: ; 0x0220D9A4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	cmp r2, #4
	bhi _0220DA94
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0220D9BC: ; jump table
	.short _0220DA94 - _0220D9BC - 2 ; case 0
	.short _0220DA6A - _0220D9BC - 2 ; case 1
	.short _0220D9F2 - _0220D9BC - 2 ; case 2
	.short _0220D9CE - _0220D9BC - 2 ; case 3
	.short _0220D9C6 - _0220D9BC - 2 ; case 4
_0220D9C6:
	mov r0, #2
	add sp, #4
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0220D9CE:
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	sub r2, r1, #1
	add r1, r4, #0
	add r1, #0x44
	strb r2, [r1]
	add r1, r4, #0
	add r1, #0x44
	ldrb r1, [r1]
	cmp r1, #0
	bne _0220DA98
	bl ov96_0220D910
	mov r0, #4
	add sp, #4
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0220D9F2:
	bl ov96_0220D744
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	bl ov96_0220D8C4
	cmp r0, #0
	beq _0220DA98
	mov r3, #1
	add r1, r4, #0
	add r2, r4, #0
	str r3, [sp]
	add r1, #0x45
	add r2, #0x46
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov96_021E8228
	mov r0, #1
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	add r1, #0x45
	add r2, #0x46
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	mov r3, #5
	bl ov96_021E8228
	ldr r0, [r4, #0x40]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	beq _0220DA52
	mov r0, #1
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp]
	add r1, #0x45
	add r2, #0x46
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	mov r3, #8
	bl ov96_021E8228
_0220DA52:
	ldr r1, [r4, #0x40]
	ldr r0, _0220DA9C ; =0xDFFFFFFF
	add sp, #4
	and r0, r1
	str r0, [r4, #0x40]
	add r0, r4, #0
	mov r1, #0x5a
	add r0, #0x44
	strb r1, [r0]
	mov r0, #3
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0220DA6A:
	ldr r3, [r4, #0x40]
	mov r2, #0xff
	add r0, r3, #0
	bic r0, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	sub r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	orr r0, r2
	str r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _0220DA8A
	mov r0, #2
	str r0, [r4, #0xc]
_0220DA8A:
	add r0, r4, #0
	bl ov96_0220D744
	add sp, #4
	pop {r3, r4, pc}
_0220DA94:
	bl GF_AssertFail
_0220DA98:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0220DA9C: .word 0xDFFFFFFF
	thumb_func_end ov96_0220D9A4

	thumb_func_start ov96_0220DAA0
ov96_0220DAA0: ; 0x0220DAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _0220DB38 ; =ov96_0221CEF4
	add r5, r0, #0
	mov r0, #0xc
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	str r2, [sp, #8]
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r7, #1
	str r0, [r2]
	ldr r0, [sp, #4]
	lsl r7, r7, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r6, #0
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
_0220DACE:
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x20]
	ldr r3, [sp, #4]
	bl ov96_021EB0CC
	cmp r0, #0
	beq _0220DB0C
	mov r1, #0
	add r0, sp, #0x18
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, [sp, #0x10]
	sub r0, r0, r1
	bpl _0220DAF6
	neg r0, r0
_0220DAF6:
	str r0, [sp, #0x18]
	ldr r1, [r5, #0x20]
	ldr r0, [sp, #0xc]
	sub r0, r0, r1
	bpl _0220DB02
	neg r0, r0
_0220DB02:
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	bl VEC_Mag
	str r0, [r4]
_0220DB0C:
	add r6, r6, #1
	add r5, #0x48
	add r4, r4, #4
	cmp r6, #3
	blt _0220DACE
	mov r2, #0
	add r1, sp, #0x24
_0220DB1A:
	ldr r0, [r1]
	cmp r0, r7
	bge _0220DB24
	add r7, r0, #0
	str r2, [sp, #0x14]
_0220DB24:
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, #3
	blt _0220DB1A
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0220DB38: .word ov96_0221CEF4
	thumb_func_end ov96_0220DAA0

	thumb_func_start ov96_0220DB3C
ov96_0220DB3C: ; 0x0220DB3C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	beq _0220DB50
	cmp r1, #1
	beq _0220DB7C
	cmp r1, #2
	beq _0220DBA8
	pop {r4, r5, r6, pc}
_0220DB50:
	ldr r0, [r5]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	cmp r4, #0
	bne _0220DB60
	mov r6, #1
	b _0220DB62
_0220DB60:
	mov r6, #0
_0220DB62:
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, r5, r6, pc}
_0220DB7C:
	cmp r4, #0
	bne _0220DB84
	mov r6, #1
	b _0220DB86
_0220DB84:
	mov r6, #0
_0220DB86:
	ldr r0, [r5]
	add r1, r6, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, r5, r6, pc}
_0220DBA8:
	ldr r0, [r5]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov96_0220DB3C

