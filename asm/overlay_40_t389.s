	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223F59C
	.extern ov40_0222BF80
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222DED0
	.extern ov40_022307DC
	.extern ov40_0223DBD4
	.extern ov40_0223DCF0
	.extern ov40_0223DD68
	.extern ov40_0223DDE8
	.extern ov40_0223DF1C
	.extern ov40_02241D10
	.extern ov40_02241E14
	.extern ov40_022420B4
	.extern ov40_022456C4
	.extern ov40_02245708

	.text

	.text
	thumb_func_start ov40_0223F59C
ov40_0223F59C: ; 0x0223F59C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F5B2
	cmp r1, #1
	beq _0223F614
	b _0223F692
_0223F5B2:
	mov r1, #0x38
	mov r2, #3
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0
	bl ov40_022420B4
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F69C ; =ov40_022456C4
	ldr r2, _0223F6A0 ; =ov40_02241D10
	mov r1, #5
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223F6A4 ; =0x00000608
	ldr r2, _0223F6A8 ; =ov40_02241E14
	str r0, [r4, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F6AC ; =ov40_02245708
	mov r1, #9
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223F6B0 ; =0x0000060C
	str r0, [r4, r1]
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DF1C
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223F698
_0223F614:
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
	beq _0223F678
	add r0, r5, #0
	mov r1, #0x7c
	bl ov40_0222DED0
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DBD4
	mov r1, #0x13
	lsl r1, r1, #6
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov40_0223DD68
	ldr r1, _0223F6B4 ; =0x000004C2
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov40_0223DCF0
	ldr r2, _0223F6B8 ; =0x000004C3
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
_0223F678:
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
	b _0223F698
_0223F692:
	mov r1, #3
	bl ov40_0222BF80
_0223F698:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223F69C: .word ov40_022456C4
_0223F6A0: .word ov40_02241D10
_0223F6A4: .word 0x00000608
_0223F6A8: .word ov40_02241E14
_0223F6AC: .word ov40_02245708
_0223F6B0: .word 0x0000060C
_0223F6B4: .word 0x000004C2
_0223F6B8: .word 0x000004C3
	thumb_func_end ov40_0223F59C

