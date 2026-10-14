	.include "macros.inc"
	.include "overlay_96.inc"
	.include "global.inc"
	.public ov96_02204134

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
	thumb_func_start ov96_02204134
ov96_02204134: ; 0x02204134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp]
	add r6, r3, #0
	bl _f2d
	ldr r3, _022042E8 ; =0x404C8000
	mov r2, #0
	bl _dsub
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r7, r1, #0
	bl _f2d
	ldr r3, _022042E8 ; =0x404C8000
	mov r2, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022042EC ; =0x3FF00000
	mov r0, #0
	bl _dadd
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022042F0 ; =0x40100000
	mov r0, #0
	bl _ddiv
	str r0, [sp, #0x20]
	str r1, [sp, #0x18]
	add r0, r4, #0
	add r1, r4, #0
	bl _fmul
	add r1, r0, #0
	add r0, r4, #0
	bl _fmul
	bl _f2d
	ldr r3, _022042F4 ; =0x40BDB000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022042F8 ; =0x40260000
	mov r0, #0
	bl _dadd
	str r0, [sp, #0x24]
	str r1, [sp, #0x10]
	add r0, r4, #0
	bl _f2d
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022042FC ; =0x40380000
	mov r0, #0
	bl _dsub
	str r0, [sp, #0x28]
	add r0, r4, #0
	str r1, [sp, #8]
	bl _f2d
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022042FC ; =0x40380000
	mov r0, #0
	bl _dsub
	str r0, [sp, #0x2c]
	add r0, r4, #0
	add r7, r1, #0
	bl _f2d
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _022042FC ; =0x40380000
	mov r0, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl _dmul
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	bl _dmul
	ldr r3, _02204300 ; =0x40B13000
	mov r2, #0
	bl _ddiv
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x10]
	bl _dsub
	ldr r3, _022042EC ; =0x3FF00000
	mov r2, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	bl _dadd
	bl _d2f
	bl _f2d
	ldr r3, _02204304 ; =0x40200000
	mov r2, #0
	bl _dmul
	bl _d2f
	add r4, r0, #0
	bl _ffix
	str r0, [r6]
	add r0, r5, #0
	bl _f2d
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02204308 ; =0x590B2164
	ldr r1, _0220430C ; =0x3FD642C8
	bl _dmul
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _02204310 ; =0x40240000
	mov r0, #0
	bl _dadd
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r7, r1, #0
	bl _f2d
	ldr r3, _02204304 ; =0x40200000
	mov r2, #0
	bl _ddiv
	ldr r3, _02204310 ; =0x40240000
	mov r2, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02204314 ; =0x4A5294A5
	ldr r1, _02204318 ; =0x3FE4A529
	bl _dmul
	add r6, r0, #0
	add r0, r5, #0
	add r4, r1, #0
	bl _f2d
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _0220431C ; =0x40500000
	mov r0, #0
	bl _dsub
	add r2, r0, #0
	add r3, r1, #0
	add r0, r6, #0
	add r1, r4, #0
	bl _dmul
	ldr r3, _0220431C ; =0x40500000
	mov r2, #0
	bl _ddiv
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x30]
	add r1, r7, #0
	bl _dsub
	bl _d2f
	bl _f2d
	ldr r3, _02204304 ; =0x40200000
	mov r2, #0
	bl _dmul
	bl _d2f
	bl _ffix
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022042E8: .word 0x404C8000
_022042EC: .word 0x3FF00000
_022042F0: .word 0x40100000
_022042F4: .word 0x40BDB000
_022042F8: .word 0x40260000
_022042FC: .word 0x40380000
_02204300: .word 0x40B13000
_02204304: .word 0x40200000
_02204308: .word 0x590B2164
_0220430C: .word 0x3FD642C8
_02204310: .word 0x40240000
_02204314: .word 0x4A5294A5
_02204318: .word 0x3FE4A529
_0220431C: .word 0x40500000
	thumb_func_end ov96_02204134

