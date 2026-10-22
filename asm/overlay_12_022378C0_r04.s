#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_0223843C
	.public ov12_022387AC
	.extern ov12_02237ED0
	.extern ov12_022396E8
	.extern ov12_02239730
	.extern ov12_0226BFE8
	.extern ov12_0226C0A8
	.extern ov12_0226C174

	.text

	.text
	thumb_func_start ov12_0223843C
ov12_0223843C: ; 0x0223843C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	ldr r3, _02238778 ; =0x0000244C
	mov r2, #0x67
	ldr r1, [r4, r3]
	add r7, r0, #0
	lsl r2, r2, #2
	str r1, [r7, r2]
	add r1, r3, #0
	sub r1, #0x40
	ldr r1, [r4, r1]
	sub r2, #0x10
	str r1, [r7, r2]
	sub r3, #0x40
	ldr r2, [r4, r3]
	mov r1, #0x10
	tst r1, r2
	bne _02238470
	bl sub_020302A4
_02238470:
	ldr r0, _0223877C ; =0x00002445
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02238480
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237ED0
_02238480:
	ldr r1, [r7]
	ldr r0, _02238780 ; =0x00000AA4
	tst r0, r1
	beq _0223848C
	mov r5, #0
	b _022384A0
_0223848C:
	ldr r0, _02238784 ; =0x00002420
	ldrb r0, [r4, r0]
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0223849E
	ldr r5, _02238788 ; =0x00007FFF
	b _022384A0
_0223849E:
	mov r5, #0
_022384A0:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200FBF4
	mov r0, #1
	add r1, r5, #0
	bl sub_0200FBF4
	add r0, r4, #0
	bl BattleSystem_TryChangeForm
	ldr r0, _02238784 ; =0x00002420
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _022384CE
	ldr r0, [r4, #0x6c]
	mov r1, #0
	bl Party_GetMonByIndex
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223B870
_022384CE:
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
	add r5, r4, #0
_022384D6:
	ldr r0, [r5, #0x68]
	ldr r1, [r6, #4]
	bl Party_Copy
	ldr r0, [r5, #0x68]
	bl Heap_Free
	add r1, r6, #0
	add r1, #0xf8
	ldr r0, [r5, #0x48]
	ldr r1, [r1]
	bl PlayerProfile_Copy
	ldr r0, [r5, #0x48]
	bl Heap_Free
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp]
	cmp r0, #4
	blt _022384D6
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020164C4
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [r4, #0x58]
	ldr r1, [r7, r1]
	bl Save_Bag_Copy
	ldr r0, [r4, #0x58]
	bl Heap_Free
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r4, #0x60]
	ldr r1, [r7, r1]
	bl Pokedex_Copy
	ldr r0, [r4, #0x60]
	bl Heap_Free
	mov r0, #0x45
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r1, r0, #0
	ldr r2, [r4, #0x5c]
	sub r1, #8
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #0xac
	ldr r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xa4
	str r2, [r7, r1]
	add r1, r4, #0
	add r1, #0x98
	ldr r2, [r1]
	add r1, r0, #0
	add r1, #0x14
	str r2, [r7, r1]
	add r1, r4, #0
	add r1, #0x9c
	ldr r2, [r1]
	add r1, r0, #0
	add r1, #0x20
	str r2, [r7, r1]
	add r1, r0, #0
	ldr r2, _0223878C ; =0x00002414
	add r1, #0x7c
	ldr r3, [r4, r2]
	add r0, #0x5c
	str r3, [r7, r1]
	add r1, r2, #0
	add r1, #0xc
	ldrb r3, [r4, r1]
	mov r1, #0x3f
	add r2, #0x28
	and r1, r3
	str r1, [r7, #0x14]
	ldr r1, [r4, r2]
	mov r2, #4
	str r1, [r7, r0]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r3, #0
	bl ov12_022581D4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov12_022581D4
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	mov r3, #0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #6
	bl ov12_022581D4
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #6
	mov r3, #2
	bl ov12_022581D4
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	add r0, r5, r0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl ov12_022581D4
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #7
	mov r3, #2
	bl ov12_022581D4
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r7, r1]
	add r0, r5, r0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov12_022581D4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r0, _02238790 ; =0x00002478
	add r1, #0x10
	ldr r0, [r4, r0]
	mov r6, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [r7, r1]
	mov r7, #0x1d
	add r5, r4, #0
	lsl r7, r7, #4
_0223861E:
	ldr r0, [r5, r7]
	bl Heap_Free
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _0223861E
	ldr r0, [r4, #0x18]
	bl Heap_Free
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl PaletteData_FreeBuffers
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl PaletteData_FreeBuffers
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl PaletteData_FreeBuffers
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl PaletteData_FreeBuffers
	ldr r0, [r4, #0x28]
	bl PaletteData_Free
	ldr r0, [r4, #0xc]
	bl DestroyMsgData
	ldr r0, [r4, #0x10]
	bl DestroyMsgData
	ldr r0, [r4, #0x14]
	bl MessageFormat_Delete
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02016F2C
	bl sub_02014F84
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov07_0221BFE0
	ldr r0, [r4, #0x30]
	bl BattleContext_Delete
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _022386A8
	ldr r7, _02238794 ; =0x000023FD
	add r5, r4, #0
_02238694:
	ldrb r2, [r4, r7]
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E7C
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02238694
_022386A8:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl PokepicManager_Delete
	ldr r0, _02238794 ; =0x000023FD
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _022386C0
	add r0, r4, #0
	bl ov12_02237B6C
_022386C0:
	mov r0, #0
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r4, #8]
	mov r1, #3
	bl WindowArray_Delete
	ldr r0, [r4, #4]
	bl Heap_Free
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Heap_Free
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Heap_Free
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl MessagePrinter_Delete
	ldr r0, [r4, #0x1c]
	bl SysTask_Destroy
	ldr r0, [r4, #0x20]
	bl SysTask_Destroy
	bl DisableTouchPad
	ldr r0, [r4]
	bl ov12_022396E8
	ldr r0, _02238798 ; =0x00002434
	ldr r0, [r4, r0]
	bl SetLCRNGSeed
	add r0, r4, #0
	bl BattleSystem_GetCriticalHpMusicFlag
	cmp r0, #0
	beq _0223872E
	ldr r0, _0223879C ; =0x00000704
	mov r1, #0
	bl StopSE
_0223872E:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202067C
	add r0, r4, #0
	bl BattleSystem_IsRecordingPaused
	cmp r0, #0
	beq _02238748
	mov r0, #0x7f
	bl Sound_SetMasterVolume
_02238748:
	mov r0, #0x92
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238756
	bl ov12_0226BEF0
_02238756:
	add r0, r4, #0
	bl Heap_Free
	ldr r0, _022387A0 ; =SDK_OVERLAY_OVY_6_ID
	bl UnloadOverlayByID
	ldr r0, _022387A4 ; =SDK_OVERLAY_OVY_7_ID
	bl UnloadOverlayByID
	bl sub_02039998
	cmp r0, #0
	bne _02238776
	ldr r0, _022387A8 ; =SDK_OVERLAY_OVY_18_ID
	bl UnloadOverlayByID
_02238776:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238778: .word 0x0000244C
_0223877C: .word 0x00002445
_02238780: .word 0x00000AA4
_02238784: .word 0x00002420
_02238788: .word 0x00007FFF
_0223878C: .word 0x00002414
_02238790: .word 0x00002478
_02238794: .word 0x000023FD
_02238798: .word 0x00002434
_0223879C: .word 0x00000704
_022387A0: .word SDK_OVERLAY_OVY_6_ID
_022387A4: .word SDK_OVERLAY_OVY_7_ID
_022387A8: .word SDK_OVERLAY_OVY_18_ID
	thumb_func_end ov12_0223843C

	thumb_func_start ov12_022387AC
ov12_022387AC: ; 0x022387AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	add r4, r1, #0
	bl GfGfx_DisableEngineAPlanes
	ldr r6, _02238994 ; =ov12_0226C0A8
	add r3, sp, #0x20
	mov r2, #5
_022387BE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022387BE
	add r0, sp, #0x20
	bl GfGfx_SetBanks
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r0, #0
	bl SetMasterBrightnessNeutral
	mov r0, #1
	bl SetMasterBrightnessNeutral
	ldr r6, _02238998 ; =ov12_0226BFE8
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r1, _0223899C ; =0x000023FF
	mov r0, #1
	ldrb r2, [r5, r1]
	ldr r6, _022389A0 ; =ov12_0226C174
	add r3, sp, #0x48
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	mov r2, #0xa
_02238838:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02238838
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x64
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x80
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r1, _022389A4 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	bl BgConfig_InitBattleMenuBackgrounds
	add r0, r5, #0
	bl BattleSystem_GetFrame
	add r7, r0, #0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	mov r1, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200EB80
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r1, _022389A8 ; =0x00002404
	mov r0, #7
	ldr r1, [r5, r1]
	add r2, r4, #0
	add r1, r1, #3
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	add r0, r5, #0
	bl ov12_0223B52C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _022389A8 ; =0x00002404
	ldr r0, [r5, #0x28]
	ldr r3, [r5, r2]
	mov r1, #7
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0xb0
	add r2, r2, r6
	mov r3, #5
	bl PaletteData_LoadNarc
	add r0, r7, #0
	bl sub_0200E640
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x26
	mov r3, #5
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x10
	mov r2, #8
	mov r3, #5
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #7
	mov r1, #2
	add r2, r4, #0
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _022389AC ; =0xFFFF1FFF
	ldr r3, _022389B0 ; =0x04001000
	and r2, r1
	str r2, [r0]
	ldr r2, [r3]
	and r1, r2
	add r2, r0, #0
	str r1, [r3]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	add r0, #0x4a
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	bl GfGfx_BothDispOn
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _022389B4 ; =ov12_02239730
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02238994: .word ov12_0226C0A8
_02238998: .word ov12_0226BFE8
_0223899C: .word 0x000023FF
_022389A0: .word ov12_0226C174
_022389A4: .word 0x04000008
_022389A8: .word 0x00002404
_022389AC: .word 0xFFFF1FFF
_022389B0: .word 0x04001000
_022389B4: .word ov12_02239730
	thumb_func_end ov12_022387AC

