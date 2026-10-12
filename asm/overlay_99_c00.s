	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonCourseRecord_Init
	.extern ov99_021E5B54
	.extern ov99_021E5C88
	.extern ov99_021E5D58
	.extern ov99_021E5FE8
	.extern ov99_021E6018
	.extern ov99_021E6050
	.extern ov99_021E6250
	.extern ov99_021E6274
	.extern ov99_021E6438
	.extern ov99_021E64E0
	.extern ov99_021E6530
	.extern ov99_021E95A4
	.extern ov99_021E96D8

	.text

	.text
	thumb_func_start PokeathlonCourseRecord_Init
PokeathlonCourseRecord_Init: ; 0x021E5900
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021E59F0 ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	bne _021E591C
	bl GF_AssertFail
_021E591C:
	mov r0, #3
	mov r1, #0x84
	lsl r2, r0, #0x10
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0x94
	mov r2, #0x84
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x94
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x84
	str r0, [r4, #0xc]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x90
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov99_021E5B54
	bl ov98_0221F090
	add r0, r4, #0
	bl ov99_021E5C88
	add r0, r4, #0
	bl ov99_021E5D58
	ldr r0, _021E59F4 ; =0x0000013A
	ldr r3, _021E59F8 ; =ov99_021E96D8
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	mov r2, #0x11
	bl ov98_0221EABC
	add r3, sp, #4
	ldr r5, _021E59FC ; =ov99_021E95A4
	str r0, [r4, #0x10]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	ldr r0, [r4, #0xc]
	mov r2, #0x1a
	bl ov98_0221E5E0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov99_021E6274
	add r0, r4, #0
	bl ov99_021E6438
	add r0, r4, #0
	mov r1, #0
	bl ov99_021E64E0
	add r0, r4, #0
	mov r1, #0
	bl ov99_021E5FE8
	add r0, r4, #0
	mov r1, #0
	bl ov99_021E6050
	add r0, r4, #0
	mov r1, #0
	bl ov99_021E6530
	add r0, r4, #0
	bl ov99_021E6018
	mov r0, #2
	mov r1, #4
	bl SetKeyRepeatTimers
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	ldr r0, _021E5A00 ; =ov99_021E6250
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021E59F0: .word FS_OVERLAY_ID(OVY_98)
_021E59F4: .word 0x0000013A
_021E59F8: .word ov99_021E96D8
_021E59FC: .word ov99_021E95A4
_021E5A00: .word ov99_021E6250
	thumb_func_end PokeathlonCourseRecord_Init

