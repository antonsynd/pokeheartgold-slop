	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_022306A0
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_0223C0D8
	.public ov40_0223CD14
	.public ov40_0223CE64
	.public ov40_0223CF00
	.public ov40_0223CF70
	.public ov40_0223CFA8
	.public ov40_0224549C
	.public ov40_022454B0
	.public ov40_022454E0

	.text

	thumb_func_start ov40_0223C0D8
ov40_0223C0D8: ; 0x0223C0D8
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223C0EA
	b _0223C21A
_0223C0EA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C0F6: ; jump table
	.short _0223C0FE - _0223C0F6 - 2 ; case 0
	.short _0223C10E - _0223C0F6 - 2 ; case 1
	.short _0223C15C - _0223C0F6 - 2 ; case 2
	.short _0223C1BE - _0223C0F6 - 2 ; case 3
_0223C0FE:
	mov r1, #6
	mov r2, #7
	bl ov40_022307DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223C222
_0223C10E:
	bl ov40_0223CFA8
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223C228 ; =ov40_022454E0
	ldr r2, _0223C22C ; =ov40_0223CE64
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223C230 ; =ov40_022454B0
	ldr r2, _0223C234 ; =ov40_0223CF00
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223C238 ; =ov40_0224549C
	ldr r2, _0223C23C ; =ov40_0223CF70
	mov r1, #2
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223C222
_0223C15C:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223C222
_0223C1BE:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223C200
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	add r0, r4, #0
	bl ov40_0223CD14
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223C200:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223C222
_0223C21A:
	add r0, r4, #0
	mov r1, #7
	bl ov40_0222BF80
_0223C222:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223C228: .word ov40_022454E0
_0223C22C: .word ov40_0223CE64
_0223C230: .word ov40_022454B0
_0223C234: .word ov40_0223CF00
_0223C238: .word ov40_0224549C
_0223C23C: .word ov40_0223CF70
	thumb_func_end ov40_0223C0D8

