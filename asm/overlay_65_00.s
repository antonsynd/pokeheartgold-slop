#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public WirelessTradeSelectMon_Init
	.public ov65_0221CE1C
	.public ov65_0221CE98
	.public ov65_0221CEB8
	.public ov65_0221D0EC
	.public ov65_0221D280
	.public ov65_0221D3B8
	.public ov65_0221D3E8
	.public ov65_0221D930
	.public ov65_0221F8D0
	.public ov65_0221FB90

	.text

	thumb_func_start WirelessTradeSelectMon_Init
WirelessTradeSelectMon_Init: ; 0x0221BE20
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0221BF9C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _0221BFA0 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r2, _0221BFA4 ; =0x00070FA0
	mov r0, #3
	mov r1, #0x1a
	bl Heap_Create
	mov r0, #4
	mov r1, #0x1a
	bl FontID_Alloc
	mov r0, #0x34
	mov r1, #0x1a
	bl NARC_New
	add r5, r0, #0
	ldr r1, _0221BFA8 ; =0x000036CC
	add r0, r6, #0
	mov r2, #0x1a
	bl OverlayManager_CreateAndGetData
	add r4, r0, #0
	ldr r2, _0221BFA8 ; =0x000036CC
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #0x1a
	bl BgConfig_Alloc
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0xc
	mov r1, #0x16
	mov r2, #0x1a
	bl MessageFormat_New_Custom
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x1a
	bl MessageFormat_New
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x1a
	bl MessageFormat_New
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xb7
	mov r3, #0x1a
	bl NewMsgDataFromNarc
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x4c]
	add r0, r4, #0
	add r1, r6, #0
	bl ov65_0221D0EC
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	bl ov65_0221CE98
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov65_0221CEB8
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r1, r5, #0
	bl ov65_0221D280
	ldr r0, _0221BFAC ; =ov65_0221CE1C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl ov65_0221D3B8
	add r0, r4, #0
	add r1, r5, #0
	bl ov65_0221D3E8
	add r0, r4, #0
	bl ov65_0221D930
	mov r0, #6
	ldr r2, [r4, #8]
	lsl r0, r0, #6
	ldr r1, _0221BFB0 ; =0x00000444
	ldr r0, [r4, r0]
	ldr r2, [r2, #0x18]
	add r1, r4, r1
	bl ov65_0221F8D0
	ldr r0, [r4, #8]
	add r1, r4, #0
	ldr r0, [r0]
	str r0, [r4]
	bl sub_0208F7E0
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221BFB4 ; =0x000005B4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov65_0221FB90
	ldr r0, [r4]
	bl sub_0208F658
	mov r0, #0
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0x1a
	bl sub_020399FC
	bl sub_0203A880
	bl IsNighttime
	ldr r1, _0221BFB8 ; =0x00000427
	mov r0, #0
	bl sub_02055198
	ldr r0, _0221BFB8 ; =0x00000427
	bl sub_02005448
	add r0, r5, #0
	bl NARC_Delete
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0221BF9C: .word 0xFFFFE0FF
_0221BFA0: .word 0x04001000
_0221BFA4: .word 0x00070FA0
_0221BFA8: .word 0x000036CC
_0221BFAC: .word ov65_0221CE1C
_0221BFB0: .word 0x00000444
_0221BFB4: .word 0x000005B4
_0221BFB8: .word 0x00000427
	thumb_func_end WirelessTradeSelectMon_Init

