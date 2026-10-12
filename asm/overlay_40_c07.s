	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BD30
	.extern ov40_0222BF64
	.extern ov40_0222BF80
	.extern ov40_02230D20
	.extern ov40_0223D5E8
	.extern ov40_022450F0
	.extern ov40_02245108
	.extern ov40_02245140
	.extern ov40_02245168
	.extern ov40_02245220
	.extern ov40_02245238
	.extern ov40_0224533C
	.extern ov40_02245368
	.extern ov40_02245470
	.extern ov40_022455F4
	.extern ov40_02245B30
	.extern ov40_02245B44
	.extern ov40_02245B98
	.extern ov40_02245CA8

	.text

	.text
	thumb_func_start ov40_0222BD30
ov40_0222BD30: ; 0x0222BD30
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0x12
	bls _0222BD3E
	b _0222BF0A
_0222BD3E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BD4A: ; jump table
	.short _0222BD70 - _0222BD4A - 2 ; case 0
	.short _0222BDA8 - _0222BD4A - 2 ; case 1
	.short _0222BDC0 - _0222BD4A - 2 ; case 2
	.short _0222BDD8 - _0222BD4A - 2 ; case 3
	.short _0222BDF0 - _0222BD4A - 2 ; case 4
	.short _0222BE08 - _0222BD4A - 2 ; case 5
	.short _0222BE20 - _0222BD4A - 2 ; case 6
	.short _0222BE38 - _0222BD4A - 2 ; case 7
	.short _0222BE50 - _0222BD4A - 2 ; case 8
	.short _0222BE50 - _0222BD4A - 2 ; case 9
	.short _0222BE68 - _0222BD4A - 2 ; case 10
	.short _0222BE68 - _0222BD4A - 2 ; case 11
	.short _0222BE80 - _0222BD4A - 2 ; case 12
	.short _0222BE98 - _0222BD4A - 2 ; case 13
	.short _0222BEB0 - _0222BD4A - 2 ; case 14
	.short _0222BEC8 - _0222BD4A - 2 ; case 15
	.short _0222BEE0 - _0222BD4A - 2 ; case 16
	.short _0222BEEC - _0222BD4A - 2 ; case 17
	.short _0222BF04 - _0222BD4A - 2 ; case 18
_0222BD70:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF2C ; =ov40_022450F0
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r5, #0
	bl ov40_0222BF64
	cmp r6, #0
	bne _0222BD8E
	b _0222BF0E
_0222BD8E:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _0222BD9E
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222BF80
	b _0222BF0E
_0222BD9E:
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222BF80
	b _0222BF0E
_0222BDA8:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF30 ; =ov40_02245108
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BDC0:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF34 ; =ov40_02245140
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BDD8:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF38 ; =ov40_02245168
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BDF0:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF3C ; =ov40_02245220
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE08:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF40 ; =ov40_02245238
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE20:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF44 ; =ov40_0224533C
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE38:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF48 ; =ov40_02245368
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE50:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF4C ; =ov40_02245470
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE68:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF50 ; =ov40_022455F4
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE80:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF50 ; =ov40_022455F4
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BE98:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF54 ; =ov40_02245B98
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BEB0:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF58 ; =ov40_02245B44
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BEC8:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF5C ; =ov40_02245B30
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BEE0:
	mov r1, #0xff
	mov r2, #1
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BEEC:
	ldr r1, [r4, #4]
	lsl r2, r1, #2
	ldr r1, _0222BF60 ; =ov40_02245CA8
	ldr r1, [r1, r2]
	blx r1
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	add r3, r5, #0
	bl ov40_0222BF64
	b _0222BF0E
_0222BF04:
	bl ov40_02230D20
	b _0222BF0E
_0222BF0A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222BF0E:
	bl Thunk_G3X_Reset
	ldr r0, [r4, #0x64]
	bl PokepicManager_DrawAll
	mov r0, #1
	mov r1, #0
	bl RequestSwap3DBuffers
	add r0, r4, #0
	bl ov40_0223D5E8
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222BF2C: .word ov40_022450F0
_0222BF30: .word ov40_02245108
_0222BF34: .word ov40_02245140
_0222BF38: .word ov40_02245168
_0222BF3C: .word ov40_02245220
_0222BF40: .word ov40_02245238
_0222BF44: .word ov40_0224533C
_0222BF48: .word ov40_02245368
_0222BF4C: .word ov40_02245470
_0222BF50: .word ov40_022455F4
_0222BF54: .word ov40_02245B98
_0222BF58: .word ov40_02245B44
_0222BF5C: .word ov40_02245B30
_0222BF60: .word ov40_02245CA8
	thumb_func_end ov40_0222BD30

