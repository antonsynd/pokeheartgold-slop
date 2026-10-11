#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221D0EC
	.public ov65_0221E050

	.text

	thumb_func_start ov65_0221D0EC
ov65_0221D0EC: ; 0x0221D0EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl OverlayManager_GetArgs
	add r4, r0, #0
	mov r2, #6
	ldr r0, _0221D1B0 ; =0x00000674
	str r4, [r5, #8]
	mov r1, #4
	str r1, [r5, r0]
	mov r3, #0
	str r3, [r5, #0x50]
	sub r0, r0, #4
	str r3, [r5, r0]
	mov r0, #0x5e
	lsl r0, r0, #2
	str r2, [r5, r0]
	add r1, r0, #4
	str r2, [r5, r1]
	add r1, r5, #0
	add r1, #0x94
	str r3, [r1]
	add r1, r5, #0
	add r1, #0x98
	str r2, [r1]
	sub r0, #0x2c
	str r3, [r5, r0]
	str r3, [r5, #0x54]
	ldr r0, _0221D1B4 ; =ov65_0221E050
	ldr r1, _0221D1B8 ; =0x00002220
	str r3, [r5, #0x58]
	str r0, [r5, r1]
	str r3, [r5, #0x6c]
	str r3, [r5, #0x70]
	ldr r0, _0221D1BC ; =0x0000211C
	str r3, [r5, #0x68]
	str r3, [r5, r0]
	ldr r0, _0221D1C0 ; =0x000036AC
	sub r6, r2, #7
	str r6, [r5, r0]
	add r2, r0, #4
	str r6, [r5, r2]
	add r2, r1, #0
	add r2, #0xac
	str r3, [r5, r2]
	add r2, r0, #0
	add r2, #0xc
	str r3, [r5, r2]
	add r0, #0x10
	str r3, [r5, r0]
	add r0, r1, #4
	ldr r2, [r4, #8]
	add r1, #0x10
	str r2, [r5, r0]
	ldr r0, [r4, #0xc]
	str r0, [r5, r1]
	ldr r0, [r4, #0x10]
	str r0, [r5, #4]
	bl SaveArray_Party_sizeof
	add r1, r0, #0
	mov r0, #0x1a
	bl Heap_Alloc
	ldr r1, _0221D1C4 ; =0x00002228
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #6
	bl Party_InitWithMaxSize
	bl SaveArray_Party_sizeof
	add r2, r0, #0
	ldr r0, _0221D1C4 ; =0x00002228
	mov r1, #0xff
	ldr r0, [r5, r0]
	bl memset
	ldr r0, [r4, #4]
	mov r1, #0x1a
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #8
	ldr r0, [r5, r1]
	mov r1, #0x2a
	bl NewString_ReadMsgData
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0x14]
	bl sub_02039F68
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221D1B0: .word 0x00000674
_0221D1B4: .word ov65_0221E050
_0221D1B8: .word 0x00002220
_0221D1BC: .word 0x0000211C
_0221D1C0: .word 0x000036AC
_0221D1C4: .word 0x00002228
	thumb_func_end ov65_0221D0EC

