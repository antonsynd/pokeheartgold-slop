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
	.public ov40_0223F6BC
	.public ov40_022408AC
	.public ov40_02241AB0
	.public ov40_02241E40
	.public ov40_02241ED4
	.public ov40_02241F3C
	.public ov40_02245654
	.public ov40_02245674
	.public ov40_022456B4

	.text

	thumb_func_start ov40_0223F6BC
ov40_0223F6BC: ; 0x0223F6BC
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223F6CE
	b _0223F802
_0223F6CE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F6DA: ; jump table
	.short _0223F6E2 - _0223F6DA - 2 ; case 0
	.short _0223F6F2 - _0223F6DA - 2 ; case 1
	.short _0223F73C - _0223F6DA - 2 ; case 2
	.short _0223F7A6 - _0223F6DA - 2 ; case 3
_0223F6E2:
	mov r1, #6
	mov r2, #7
	bl ov40_022307DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F80A
_0223F6F2:
	bl ov40_022408AC
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F810 ; =ov40_022456B4
	ldr r2, _0223F814 ; =ov40_02241E40
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _0223F818 ; =0x00000608
	ldr r2, _0223F81C ; =ov40_02241ED4
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F820 ; =ov40_02245674
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _0223F824 ; =0x0000060C
	ldr r2, _0223F828 ; =ov40_02241F3C
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223F82C ; =ov40_02245654
	mov r1, #2
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223F80A
_0223F73C:
	mov r1, #0x73
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r5, r1]
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	mov r0, #0x43
	lsl r0, r0, #2
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
	b _0223F80A
_0223F7A6:
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
	beq _0223F7E8
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	add r0, r4, #0
	bl ov40_02241AB0
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223F7E8:
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
	b _0223F80A
_0223F802:
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
_0223F80A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223F810: .word ov40_022456B4
_0223F814: .word ov40_02241E40
_0223F818: .word 0x00000608
_0223F81C: .word ov40_02241ED4
_0223F820: .word ov40_02245674
_0223F824: .word 0x0000060C
_0223F828: .word ov40_02241F3C
_0223F82C: .word ov40_02245654
	thumb_func_end ov40_0223F6BC

