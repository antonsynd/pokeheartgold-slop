	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonMedals_Exit
	.public PokeathlonMedals_Init
	.public PokeathlonMedals_Main
	.public ov99_021E7A54
	.public ov99_021E7A78
	.extern _021EA5D8
	.extern ov99_021E72C0
	.extern ov99_021E7450
	.extern ov99_021E7508
	.extern ov99_021E7598
	.extern ov99_021E7794
	.extern ov99_021E7AB8
	.extern ov99_021E7BC8
	.extern ov99_021E7D30
	.extern ov99_021E7DA4
	.extern ov99_021E7EBC
	.extern ov99_021E7EF0
	.extern ov99_021E8224
	.extern ov99_021E9FA0
	.extern ov99_021E9FDC
	.extern ov99_021EA03C
	.extern ov99_021EA250

	.text

	.text
	thumb_func_start PokeathlonMedals_Init
PokeathlonMedals_Init: ; 0x021E7818
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021E78E0 ; =FS_OVERLAY_ID(OVY_98)
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r4, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	bl GfGfx_DisableEngineBPlanes
	bl GfGfx_DisableEngineAPlanes
	cmp r5, #0
	bne _021E783C
	bl GF_AssertFail
_021E783C:
	mov r0, #3
	mov r1, #0x84
	lsl r2, r0, #0x10
	bl Heap_Create
	mov r1, #0x4d
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x84
	bl OverlayManager_CreateAndGetData
	mov r2, #0x4d
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x84
	str r0, [r4, #0xc]
	str r5, [r4, #0x10]
	bl ov98_0221F090
	ldr r1, [r4, #0xc]
	mov r0, #0xb1
	bl NARC_New
	str r0, [r4, #4]
	ldr r1, [r4, #0xc]
	mov r0, #0x4a
	bl NARC_New
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov99_021E72C0
	add r0, r4, #0
	bl ov99_021E7D30
	add r0, r4, #0
	bl ov99_021E7DA4
	ldr r0, _021E78E4 ; =0x0000013A
	ldr r3, _021E78E8 ; =ov99_021E9FDC
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	mov r2, #0xc
	bl ov98_0221EABC
	mov r1, #1
	lsl r1, r1, #0xa
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov99_021E7EF0
	add r0, r4, #0
	bl ov99_021E7A78
	add r0, r4, #0
	bl ov99_021E7508
	add r0, r4, #0
	bl ov99_021E7450
	add r0, r4, #0
	bl ov99_021E7794
	add r0, r4, #0
	bl ov99_021E8224
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	ldr r0, _021E78EC ; =ov99_021E7A54
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E78E0: .word FS_OVERLAY_ID(OVY_98)
_021E78E4: .word 0x0000013A
_021E78E8: .word ov99_021E9FDC
_021E78EC: .word ov99_021E7A54
	thumb_func_end PokeathlonMedals_Init

	thumb_func_start PokeathlonMedals_Exit
PokeathlonMedals_Exit: ; 0x021E78F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Heap_Free
	add r0, r4, #0
	bl ov99_021E7AB8
	ldr r1, _021E7944 ; =0x00000404
	mov r2, #0x32
	ldr r0, [r4, r1]
	add r1, r1, #4
	add r1, r4, r1
	bl ov98_0221E684
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl ov98_0221EB84
	add r0, r4, #0
	bl ov99_021E7EBC
	bl ov98_0221F0EC
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x84
	bl Heap_Destroy
	ldr r0, _021E7948 ; =FS_OVERLAY_ID(OVY_98)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7944: .word 0x00000404
_021E7948: .word FS_OVERLAY_ID(OVY_98)
	thumb_func_end PokeathlonMedals_Exit

	thumb_func_start PokeathlonMedals_Main
PokeathlonMedals_Main: ; 0x021E794C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021E7A28
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E796A: ; jump table
	.short _021E7974 - _021E796A - 2 ; case 0
	.short _021E7990 - _021E796A - 2 ; case 1
	.short _021E799E - _021E796A - 2 ; case 2
	.short _021E7A14 - _021E796A - 2 ; case 3
	.short _021E7A22 - _021E796A - 2 ; case 4
_021E7974:
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
	b _021E7A32
_021E7990:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E7A32
	mov r0, #2
	str r0, [r5]
	b _021E7A32
_021E799E:
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	lsr r1, r1, #0x1f
	beq _021E79BA
	bl ov99_021E7794
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021E7A40 ; =0xDFFFFFFF
	and r0, r2
	str r0, [r4, r1]
_021E79BA:
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _021E79DE
	add r0, r4, #0
	bl ov99_021E7598
	cmp r0, #0
	beq _021E7A32
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021E7A44 ; =0xEFFFFFFF
	and r0, r2
	str r0, [r4, r1]
	b _021E7A32
_021E79DE:
	add r0, r4, #0
	bl ov99_021E7BC8
	cmp r0, #0
	bne _021E79F0
	bl ov98_0221EF24
	cmp r0, #0
	beq _021E7A32
_021E79F0:
	ldr r0, _021E7A48 ; =0x000005DC
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
	b _021E7A32
_021E7A14:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E7A32
	mov r0, #4
	str r0, [r5]
	b _021E7A32
_021E7A22:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E7A28:
	ldr r0, _021E7A4C ; =_021EA5D8
	cmp r0, #0
	beq _021E7A32
	bl GF_AssertFail
_021E7A32:
	ldr r0, _021E7A50 ; =0x00000404
	ldr r0, [r4, r0]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E7A40: .word 0xDFFFFFFF
_021E7A44: .word 0xEFFFFFFF
_021E7A48: .word 0x000005DC
_021E7A4C: .word _021EA5D8
_021E7A50: .word 0x00000404
	thumb_func_end PokeathlonMedals_Main

	thumb_func_start ov99_021E7A54
ov99_021E7A54: ; 0x021E7A54
	push {r4, lr}
	add r4, r0, #0
	bl SpriteSystem_TransferOam
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E7A70 ; =0x027E0000
	ldr r1, _021E7A74 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E7A70: .word 0x027E0000
_021E7A74: .word 0x00003FF8
	thumb_func_end ov99_021E7A54

	thumb_func_start ov99_021E7A78
ov99_021E7A78: ; 0x021E7A78
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E7AAC ; =ov99_021EA250
	lsl r0, r0, #5
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r2, _021E7AB0 ; =ov99_021E9FA0
	str r0, [sp, #8]
	ldr r0, _021E7AB4 ; =ov99_021EA03C
	add r3, r4, #0
	bl GridInputHandler_Create
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E7AAC: .word ov99_021EA250
_021E7AB0: .word ov99_021E9FA0
_021E7AB4: .word ov99_021EA03C
	thumb_func_end ov99_021E7A78

