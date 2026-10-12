#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "unk_020755E8.inc"
	.include "global.inc"
	.public sub_02075A7C
	.extern sub_02075630
	.extern sub_02075D08
	.extern sub_02076E64
	.extern sub_020771E8

	.text
	thumb_func_start sub_02075A7C
sub_02075A7C: ; 0x02075A7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	add r7, r1, #0
	ldr r5, [sp, #0x50]
	ldr r0, _02075CFC ; =gSystem + 0x60
	mov r1, #0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #4
	add r1, r5, #0
	bl FontID_Alloc
	add r0, r5, #0
	mov r1, #0xbc
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0xbc
	bl MIi_CpuClearFast
	bl sub_02026E8C
	str r0, [sp, #0x1c]
	bl GetMainBgPlttAddr
	add r1, r0, #0
	ldr r2, [sp, #0x1c]
	mov r0, #0
	bl MIi_CpuClear16
	bl sub_02026E9C
	str r0, [sp, #0x20]
	bl GetSubBgPlttAddr
	add r1, r0, #0
	ldr r2, [sp, #0x20]
	mov r0, #0
	bl MIi_CpuClear16
	str r6, [r4, #0x24]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	str r7, [r4, #0x28]
	bl GetMonData
	add r1, r4, #0
	add r1, #0x60
	strh r0, [r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r4, #0
	add r1, #0x80
	strb r0, [r1]
	add r1, r4, #0
	ldr r0, [sp, #0x14]
	add r1, #0x62
	strh r0, [r1]
	str r5, [r4, #0x5c]
	mov r0, #0
	str r0, [r4, #0x38]
	mov r0, #0xb4
	add r1, r5, #0
	bl NARC_New
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x60
	add r0, #0x84
	add r1, r4, #0
	ldrh r2, [r2]
	ldr r0, [r0]
	add r1, #0x88
	mov r3, #1
	bl sub_020729A4
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x62
	add r0, #0x84
	add r1, r4, #0
	ldrh r2, [r2]
	ldr r0, [r0]
	add r1, #0x89
	mov r3, #1
	bl sub_020729A4
	add r0, r5, #0
	bl PaletteData_Init
	str r0, [r4, #0x14]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	mov r2, #2
	ldr r0, [r4, #0x14]
	mov r1, #0
	lsl r2, r2, #8
	add r3, r5, #0
	bl PaletteData_AllocBuffers
	mov r1, #1
	ldr r0, [r4, #0x14]
	lsl r2, r1, #9
	add r3, r5, #0
	bl PaletteData_AllocBuffers
	mov r2, #7
	ldr r0, [r4, #0x14]
	mov r1, #2
	lsl r2, r2, #6
	add r3, r5, #0
	bl PaletteData_AllocBuffers
	add r0, r5, #0
	bl BgConfig_Alloc
	str r0, [r4]
	add r0, r5, #0
	mov r1, #1
	bl AllocWindows
	str r0, [r4, #4]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x2c]
	add r0, r5, #0
	bl sub_02077400
	str r0, [r4, #0x34]
	bl sub_020773AC
	bl sub_020773D4
	bl sub_020774A0
	ldr r1, [r4]
	add r0, r4, #0
	bl sub_02076E64
	add r0, r4, #0
	bl sub_02075630
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	mov r2, #1
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, [r4, #4]
	mov r1, #0xff
	bl FillWindowPixelBuffer
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl DrawFrameAndWindow2
	mov r0, #8
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x50
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x8c
	mov r2, #6
	mov r3, #3
	bl AddWindowParameterized
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x9c
	mov r2, #6
	mov r3, #3
	bl AddWindowParameterized
	add r0, r5, #0
	bl PokepicManager_Create
	str r0, [r4, #0x18]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_02016EDC
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x67
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0x66
	strb r1, [r0]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xc5
	add r3, r5, #0
	bl NewMsgDataFromNarc
	str r0, [r4, #8]
	add r0, r5, #0
	bl MessageFormat_New
	str r0, [r4, #0xc]
	mov r0, #5
	lsl r0, r0, #6
	add r1, r5, #0
	bl String_New
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #0x3c
	bl Heap_Alloc
	str r0, [r4, #0x3c]
	ldr r1, [r4, #0x3c]
	mov r0, #0
	mov r2, #0x3c
	bl MIi_CpuClearFast
	ldr r1, [sp, #0x38]
	ldr r0, [r4, #0x3c]
	str r1, [r0, #0x2c]
	ldr r0, [sp, #0x3c]
	str r0, [r4, #0x48]
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x44]
	str r0, [r4, #0x50]
	ldr r0, [sp, #0x48]
	str r0, [r4, #0x78]
	ldr r0, [sp, #0x4c]
	str r0, [r4, #0x7c]
	add r0, r4, #0
	bl sub_020771E8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r2, _02075D00 ; =0x0000FFFF
	mov r1, #0xf
	mov r3, #1
	bl PaletteData_BeginPaletteFade
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0x18]
	mov r1, #0x10
	add r3, r2, #0
	bl Pokepic_StartPaletteFadeAll
	ldr r0, [r4, #0x14]
	mov r1, #0
	mov r2, #0xb
	add r3, r5, #0
	bl sub_020163E0
	mov r1, #1
	str r0, [r4, #0x58]
	bl sub_0201649C
	ldr r0, _02075D04 ; =sub_02075D08
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	bl sub_0203A880
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02075CFC: .word gSystem + 0x60
_02075D00: .word 0x0000FFFF
_02075D04: .word sub_02075D08
	thumb_func_end sub_02075A7C

