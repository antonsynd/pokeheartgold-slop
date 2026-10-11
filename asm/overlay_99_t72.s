	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonEventRecord_Exit
	.public PokeathlonEventRecord_Init
	.public PokeathlonEventRecord_Main
	.extern _021EA5E4
	.extern ov99_021E856C
	.extern ov99_021E8590
	.extern ov99_021E860C
	.extern ov99_021E875C
	.extern ov99_021E8788
	.extern ov99_021E8818
	.extern ov99_021E8828
	.extern ov99_021E88D4
	.extern ov99_021E8C04
	.extern ov99_021E8C50
	.extern ov99_021E90F4
	.extern ov99_021E93DC
	.extern ov99_021E9418
	.extern ov99_021EA45C

	.text

	.text
	thumb_func_start PokeathlonEventRecord_Init
PokeathlonEventRecord_Init: ; 0x021E8304
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021E839C ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	bne _021E831E
	bl GF_AssertFail
_021E831E:
	mov r0, #3
	mov r1, #0x84
	lsl r2, r0, #0x10
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0xe4
	mov r2, #0x84
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0xe4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x84
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	bl ov99_021E93DC
	bl ov98_0221F090
	add r0, r4, #0
	bl ov99_021E8590
	add r0, r4, #0
	bl ov99_021E860C
	ldr r0, _021E83A0 ; =0x0000013A
	ldr r3, _021E83A4 ; =ov99_021EA45C
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	mov r2, #0x13
	bl ov98_0221EABC
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov99_021E88D4
	add r0, r4, #0
	bl ov99_021E8788
	add r0, r4, #0
	bl ov99_021E8C04
	add r0, r4, #0
	bl ov99_021E8818
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	ldr r0, _021E83A8 ; =ov99_021E856C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E839C: .word FS_OVERLAY_ID(OVY_98)
_021E83A0: .word 0x0000013A
_021E83A4: .word ov99_021EA45C
_021E83A8: .word ov99_021E856C
	thumb_func_end PokeathlonEventRecord_Init

	thumb_func_start PokeathlonEventRecord_Exit
PokeathlonEventRecord_Exit: ; 0x021E83AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4]
	bl ov99_021E9418
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x18
	mov r2, #0x25
	bl ov98_0221E684
	ldr r0, [r4, #0x10]
	mov r1, #0x13
	bl ov98_0221EB84
	add r0, r4, #0
	bl ov99_021E875C
	bl ov98_0221F0EC
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x84
	bl Heap_Destroy
	ldr r0, _021E83F0 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E83F0: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end PokeathlonEventRecord_Exit

	thumb_func_start PokeathlonEventRecord_Main
PokeathlonEventRecord_Main: ; 0x021E83F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021E84CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8412: ; jump table
	.short _021E841C - _021E8412 - 2 ; case 0
	.short _021E8438 - _021E8412 - 2 ; case 1
	.short _021E8446 - _021E8412 - 2 ; case 2
	.short _021E84B8 - _021E8412 - 2 ; case 3
	.short _021E84C6 - _021E8412 - 2 ; case 4
_021E841C:
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
	b _021E84D6
_021E8438:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E84D6
	mov r0, #2
	str r0, [r5]
	b _021E84D6
_021E8446:
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1]
	cmp r1, #0
	beq _021E8464
	add r1, r4, #0
	add r1, #0xb0
	ldr r2, [r1]
	mov r1, #1
	eor r2, r1
	add r1, r4, #0
	add r1, #0xb0
	str r2, [r1]
	bl ov99_021E8828
_021E8464:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _021E8482
	add r0, r4, #0
	bl ov99_021E8788
	add r0, r4, #0
	bl ov99_021E8C50
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
_021E8482:
	bl ov98_0221EF24
	cmp r0, #0
	bne _021E8494
	add r0, r4, #0
	bl ov99_021E90F4
	cmp r0, #0
	beq _021E84D6
_021E8494:
	ldr r0, _021E84E4 ; =0x000005DC
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
	b _021E84D6
_021E84B8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E84D6
	mov r0, #4
	str r0, [r5]
	b _021E84D6
_021E84C6:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E84CC:
	ldr r0, _021E84E8 ; =_021EA5E4
	cmp r0, #0
	beq _021E84D6
	bl GF_AssertFail
_021E84D6:
	ldr r0, [r4, #0x14]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E84E4: .word 0x000005DC
_021E84E8: .word _021EA5E4
	thumb_func_end PokeathlonEventRecord_Main

