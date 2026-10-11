	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021E883C
	.public ov96_021E8884

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
	thumb_func_start ov96_021E883C
ov96_021E883C: ; 0x021E883C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x1d
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #4
	add r7, r2, #0
	bl Heap_Alloc
	mov r2, #0x1d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	mov r1, #7
	lsl r1, r1, #6
	str r5, [r4, r1]
	add r0, r1, #4
	str r6, [r4, r0]
	add r1, #8
	str r7, [r4, r1]
	ldr r0, _021E887C ; =ov96_021E8884
	ldr r2, _021E8880 ; =0x00001388
	add r1, r4, #0
	bl SysTask_CreateOnVWaitQueue
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E887C: .word ov96_021E8884
_021E8880: .word 0x00001388
	thumb_func_end ov96_021E883C

	thumb_func_start ov96_021E8884
ov96_021E8884: ; 0x021E8884
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
_021E8890:
	ldr r0, [r6]
	cmp r0, #1
	bne _021E88EA
	ldr r1, [r6, #0x30]
	cmp r1, #0x26
	bgt _021E88BE
	mov r4, #7
	lsl r4, r4, #6
	ldr r4, [r7, r4]
	mov r3, #0x72
	str r4, [sp, #4]
	ldr r4, [r6, #4]
	mov r5, #0xc
	mul r5, r4
	ldr r4, [sp, #4]
	lsl r3, r3, #2
	add r2, r6, #0
	ldr r3, [r7, r3]
	ldr r4, [r4, r5]
	mov r0, #0
	add r2, #8
	blx r4
	b _021E88E0
_021E88BE:
	mov r4, #7
	lsl r4, r4, #6
	ldr r4, [r7, r4]
	mov r3, #0x72
	mov ip, r4
	ldr r4, [r6, #4]
	mov r5, #0xc
	mul r5, r4
	str r5, [sp, #8]
	lsl r3, r3, #2
	ldr r4, [sp, #8]
	mov r5, ip
	ldr r2, [r6, #0x34]
	ldr r3, [r7, r3]
	ldr r4, [r5, r4]
	mov r0, #0
	blx r4
_021E88E0:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x38
	bl memset
_021E88EA:
	ldr r0, [sp]
	add r6, #0x38
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _021E8890
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021E8884

