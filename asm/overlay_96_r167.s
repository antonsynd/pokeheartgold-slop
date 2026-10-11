	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_021EB180
	.public ov96_021EB21C

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
	thumb_func_start ov96_021EB180
ov96_021EB180: ; 0x021EB180
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x56
	lsl r1, r1, #2
	add r6, r0, #0
	bl Heap_Alloc
	add r4, r0, #0
	mov r2, #0x56
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	str r6, [r4]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #8
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0x14
	str r0, [r2]
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	mul r1, r2
	bl Heap_Alloc
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r3, [r4, #0xc]
	mov r2, #0x14
	ldr r1, [r4, r1]
	mov r0, #0
	mul r2, r3
	bl MIi_CpuClear32
	ldr r2, [r4, #8]
	mov r1, #0xc
	ldr r0, [r4]
	mul r1, r2
	bl Heap_Alloc
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r3, [r4, #8]
	mov r2, #0xc
	ldr r1, [r4, r1]
	mov r0, #0
	mul r2, r3
	bl MIi_CpuClear32
	add r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, [r4]
	add r1, #0x18
	bl G2dRenderer_Init
	mov r7, #5
	str r0, [r4, #0x14]
	mov r5, #0
	add r6, r4, #0
	lsl r7, r7, #6
_021EB200:
	add r0, r4, r5
	ldrb r0, [r0, #0x10]
	ldr r2, [r4]
	add r1, r5, #0
	bl Create2DGfxResObjMan
	str r0, [r6, r7]
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _021EB200
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB180

	thumb_func_start ov96_021EB21C
ov96_021EB21C: ; 0x021EB21C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _021EB25E
	mov r7, #0x15
	lsl r7, r7, #4
_021EB22C:
	mov r0, #0x14
	add r6, r4, #0
	mul r6, r0
	ldr r0, [r5, r7]
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EB240
	bl SpriteTransfer_DeleteCharTransferTask
_021EB240:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r0, r0, r6
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EB252
	bl SpriteTransfer_DeletePlttTransferTask
_021EB252:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #0xc]
	cmp r4, r0
	blt _021EB22C
_021EB25E:
	mov r6, #5
	mov r4, #0
	lsl r6, r6, #6
_021EB264:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl Destroy2DGfxResObjMan
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021EB264
	ldr r0, [r5, #0x14]
	bl SpriteList_Delete
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Heap_Free
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl Heap_Free
	add r0, r5, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov96_021EB21C

