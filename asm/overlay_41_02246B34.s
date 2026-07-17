	.include "asm/macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_02246B34
ov41_02246B34: ; 0x02246B34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	bl SpriteList_Delete
	mov r4, #0
_02246B40:
	ldr r0, [r5, #0x48]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02246B40
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	bl OamManager_Free
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02246B34

	thumb_func_start ov41_02246B5C
ov41_02246B5C: ; 0x02246B5C
	ldr r3, _02246B64 ; =SpriteList_RenderAndAnimateSprites
	ldr r0, [r0, #0x44]
	bx r3
	nop
_02246B64: .word SpriteList_RenderAndAnimateSprites
	thumb_func_end ov41_02246B5C

	thumb_func_start ov41_02246B68
ov41_02246B68: ; 0x02246B68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r4, #0
_02246B74:
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r4, #1
	mov r2, #0
	mov r3, #0xe
	bl GfGfxLoader_LoadFromOpenNarc
	str r0, [sp, #4]
	cmp r0, #0
	bne _02246B92
	bl GF_AssertFail
_02246B92:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	bl ov41_022463DC
	ldr r1, [r7]
	add r4, r4, #1
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r1, [r6]
	ldr r0, [r7]
	str r1, [r0, r5]
	add r5, #8
	cmp r4, #0x64
	blt _02246B74
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	mov r3, #0xe
	bl GfGfxLoader_LoadFromOpenNarc
	add r4, r0, #0
	ldr r0, [r7, #0x14]
	add r1, r4, #0
	mov r2, #0
	bl GF2dGfxRawResMan_AllocObj
	ldr r1, [r7, #8]
	add r0, r4, #0
	add r1, r1, #4
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, [r6]
	ldr r0, [r7, #8]
	str r1, [r0]
	ldr r0, [r7, #8]
	mov r1, #3
	str r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02246B68

	thumb_func_start ov41_02246BEC
ov41_02246BEC: ; 0x02246BEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x87
	add r4, r1, #0
	mov r6, #0
	str r0, [sp, #8]
_02246BFA:
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0xce
	mov r2, #0
	mov r3, #0xe
	bl GfGfxLoader_LoadFromOpenNarc
	add r2, r6, #0
	add r1, r0, #0
	add r2, #0x64
	add r0, r5, #0
	lsl r7, r2, #3
	bl ov41_022463DC
	ldr r1, [r4]
	mov r2, #0
	add r1, r1, r7
	str r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, [r4]
	mov r3, #0xe
	str r1, [r0, r7]
	add r0, r6, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #8]
	bl GfGfxLoader_LoadFromOpenNarc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	bl GF2dGfxRawResMan_AllocObj
	ldr r1, [sp, #4]
	mov r0, #0xc
	add r7, r1, #0
	mul r7, r0
	ldr r1, [r4, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, r7
	add r1, r1, #4
	bl NNS_G2dGetUnpackedPaletteData
	ldr r0, [r4, #8]
	add r0, r0, r7
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02246C70
	bl GF_AssertFail
_02246C70:
	ldr r1, [r5]
	ldr r0, [r4, #8]
	add r6, r6, #1
	str r1, [r0, r7]
	ldr r0, [r4, #8]
	add r1, r0, r7
	mov r0, #1
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r6, #0x12
	blt _02246BFA
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02246BEC

	thumb_func_start ov41_02246C90
ov41_02246C90: ; 0x02246C90
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0
	mov r0, #6
	add r3, r1, #0
	str r2, [sp]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xeb
	bl GfGfxLoader_LoadFromOpenNarc
	str r0, [r4, #0x30]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246C90

	thumb_func_start ov41_02246CB0
ov41_02246CB0: ; 0x02246CB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ov41_02246CB0

	thumb_func_start ov41_02246CC0
ov41_02246CC0: ; 0x02246CC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl PokepicManager_Create
	str r0, [r5, #0x20]
	ldr r3, _02246D1C ; =NNS_GfdDefaultFuncAllocTexVram
	mov r1, #0
	ldr r3, [r3]
	add r0, r4, #0
	add r2, r1, #0
	blx r3
	str r0, [r5, #0x24]
	ldr r3, _02246D20 ; =NNS_GfdDefaultFuncAllocPlttVram
	add r0, r6, #0
	ldr r3, [r3]
	mov r1, #0
	mov r2, #1
	blx r3
	str r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r2, _02246D24 ; =0x7FFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl PokepicManager_SetCharBaseAddrAndSize
	ldr r3, [r5, #0x28]
	ldr r2, _02246D28 ; =0xFFFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl PokepicManager_SetPlttBaseAddrAndSize
	mov r0, #1
	str r0, [r5, #0x2c]
	pop {r4, r5, r6, pc}
	nop
_02246D1C: .word NNS_GfdDefaultFuncAllocTexVram
_02246D20: .word NNS_GfdDefaultFuncAllocPlttVram
_02246D24: .word 0x7FFF0000
_02246D28: .word 0xFFFF0000
	thumb_func_end ov41_02246CC0

	thumb_func_start ov41_02246D2C
ov41_02246D2C: ; 0x02246D2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl PokepicManager_Delete
	ldr r1, _02246D4C ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [r4, #0x24]
	ldr r1, [r1]
	blx r1
	ldr r1, _02246D50 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r0, [r4, #0x28]
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.balign 4, 0
_02246D4C: .word NNS_GfdDefaultFuncFreeTexVram
_02246D50: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov41_02246D2C

	thumb_func_start ov41_02246D54
ov41_02246D54: ; 0x02246D54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #3
	str r0, [sp]
	add r7, r3, #0
	ldr r1, [sp]
	add r0, r7, #0
	add r6, r2, #0
	bl Heap_Alloc
	ldr r2, [sp]
	mov r1, #0
	str r0, [r5]
	bl memset
	add r0, r4, #0
	add r1, r7, #0
	bl GF2dGfxRawResMan_Create
	str r0, [r5, #0x10]
	str r4, [r5, #4]
	mov r0, #0xc
	add r4, r6, #0
	mul r4, r0
	add r0, r7, #0
	add r1, r4, #0
	bl Heap_Alloc
	mov r1, #0
	add r2, r4, #0
	str r0, [r5, #8]
	bl memset
	add r0, r6, #0
	add r1, r7, #0
	bl GF2dGfxRawResMan_Create
	str r0, [r5, #0x14]
	str r6, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02246D54

	thumb_func_start ov41_02246DA8
ov41_02246DA8: ; 0x02246DA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02246DBA
	bl GF2dGfxRawResObj_Destroy
	mov r0, #0
	str r0, [r4, #0x10]
_02246DBA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02246DC8
	bl GF2dGfxRawResObj_Destroy
	mov r0, #0
	str r0, [r4, #0x14]
_02246DC8:
	ldr r0, [r4]
	bl Heap_Free
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #8]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246DA8

	thumb_func_start ov41_02246DE0
ov41_02246DE0: ; 0x02246DE0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x6f
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl OverlayManager_CreateAndGetData
	mov r2, #0x6f
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	ldr r0, _02246EF0 ; =ov41_02247478
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r5, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, _02246EF4 ; =0x000006DC
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02246E3E
	bl MenuInputStateMgr_GetState
	ldr r1, _02246EF8 ; =0x000006EC
	b _02246E42
_02246E3E:
	mov r0, #0
	add r1, #0x10
_02246E42:
	str r0, [r4, r1]
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r5, #8]
	add r1, r4, r1
	bl ov41_02248E84
	add r0, r4, #0
	bl ov41_02247240
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov41_022499B4
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov41_02245EA0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #0
	bl ov41_02247288
	add r0, r4, #0
	bl ov41_02247334
	add r0, r4, #0
	mov r1, #0
	bl ov41_02247480
	add r0, r4, #0
	bl ov41_022474D4
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov41_0224765C
	ldr r0, _02246EFC ; =0x00000568
	mov r2, #0xfd
	add r1, r4, r0
	str r1, [sp]
	mov r1, #1
	sub r0, #0xd0
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r4, r2
	sub r2, #0x8c
	add r0, r4, r0
	add r2, r4, r2
	add r3, r4, #0
	bl ov41_02248F18
	mov r0, #0xd
	bl YesNoPrompt_Create
	ldr r1, _02246F00 ; =0x000006B8
	str r0, [r4, r1]
	mov r0, #0xd
	mov r1, #1
	bl AllocWindows
	ldr r2, _02246F04 ; =0x000006BC
	mov r1, #0
	str r0, [r4, r2]
	sub r2, #0xc
	str r1, [r4, r2]
	mov r0, #0x35
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02246EF0: .word ov41_02247478
_02246EF4: .word 0x000006DC
_02246EF8: .word 0x000006EC
_02246EFC: .word 0x00000568
_02246F00: .word 0x000006B8
_02246F04: .word 0x000006BC
	thumb_func_end ov41_02246DE0

	thumb_func_start ov41_02246F08
ov41_02246F08: ; 0x02246F08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r7, #0
	mov r6, #0
	bl OverlayManager_GetArgs
	ldr r1, [r5]
	cmp r1, #0xc
	bhi _02246FD6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246F30: ; jump table
	.short _02246F4A - _02246F30 - 2 ; case 0
	.short _02246F4A - _02246F30 - 2 ; case 1
	.short _02246F66 - _02246F30 - 2 ; case 2
	.short _02246F76 - _02246F30 - 2 ; case 3
	.short _02246FA4 - _02246F30 - 2 ; case 4
	.short _02246FC6 - _02246F30 - 2 ; case 5
	.short _02246FF4 - _02246F30 - 2 ; case 6
	.short _0224702A - _02246F30 - 2 ; case 7
	.short _02247050 - _02246F30 - 2 ; case 8
	.short _02247094 - _02246F30 - 2 ; case 9
	.short _022470D0 - _02246F30 - 2 ; case 10
	.short _022470EE - _02246F30 - 2 ; case 11
	.short _0224710C - _02246F30 - 2 ; case 12
_02246F4A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #5
	add r2, r1, #0
	add r3, r6, #0
	bl BeginNormalPaletteFade
	mov r0, #2
	str r0, [r5]
	b _0224712A
_02246F66:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02246FD6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246F76:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _02246F9E
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _02247138 ; =0x00000568
	mov r1, #0x1b
	add r0, r4, r0
	mov r2, #0xd7
	mov r3, #0x2f
	bl ov41_0224AC40
	mov r1, #0x6e
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246F9E:
	mov r0, #6
	str r0, [r5]
	b _0224712A
_02246FA4:
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02246FD6
	ldr r0, _02247138 ; =0x00000568
	add r0, r4, r0
	bl ov41_0224AC80
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246FC6:
	ldr r0, _0224713C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	and r1, r0
	ldr r0, _02247140 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	orr r0, r1
	bne _02246FD8
_02246FD6:
	b _0224712A
_02246FD8:
	ldr r0, _02247138 ; =0x00000568
	mov r1, #0x1b
	add r0, r4, r0
	mov r2, #0xd7
	mov r3, #0x30
	bl ov41_0224AC08
	add r0, r6, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246FF4:
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #3
	bne _0224700C
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov41_022476B8
	mov r0, #7
	str r0, [r5]
_0224700C:
	ldr r0, _02247144 ; =0x00000498
	add r0, r4, r0
	bl ov41_02248E44
	add r0, r4, #0
	bl ov41_02247D44
	ldr r0, _02247138 ; =0x00000568
	add r0, r4, r0
	bl ov41_0224ABF0
	add r0, r4, #0
	bl ov41_02247578
	b _0224712A
_0224702A:
	ldr r0, _02247148 ; =0x000006B4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224712A
	add r1, r6, #0
	str r1, [r4, r0]
	mov r1, #8
	str r1, [r5]
	mov r1, #4
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0224714C ; =0x0000047C
	mov r2, #0xe
	add r0, r4, r1
	sub r1, #0x88
	add r1, r4, r1
	bl ov41_0224B4E8
	b _0224712A
_02247050:
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #9
	bne _0224706A
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov41_02247828
	mov r0, #0xa
	str r0, [r5]
	b _0224712A
_0224706A:
	cmp r0, #8
	bne _0224707E
	mov r0, #9
	str r0, [r5]
	mov r0, #5
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov41_02247D64
	b _0224712A
_0224707E:
	add r0, r4, #0
	bl ov41_02247B7C
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0224714C ; =0x0000047C
	add r0, r4, r0
	bl ov41_0224B50C
	b _0224712A
_02247094:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #6
	bne _022470AA
	mov r1, #1
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5]
	b _0224712A
_022470AA:
	cmp r1, #7
	bne _022470BA
	add r1, r6, #0
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5]
	b _0224712A
_022470BA:
	add r0, r4, #0
	bl ov41_02247DF8
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0224714C ; =0x0000047C
	add r0, r4, r0
	bl ov41_0224B50C
	b _0224712A
_022470D0:
	ldr r0, _02247148 ; =0x000006B4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224712A
	add r2, r6, #0
	str r2, [r4, r0]
	mov r1, #6
	str r1, [r5]
	sub r0, r0, #4
	str r2, [r4, r0]
	ldr r0, _0224714C ; =0x0000047C
	add r0, r4, r0
	bl ov41_0224B518
	b _0224712A
_022470EE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	add r1, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_0224710C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224712A
	add r0, r6, #0
	str r0, [r5]
	mov r0, #0x6b
	mov r1, #0xa
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0224714C ; =0x0000047C
	mov r6, #1
	add r0, r4, r0
	bl ov41_0224B518
_0224712A:
	add r0, r4, #0
	bl ov41_0224726C
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02247138: .word 0x00000568
_0224713C: .word gSystem
_02247140: .word gSystem + 0x40
_02247144: .word 0x00000498
_02247148: .word 0x000006B4
_0224714C: .word 0x0000047C
	thumb_func_end ov41_02246F08

	thumb_func_start ov41_02247150
ov41_02247150: ; 0x02247150
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r6, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	mov r0, #0x1b
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02247182
	ldr r0, [r5, #0x10]
	mov r1, #8 ; SCORE_EVENT_POKEMON_DRESSED
	bl GameStats_AddScore
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x14]
	add r1, r4, r1
	bl ov41_022479A8
_02247182:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0224719C
	mov r1, #0x1b
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _02247198
	mov r1, #1
	str r1, [r0]
	b _0224719C
_02247198:
	mov r1, #0
	str r1, [r0]
_0224719C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _022471AA
	ldr r1, _02247230 ; =0x000006EC
	ldr r1, [r4, r1]
	bl MenuInputStateMgr_SetState
_022471AA:
	ldr r0, _02247234 ; =0x000006B8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Destroy
	ldr r0, _02247238 ; =0x000006BC
	mov r1, #1
	ldr r0, [r4, r0]
	bl WindowArray_Delete
	add r0, r4, #0
	bl ov41_022476A8
	ldr r0, _0224723C ; =0x00000498
	add r0, r4, r0
	bl ov41_02248F6C
	add r0, r4, #0
	bl ov41_02247568
	add r0, r4, #0
	bl ov41_022474C4
	add r0, r4, #0
	bl ov41_02247310
	add r0, r4, #0
	bl ov41_022473F0
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov41_02245ECC
	mov r0, #0xd9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov41_022499DC
	add r0, r4, #0
	bl ov41_02247274
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl sub_02021238
	cmp r0, #1
	beq _0224721A
	bl GF_AssertFail
_0224721A:
	add r0, r6, #0
	bl OverlayManager_FreeData
	mov r0, #0xd
	bl Heap_Destroy
	mov r0, #0xe
	bl Heap_Destroy
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02247230: .word 0x000006EC
_02247234: .word 0x000006B8
_02247238: .word 0x000006BC
_0224723C: .word 0x00000498
	thumb_func_end ov41_02247150

	thumb_func_start ov41_02247240
ov41_02247240: ; 0x02247240
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	bl ov41_02246130
	add r0, r4, #0
	bl ov41_02246170
	add r0, r4, #0
	add r1, sp, #0
	bl ov41_022463B0
	add r0, r4, #0
	add r1, sp, #0
	bl ov41_02246250
	add r0, sp, #0
	bl ov41_022463D4
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02247240

	thumb_func_start ov41_0224726C
ov41_0224726C: ; 0x0224726C
	ldr r3, _02247270 ; =ov41_0224621C
	bx r3
	.balign 4, 0
_02247270: .word ov41_0224621C
	thumb_func_end ov41_0224726C

	thumb_func_start ov41_02247274
ov41_02247274: ; 0x02247274
	push {r4, lr}
	add r4, r0, #0
	bl ov41_0224626C
	add r0, r4, #0
	bl ov41_022461D0
	bl ov41_02246150
	pop {r4, pc}
	thumb_func_end ov41_02247274

	thumb_func_start ov41_02247288
ov41_02247288: ; 0x02247288
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	mov r1, #0xd9
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x30]
	add r6, r3, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x40]
	str r2, [sp, #0x30]
	str r0, [sp, #0x24]
	ldr r0, [r5, r1]
	str r0, [sp, #0x28]
	add r0, r1, #0
	sub r0, #8
	add r0, r5, r0
	add r1, #0x90
	str r0, [sp, #0x2c]
	add r0, r5, r1
	add r1, sp, #0x10
	bl ov41_02247F3C
	cmp r6, #0
	add r2, sp, #0
	bne _022472DC
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0xe
	bl ov41_02247FE0
	b _022472EA
_022472DC:
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0xe
	bl ov41_02247FFC
_022472EA:
	add r0, r5, #0
	add r1, sp, #0
	bl ov41_022495C8
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov41_02248158
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #0xe
	bl ov41_0224825C
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02247288

	thumb_func_start ov41_02247310
ov41_02247310: ; 0x02247310
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_022482A8
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_022480E0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_02247F90
	pop {r4, pc}
	thumb_func_end ov41_02247310

	thumb_func_start ov41_02247334
ov41_02247334: ; 0x02247334
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x10]
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x28]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	add r1, r0, #0
	sub r1, #8
	add r1, r5, r1
	str r1, [sp, #0x18]
	mov r1, #0xe
	str r1, [sp, #0x1c]
	mov r1, #2
	str r1, [sp, #0x20]
	mov r1, #1
	add r0, r0, #4
	str r1, [sp, #0x24]
	add r0, r5, r0
	add r1, sp, #0
	bl ov41_02248488
	mov r0, #0xda
	lsl r0, r0, #2
	mov r1, #0
	add r0, r5, r0
	add r2, r1, #0
	bl ov41_022487F8
	mov r6, #0
_0224738C:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov41_02248ED4
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _022473B4
_022473A0:
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	add r2, r6, #0
	bl ov41_022485DC
	add r4, r4, #1
	cmp r4, r7
	blt _022473A0
_022473B4:
	add r6, r6, #1
	cmp r6, #0x64
	blt _0224738C
	mov r7, #0xda
	mov r6, #0x61
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #2
_022473C4:
	add r0, r5, r6
	add r1, r4, #0
	bl ov41_02248EE8
	add r2, r0, #0
	cmp r2, #0x12
	bge _022473DA
	add r0, r5, r7
	mov r1, #1
	bl ov41_022485DC
_022473DA:
	add r4, r4, #1
	cmp r4, #0x12
	blt _022473C4
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov41_02248724
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02247334

	thumb_func_start ov41_022473F0
ov41_022473F0: ; 0x022473F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_02248940
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_022486F8
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_022484C0
	pop {r4, pc}
	thumb_func_end ov41_022473F0

	thumb_func_start ov41_02247414
ov41_02247414: ; 0x02247414
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _02247474 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r2
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mov r1, #3
	bic r3, r2
	add r2, r3, #0
	orr r2, r1
	strh r2, [r0, #6]
	add r3, r1, #0
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	sub r3, #0x13
	bl BgSetPosTextAndCommit
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov41_0224888C
	mov r1, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #2
	add r3, r1, #0
	str r1, [sp]
	bl ov41_022488D8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02247474: .word 0x04000008
	thumb_func_end ov41_02247414

	thumb_func_start ov41_02247478
ov41_02247478: ; 0x02247478
	ldr r3, _0224747C ; =ov41_02246494
	bx r3
	.balign 4, 0
_0224747C: .word ov41_02246494
	thumb_func_end ov41_02247478

	thumb_func_start ov41_02247480
ov41_02247480: ; 0x02247480
	push {r3, lr}
	sub sp, #0x30
	ldr r2, [r0, #0x40]
	str r2, [sp]
	mov r2, #0x1a
	str r2, [sp, #4]
	lsl r2, r1, #1
	add r1, r2, #0
	add r1, #0x79
	str r1, [sp, #8]
	mov r1, #0x85
	str r1, [sp, #0xc]
	mov r1, #1
	add r2, #0x7a
	str r2, [sp, #0x10]
	mov r2, #0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #2
	str r1, [sp, #0x24]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	ldr r1, _022474C0 ; =0x000004B4
	str r2, [sp, #0x14]
	add r0, r0, r1
	add r1, sp, #0
	str r2, [sp, #0x18]
	str r2, [sp, #0x28]
	bl ov41_02249C7C
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
_022474C0: .word 0x000004B4
	thumb_func_end ov41_02247480

	thumb_func_start ov41_022474C4
ov41_022474C4: ; 0x022474C4
	ldr r1, _022474CC ; =0x000004B4
	ldr r3, _022474D0 ; =ov41_02249CC4
	add r0, r0, r1
	bx r3
	.balign 4, 0
_022474CC: .word 0x000004B4
_022474D0: .word ov41_02249CC4
	thumb_func_end ov41_022474C4

	thumb_func_start ov41_022474D4
ov41_022474D4: ; 0x022474D4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4e
	ldr r2, _02247550 ; =0x000006EC
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	add r2, r4, r2
	bl ov41_0224A27C
	mov r0, #0x4e
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _02247554 ; =ov41_022475B4
	add r0, r4, r0
	add r3, r4, #0
	str r1, [sp]
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02247558 ; =ov41_022475D4
	add r0, r4, r0
	mov r1, #1
	add r3, r4, #0
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _0224755C ; =ov41_022475F4
	add r0, r4, r0
	mov r1, #2
	add r3, r4, #0
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02247560 ; =ov41_02247628
	add r0, r4, r0
	mov r1, #3
	add r3, r4, #0
	bl ov41_0224A5D4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02247564 ; =ov41_02247598
	add r0, r4, r0
	mov r1, #4
	add r3, r4, #0
	bl ov41_0224A5D4
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02247550: .word 0x000006EC
_02247554: .word ov41_022475B4
_02247558: .word ov41_022475D4
_0224755C: .word ov41_022475F4
_02247560: .word ov41_02247628
_02247564: .word ov41_02247598
	thumb_func_end ov41_022474D4

	thumb_func_start ov41_02247568
ov41_02247568: ; 0x02247568
	add r1, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r3, _02247574 ; =ov41_0224A3E4
	add r0, r1, r0
	bx r3
	.balign 4, 0
_02247574: .word ov41_0224A3E4
	thumb_func_end ov41_02247568

	thumb_func_start ov41_02247578
ov41_02247578: ; 0x02247578
	mov r1, #0x4e
	lsl r1, r1, #4
	ldr r3, _02247584 ; =ov41_0224A54C
	add r0, r0, r1
	bx r3
	nop
_02247584: .word ov41_0224A54C
	thumb_func_end ov41_02247578

	thumb_func_start ov41_02247588
ov41_02247588: ; 0x02247588
	mov r1, #0x4e
	lsl r1, r1, #4
	ldr r3, _02247594 ; =ov41_0224A580
	add r0, r0, r1
	bx r3
	nop
_02247594: .word ov41_0224A580
	thumb_func_end ov41_02247588

	thumb_func_start ov41_02247598
ov41_02247598: ; 0x02247598
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_02248998
	cmp r0, #0
	beq _022475B2
	mov r0, #0x6b
	mov r1, #3
	lsl r0, r0, #4
	str r1, [r4, r0]
_022475B2:
	pop {r4, pc}
	thumb_func_end ov41_02247598

	thumb_func_start ov41_022475B4
ov41_022475B4: ; 0x022475B4
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_0224894C
	add r1, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #0
	bl ov41_02248790
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022475B4

	thumb_func_start ov41_022475D4
ov41_022475D4: ; 0x022475D4
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_0224894C
	add r1, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #1
	bl ov41_02248790
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022475D4

	thumb_func_start ov41_022475F4
ov41_022475F4: ; 0x022475F4
	push {r4, lr}
	mov r0, #0x6b
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02247624
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov41_0224895C
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov41_022487F8
	mov r0, #0x6b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_02247624:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022475F4

	thumb_func_start ov41_02247628
ov41_02247628: ; 0x02247628
	push {r4, lr}
	mov r0, #0x6b
	add r4, r1, #0
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02247658
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov41_0224895C
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov41_022487F8
	mov r0, #0x6b
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_02247658:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02247628

	thumb_func_start ov41_0224765C
ov41_0224765C: ; 0x0224765C
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r2, sp, #0
	mov r0, #0
	add r3, r1, #0
	add r5, r2, #0
	add r1, r0, #0
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r4, #0x40]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x44]
	mov r2, #0xf
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x48
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0x10]
	mov r0, #6
	str r3, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [sp, #0x24]
	ldr r0, _022476A4 ; =0x00000568
	add r0, r4, r0
	bl ov41_0224AA08
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_022476A4: .word 0x00000568
	thumb_func_end ov41_0224765C

	thumb_func_start ov41_022476A8
ov41_022476A8: ; 0x022476A8
	ldr r1, _022476B0 ; =0x00000568
	ldr r3, _022476B4 ; =ov41_0224AB40
	add r0, r0, r1
	bx r3
	.balign 4, 0
_022476B0: .word 0x00000568
_022476B4: .word ov41_0224AB40
	thumb_func_end ov41_022476A8

	thumb_func_start ov41_022476B8
ov41_022476B8: ; 0x022476B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _022476DC ; =ov41_022476E0
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	str r5, [r0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_022476DC: .word ov41_022476E0
	thumb_func_end ov41_022476B8

	thumb_func_start ov41_022476E0
ov41_022476E0: ; 0x022476E0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _022476EE
	b _02247822
_022476EE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022476FA: ; jump table
	.short _0224770E - _022476FA - 2 ; case 0
	.short _02247730 - _022476FA - 2 ; case 1
	.short _0224774A - _022476FA - 2 ; case 2
	.short _02247766 - _022476FA - 2 ; case 3
	.short _0224777A - _022476FA - 2 ; case 4
	.short _022477A2 - _022476FA - 2 ; case 5
	.short _022477C2 - _022476FA - 2 ; case 6
	.short _022477E8 - _022476FA - 2 ; case 7
	.short _02247804 - _022476FA - 2 ; case 8
	.short _02247818 - _022476FA - 2 ; case 9
_0224770E:
	mov r0, #0xda
	ldr r1, [r4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #3
	mov r2, #0
	bl ov41_02248750
	cmp r0, #0
	bne _02247726
	bl GF_AssertFail
_02247726:
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247730:
	mov r0, #0xda
	ldr r1, [r4]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov41_02248998
	cmp r0, #0
	beq _02247822
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224774A:
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0xa
	bl StartBrightnessTransition
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247766:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _02247822
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224777A:
	mov r0, #0x4e
	ldr r1, [r4]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #8
	bl ov41_0224A5A4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02247822
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_022477A2:
	mov r1, #7
	add r0, r4, #0
	mvn r1, r1
	mov r2, #5
	mov r3, #8
	bl ov41_02247A48
	cmp r0, #0
	beq _02247822
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_022477C2:
	ldr r0, [r4]
	mov r1, #1
	bl ov41_02247480
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #3
	mov r3, #0
	bl ScheduleSetBgPosText
	ldr r0, [r4]
	bl ov41_02247AB4
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_022477E8:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0xa
	bl StartBrightnessTransition
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247804:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _02247822
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247818:
	ldr r1, [r4, #4]
	mov r2, #1
	str r2, [r1]
	bl DestroySysTaskAndEnvironment
_02247822:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022476E0

