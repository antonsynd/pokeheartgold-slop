#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E58
	.public ov70_02238F9C
	.public ov70_022391F0
	.public ov70_0223A578
	.public ov70_0223A72C
	.public ov70_0223A7E4
	.public ov70_0223A874
	.public ov70_0223A8BC
	.public ov70_0223AA90
	.public ov70_0223AB00
	.public ov70_0223AB3C
	.public ov70_0223ABD8
	.public ov70_0223ABF4
	.public ov70_0223AC98
	.public ov70_0223ACE4
	.public ov70_0223ACF4
	.public ov70_0223AE40
	.public ov70_0223AE98
	.public ov70_0223AF30
	.public ov70_0223B258
	.public ov70_0223B3BC
	.public ov70_0223B3EC
	.public ov70_0223B4D4
	.public ov70_0223F470
	.public ov70_0223F864
	.public ov70_02241330
	.public ov70_022454B4
	.public ov70_022454D0
	.public ov70_022464CC

	.text

	thumb_func_start ov70_0223A7E4
ov70_0223A7E4: ; 0x0223A7E4
	push {r4, r5, r6, lr}
	sub sp, #0x30
	mov r1, #0x32
	add r5, r0, #0
	mov r0, #0x3d
	lsl r1, r1, #6
	bl Heap_Alloc
	add r4, r0, #0
	add r0, sp, #0x20
	add r1, r5, #0
	mov r2, #2
	bl GetPokemonSpriteCharAndPlttNarcIds
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r1, #2
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r1, sp, #0x20
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	mov r2, #0x3d
	bl sub_02014494
	mov r1, #0x32
	add r0, r4, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	mov r1, #0x4a
	mov r2, #0x32
	add r0, r4, #0
	lsl r1, r1, #8
	lsl r2, r2, #6
	bl GX_LoadOBJ
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3d
	mov r3, #0x1a
	str r0, [sp, #4]
	add r1, sp, #0x20
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	mov r2, #1
	lsl r3, r3, #4
	bl GfGfxLoader_GXLoadPal
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_0223A7E4

	thumb_func_start ov70_0223A874
ov70_0223A874: ; 0x0223A874
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0223A8B4 ; =0x0000022F
	add r4, r0, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov70_0223F864
	mov r1, #0x8b
	lsl r1, r1, #2
	ldrsh r2, [r4, r1]
	add r1, r1, #2
	ldr r3, _0223A8B8 ; =0x000010E8
	str r2, [sp]
	ldrsb r1, [r4, r1]
	mov r2, #0xba
	lsl r2, r2, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov70_0223F470
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223A8B4: .word 0x0000022F
_0223A8B8: .word 0x000010E8
	thumb_func_end ov70_0223A874

	thumb_func_start ov70_0223A8BC
ov70_0223A8BC: ; 0x0223A8BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_0223AE98
	ldr r1, _0223AA60 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r2, [r4, r1]
	mov r1, #0x1f
	mvn r1, r1
	sub r1, r1, r2
	bl ov70_0223AB3C
	add r0, r4, #0
	bl ov70_0223ABF4
	add r0, r4, #0
	bl ov70_0223ACF4
	add r0, r4, #0
	bl ov70_0223AC98
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	add r5, r1, #0
	mul r5, r0
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r4, r0
	add r0, r0, r5
	bl Mon_GetBoxMon
	str r0, [sp]
	mov r0, #0xd3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #0xba
	add r0, r0, r5
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0223AA64 ; =0x00001058
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov70_0223A578
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #0xdb
	add r3, r1, #0
	sub r0, #8
	mov r5, #0x26
	lsl r2, r2, #2
	lsl r5, r5, #4
	ldr r1, _0223AA68 ; =0x00001118
	mul r3, r0
	add r0, r4, r1
	str r0, [sp]
	mov r0, #0xba
	lsl r0, r0, #4
	sub r1, #0x50
	add r2, r4, r2
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, r2, r3
	add r1, r4, r1
	add r3, r5, r3
	bl ov70_0223A72C
	mov r0, #0x26
	lsl r0, r0, #4
	add r2, r4, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	mul r0, r1
	add r0, r2, r0
	bl ov70_0223A7E4
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223AA6C ; =0x00001138
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x4d
	bl ov70_0223B3BC
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223AA70 ; =0x000010E8
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x51
	bl ov70_0223B3BC
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223AA74 ; =0x00000F58
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x58
	bl ov70_0223B3EC
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r1, _0223AA78 ; =0x00000F68
	ldr r0, [r4, r0]
	add r1, r4, r1
	mov r2, #0x6d
	bl ov70_0223B3EC
	add r0, r4, #0
	bl ov70_0223B258
	ldr r2, _0223AA60 ; =0x00000F14
	mov r1, #0x4b
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	ldr r1, [r4, r1]
	add r0, r4, #0
	neg r2, r2
	bl ov70_02241330
	ldr r1, _0223AA7C ; =ov70_0223B4D4
	ldr r0, _0223AA80 ; =0x00001208
	ldr r2, _0223AA84 ; =0x04000304
	str r1, [r4, r0]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r0, [r4, #0x24]
	cmp r0, #0x11
	bne _0223AA54
	ldr r0, _0223AA88 ; =0x0400006C
	bl GXx_GetMasterBrightness_
	mov r1, #0xf
	mvn r1, r1
	cmp r0, r1
	bne _0223AA0A
	ldr r0, _0223AA8C ; =0x0400106C
	bl GXx_GetMasterBrightness_
	mov r1, #0xf
	mvn r1, r1
	cmp r0, r1
	beq _0223AA0A
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	b _0223AA54
_0223AA0A:
	ldr r0, _0223AA88 ; =0x0400006C
	bl GXx_GetMasterBrightness_
	mov r1, #0xf
	mvn r1, r1
	cmp r0, r1
	beq _0223AA3E
	ldr r0, _0223AA8C ; =0x0400106C
	bl GXx_GetMasterBrightness_
	mov r1, #0xf
	mvn r1, r1
	cmp r0, r1
	bne _0223AA3E
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #4
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	b _0223AA54
_0223AA3E:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
_0223AA54:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223AA60: .word 0x00000F14
_0223AA64: .word 0x00001058
_0223AA68: .word 0x00001118
_0223AA6C: .word 0x00001138
_0223AA70: .word 0x000010E8
_0223AA74: .word 0x00000F58
_0223AA78: .word 0x00000F68
_0223AA7C: .word ov70_0223B4D4
_0223AA80: .word 0x00001208
_0223AA84: .word 0x04000304
_0223AA88: .word 0x0400006C
_0223AA8C: .word 0x0400106C
	thumb_func_end ov70_0223A8BC

	thumb_func_start ov70_0223AA90
ov70_0223AA90: ; 0x0223AA90
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223AAEC ; =ov70_022464CC
	ldr r1, [r1, r2]
	blx r1
	ldr r7, _0223AAF0 ; =0x0000120E
	str r0, [sp]
	mov r4, #0
	add r5, r6, #0
_0223AAA6:
	ldr r2, _0223AAF4 ; =0x00000F14
	ldr r1, _0223AAF8 ; =0x0000120C
	ldr r3, [r6, r2]
	ldrsh r2, [r5, r7]
	ldr r0, _0223AAFC ; =0x00000EE4
	ldrsh r1, [r5, r1]
	add r2, r3, r2
	ldr r0, [r5, r0]
	add r2, #0x20
	bl ov70_02238F9C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223AAA6
	mov r2, #0xee
	lsl r2, r2, #4
	ldr r0, [r6, r2]
	add r2, #0x34
	ldr r3, [r6, r2]
	mov r2, #0x3a
	mov r1, #0xd0
	sub r2, r2, r3
	bl ov70_02238F9C
	mov r1, #0x4b
	ldr r2, _0223AAF4 ; =0x00000F14
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, r6, #0
	bl ov70_02241330
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223AAEC: .word ov70_022464CC
_0223AAF0: .word 0x0000120E
_0223AAF4: .word 0x00000F14
_0223AAF8: .word 0x0000120C
_0223AAFC: .word 0x00000EE4
	thumb_func_end ov70_0223AA90

	thumb_func_start ov70_0223AB00
ov70_0223AB00: ; 0x0223AB00
	push {r4, lr}
	ldr r1, _0223AB38 ; =0x00001208
	add r4, r0, #0
	mov r2, #0
	str r2, [r4, r1]
	bl ov70_0223ACE4
	add r0, r4, #0
	bl ov70_0223AF30
	add r0, r4, #0
	bl ov70_0223AE40
	ldr r0, [r4, #4]
	bl ov70_0223ABD8
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov70_02238E58
	mov r0, #1
	pop {r4, pc}
	nop
_0223AB38: .word 0x00001208
	thumb_func_end ov70_0223AB00

	thumb_func_start ov70_0223AB3C
ov70_0223AB3C: ; 0x0223AB3C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	ldr r6, _0223ABCC ; =ov70_022454D0
	add r3, sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0223ABD0 ; =ov70_022454B4
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3d
	bl BG_ClearCharDataRange
	ldr r0, _0223ABD4 ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	bne _0223ABAE
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_022391F0
	b _0223ABB8
_0223ABAE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_022391F0
_0223ABB8:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223ABCC: .word ov70_022454D0
_0223ABD0: .word ov70_022454B4
_0223ABD4: .word 0x0400106C
	thumb_func_end ov70_0223AB3C

