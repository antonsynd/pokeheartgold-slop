	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonCourseRecord_Exit
	.public PokeathlonCourseRecord_Init
	.public PokeathlonCourseRecord_Main
	.public _021EA5C0
	.public ov99_021E5B54
	.public ov99_021E5B74
	.public ov99_021E5C88
	.public ov99_021E5D2C
	.public ov99_021E5D58
	.public ov99_021E5F74
	.public ov99_021E5FE8
	.public ov99_021E6018
	.public ov99_021E6050
	.public ov99_021E6250
	.public ov99_021E6274
	.public ov99_021E6438
	.public ov99_021E64E0
	.public ov99_021E6530
	.public ov99_021E6638
	.public ov99_021E95A4
	.public ov99_021E96D8

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

	thumb_func_start PokeathlonCourseRecord_Exit
PokeathlonCourseRecord_Exit: ; 0x021E5A04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	ldr r0, [r4]
	bl ov99_021E5B74
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x84
	bl Heap_Destroy
	ldr r0, _021E5A34 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E5A34: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end PokeathlonCourseRecord_Exit

	thumb_func_start PokeathlonCourseRecord_Main
PokeathlonCourseRecord_Main: ; 0x021E5A38
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov99_021E5F74
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #1
	bne _021E5A86
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ov99_021E5FE8
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ov99_021E6050
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	bl ov99_021E6530
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x8c
	str r1, [r0]
_021E5A86:
	ldr r0, [r5]
	cmp r0, #4
	bhi _021E5B36
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5A98: ; jump table
	.short _021E5AA2 - _021E5A98 - 2 ; case 0
	.short _021E5ABE - _021E5A98 - 2 ; case 1
	.short _021E5ACC - _021E5A98 - 2 ; case 2
	.short _021E5B04 - _021E5A98 - 2 ; case 3
	.short _021E5B12 - _021E5A98 - 2 ; case 4
_021E5AA2:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r5]
	b _021E5B40
_021E5ABE:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B40
	mov r0, #2
	str r0, [r5]
	b _021E5B40
_021E5ACC:
	add r0, r4, #0
	bl ov99_021E6638
	cmp r0, #0
	beq _021E5B40
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021E5B40
	ldr r0, _021E5B4C ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #3
	str r0, [r5]
	b _021E5B40
_021E5B04:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B40
	mov r0, #4
	str r0, [r5]
	b _021E5B40
_021E5B12:
	ldr r0, [r4, #0x10]
	mov r1, #0x11
	bl ov98_0221EB84
	add r0, r4, #0
	bl ov99_021E5D2C
	ldr r0, [r4, #0x14]
	add r4, #0x18
	add r1, r4, #0
	mov r2, #0x1a
	bl ov98_0221E684
	bl ov98_0221F0EC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E5B36:
	ldr r0, _021E5B50 ; =_021EA5C0
	cmp r0, #0
	beq _021E5B40
	bl GF_AssertFail
_021E5B40:
	ldr r0, [r4, #0x14]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E5B4C: .word 0x000005DC
_021E5B50: .word _021EA5C0
	thumb_func_end PokeathlonCourseRecord_Main

