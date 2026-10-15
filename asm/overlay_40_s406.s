	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223E190
	.extern ov40_0222BF80
	.extern ov40_0222D9E8
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222DED0
	.extern ov40_02230738
	.extern ov40_022307DC
	.extern ov40_0223DBD4
	.extern ov40_0223DCF0
	.extern ov40_0223DD68
	.extern ov40_0223DDE8
	.extern ov40_0223DF1C
	.extern ov40_02241D10
	.extern ov40_02241E14
	.extern ov40_022420B4
	.extern ov40_02242110
	.extern ov40_022456C4
	.extern ov40_02245708

	.text

	.text
	thumb_func_start ov40_0223E190
ov40_0223E190: ; 0x0223E190
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E1A8
	cmp r1, #1
	beq _0223E252
	b _0223E2EE
_0223E1A8:
	bl ov40_02230738
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov40_0222D9E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r5, #0
	mov r1, #0x38
	mov r2, #3
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	bl ov40_02242110
	add r0, r5, #0
	mov r1, #0
	bl ov40_022420B4
	mov r1, #0x7d
	ldr r0, _0223E2FC ; =0x00000514
	lsl r1, r1, #2
	str r1, [r4, r0]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223E300 ; =ov40_022456C4
	ldr r2, _0223E304 ; =ov40_02241D10
	mov r1, #5
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223E308 ; =0x00000608
	ldr r2, _0223E30C ; =ov40_02241E14
	str r0, [r4, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223E310 ; =ov40_02245708
	mov r1, #9
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223E314 ; =0x0000060C
	add r5, #8
	str r0, [r4, r1]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0223E2F4
_0223E252:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E2D4
	add r0, r5, #0
	mov r1, #0x7c
	bl ov40_0222DED0
	mov r0, #0x13
	ldr r1, _0223E318 ; =0x0000FFFF
	lsl r0, r0, #6
	strh r1, [r4, r0]
	mov r2, #0xff
	add r1, r0, #2
	strb r2, [r4, r1]
	add r1, r0, #3
	strb r2, [r4, r1]
	add r0, r0, #4
	strb r2, [r4, r0]
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DBD4
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DF1C
	mov r1, #0x13
	lsl r1, r1, #6
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov40_0223DD68
	ldr r1, _0223E31C ; =0x000004C2
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov40_0223DCF0
	ldr r2, _0223E320 ; =0x000004C3
	add r0, r5, #0
	ldrb r1, [r4, r2]
	add r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov40_0223DDE8
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E2D4:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223E2F4
_0223E2EE:
	mov r1, #3
	bl ov40_0222BF80
_0223E2F4:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223E2FC: .word 0x00000514
_0223E300: .word ov40_022456C4
_0223E304: .word ov40_02241D10
_0223E308: .word 0x00000608
_0223E30C: .word ov40_02241E14
_0223E310: .word ov40_02245708
_0223E314: .word 0x0000060C
_0223E318: .word 0x0000FFFF
_0223E31C: .word 0x000004C2
_0223E320: .word 0x000004C3
	thumb_func_end ov40_0223E190

