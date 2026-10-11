#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public WirelessTradeSelectMon_Main
	.public ov65_0221BFEC
	.public ov65_0221C08C
	.public ov65_0221C1C4
	.public ov65_0221C3DC
	.public ov65_0221C414
	.public ov65_0221C5E0
	.public ov65_0221CB5C
	.public ov65_0221CC0C
	.public ov65_0221CCB0
	.public ov65_0221CD0C
	.public ov65_0221D1C8
	.public ov65_0221D25C
	.public ov65_0221DD34
	.public ov65_0221E06C
	.public ov65_0221F714

	.text

	thumb_func_start ov65_0221C1C4
ov65_0221C1C4: ; 0x0221C1C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x61
	ldr r1, _0221C240 ; =0x00002224
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0
	bl ov65_0221C3DC
	mov r0, #0x61
	ldr r1, _0221C244 ; =0x00002228
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #6
	bl ov65_0221C3DC
	mov r0, #0
	mov r2, #0x61
	str r0, [sp]
	lsl r2, r2, #2
	ldr r3, _0221C240 ; =0x00002224
	ldr r0, _0221C248 ; =0x000004B4
	ldr r1, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov65_0221C414
	mov r0, #6
	mov r2, #0x61
	str r0, [sp]
	lsl r2, r2, #2
	ldr r3, _0221C244 ; =0x00002228
	ldr r0, _0221C24C ; =0x00000514
	ldr r1, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r5, r0
	bl ov65_0221C414
	ldr r0, _0221C240 ; =0x00002224
	ldr r0, [r5, r0]
	bl Party_GetCount
	add r4, r0, #0
	ldr r0, _0221C244 ; =0x00002228
	ldr r0, [r5, r0]
	bl Party_GetCount
	add r2, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov65_0221D25C
	pop {r3, r4, r5, pc}
	nop
_0221C240: .word 0x00002224
_0221C244: .word 0x00002228
_0221C248: .word 0x000004B4
_0221C24C: .word 0x00000514
	thumb_func_end ov65_0221C1C4

	thumb_func_start WirelessTradeSelectMon_Main
WirelessTradeSelectMon_Main: ; 0x0221C250
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #0
	beq _0221C270
	cmp r1, #1
	beq _0221C284
	cmp r1, #2
	bne _0221C26E
	b _0221C3AA
_0221C26E:
	b _0221C3B4
_0221C270:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0221C28A
	mov r0, #1
	str r0, [r5]
	add r0, r4, #0
	bl ov65_0221BFEC
	b _0221C3B4
_0221C284:
	ldr r1, [r4, #0x54]
	cmp r1, #7
	bls _0221C28C
_0221C28A:
	b _0221C3B4
_0221C28C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0221C298: ; jump table
	.short _0221C2A8 - _0221C298 - 2 ; case 0
	.short _0221C2B0 - _0221C298 - 2 ; case 1
	.short _0221C2B8 - _0221C298 - 2 ; case 2
	.short _0221C2D6 - _0221C298 - 2 ; case 3
	.short _0221C2F4 - _0221C298 - 2 ; case 4
	.short _0221C330 - _0221C298 - 2 ; case 5
	.short _0221C380 - _0221C298 - 2 ; case 6
	.short _0221C39C - _0221C298 - 2 ; case 7
_0221C2A8:
	bl ov65_0221C5E0
	str r0, [r4, #0x54]
	b _0221C3B4
_0221C2B0:
	bl ov65_0221CC0C
	str r0, [r4, #0x54]
	b _0221C3B4
_0221C2B8:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl BeginNormalPaletteFade
	mov r0, #2
	str r0, [r5]
	b _0221C3B4
_0221C2D6:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r6, #0
	add r2, r6, #0
	add r3, r6, #0
	bl BeginNormalPaletteFade
	mov r0, #4
	str r0, [r4, #0x54]
	b _0221C3B4
_0221C2F4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0221C3B4
	add r0, r4, #0
	bl ov65_0221CD0C
	add r0, r4, #0
	bl ov65_0221CCB0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov65_0221D1C8
	mov r0, #1
	str r0, [r4, #0x50]
	mov r0, #5
	str r0, [r4, #0x54]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #6
	bl _s32_div_f
	add r1, r0, #0
	add r0, r4, #0
	bl ov65_0221E06C
	b _0221C3B4
_0221C330:
	ldr r0, [r4, #0x4c]
	bl OverlayManager_Run
	cmp r0, #0
	beq _0221C3B4
	ldr r0, [r4, #0x4c]
	bl OverlayManager_Delete
	add r0, r4, #0
	bl ov65_0221C08C
	add r0, r6, #0
	str r0, [r4, #0x50]
	add r0, r4, #0
	add r0, #0x20
	ldrb r2, [r0]
	ldr r1, [r4, #0x48]
	mov r0, #6
	mul r0, r1
	add r1, r2, r0
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0]
	add r0, r4, #0
	bl ov65_0221CB5C
	add r0, r4, #0
	mov r1, #0xd1
	add r0, #0x94
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl ov65_0221DD34
	bl sub_0203A880
	mov r0, #6
	str r0, [r4, #0x54]
	b _0221C3B4
_0221C380:
	mov r0, #8
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x1a
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r6, #0
	bl BeginNormalPaletteFade
	mov r0, #7
	str r0, [r4, #0x54]
	b _0221C3B4
_0221C39C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0221C3B4
	mov r0, #1
	str r0, [r4, #0x54]
	b _0221C3B4
_0221C3AA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0221C3B4
	mov r6, #1
_0221C3B4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _0221C3CA
	add r0, r4, #0
	bl ov65_0221F714
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteList_RenderAndAnimateSprites
_0221C3CA:
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	mov r0, #0x1a
	bl sub_020399FC
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end WirelessTradeSelectMon_Main

