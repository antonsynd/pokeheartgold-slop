	.include "asm/macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02216234
	.public ov96_022162F4
	.extern PokeathlonCourse_GetDataCopyArea
	.extern PokeathlonCourse_GetHeapAllocPtr4
	.extern ov96_021E5F24
	.extern ov96_021E8228
	.extern ov96_021E8324
	.extern ov96_021E8A20
	.extern ov96_021E9A78
	.extern ov96_021EB144
	.extern ov96_02216200
	.extern ov96_02217820
	.extern ov96_0221964C
	.extern ov96_0221D6F4
	.extern ov96_0221D720
	.extern ov96_0221D754

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
	thumb_func_start ov96_02216234
ov96_02216234: ; 0x02216234
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl PokeathlonCourse_GetHeapAllocPtr4
	add r4, r0, #0
	add r0, r6, #0
	bl PokeathlonCourse_GetDataCopyArea
	add r7, r0, #0
	bl ov96_021E8A20
	add r7, #0xf0
	add r5, r0, #0
	add r0, r7, #0
	bl ov96_021E8A20
	ldr r0, [r0, #0x20]
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02216282
	ldr r0, _022162E0 ; =0x0000043C
	add r0, r4, r0
	bl ov96_02217820
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov96_021EB144
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov96_0221964C
	ldr r1, _022162E4 ; =ov96_02216200
	add r0, r6, #0
	bl ov96_021E8324
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02216282:
	bl System_GetTouchNew
	cmp r0, #0
	beq _022162A4
	add r0, r6, #0
	bl ov96_021E5F24
	add r1, r0, #0
	mov r0, #1
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl ov96_021E8228
_022162A4:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _022162D4
	ldr r2, [r5]
	mov r0, #0xff
	ldr r1, _022162E8 ; =gSystem + 0x40
	bic r2, r0
	ldrh r0, [r1, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r2, r0
	ldr r0, _022162EC ; =0xFFFF00FF
	str r2, [r5]
	and r2, r0
	ldrh r0, [r1, #0x22]
	add r1, r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x10
	orr r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	orr r0, r1
	b _022162DA
_022162D4:
	ldr r1, [r5]
	ldr r0, _022162F0 ; =0xFFFEFFFF
	and r0, r1
_022162DA:
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022162E0: .word 0x0000043C
_022162E4: .word ov96_02216200
_022162E8: .word gSystem + 0x40
_022162EC: .word 0xFFFF00FF
_022162F0: .word 0xFFFEFFFF
	thumb_func_end ov96_02216234

	thumb_func_start ov96_022162F4
ov96_022162F4: ; 0x022162F4
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _02216380 ; =ov96_0221D720
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02216384 ; =ov96_0221D754
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02216388 ; =ov96_0221D6F4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [r4]
	bl SpriteSystem_Alloc
	str r0, [r4, #8]
	bl SpriteManager_New
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	add r1, sp, #0x14
	add r2, sp, #0
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r2, #0x80
	bl SpriteSystem_InitSprites
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	ldr r0, [r4, #8]
	bl SpriteSystem_GetRenderer
	mov r2, #0x1e
	mov r1, #0
	lsl r2, r2, #0x10
	bl G2dRenderer_SetSubSurfaceCoords
	ldr r0, [r4]
	ldr r1, _0221638C ; =0x000002E7
	mov r2, #1
	bl ov96_021E9A78
	str r0, [r4, #0x18]
	add sp, #0x4c
	pop {r3, r4, pc}
	.balign 4, 0
_02216380: .word ov96_0221D720
_02216384: .word ov96_0221D754
_02216388: .word ov96_0221D6F4
_0221638C: .word 0x000002E7
	thumb_func_end ov96_022162F4

