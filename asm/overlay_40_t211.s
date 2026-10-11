	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223527C
	.extern ov40_0222BF80
	.extern ov40_02230944
	.extern ov40_022451C4
	.extern ov40_022451D0
	.extern ov40_022451D4
	.extern ov40_022451D8

	.text

	.text
	thumb_func_start ov40_0223527C
ov40_0223527C: ; 0x0223527C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _0223533C ; =ov40_022451C4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0223529E
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #9
	bl ov40_0222BF80
_0223529E:
	ldr r0, _02235340 ; =ov40_022451D0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _022352B6
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #0xa
	bl ov40_0222BF80
_022352B6:
	ldr r0, _02235344 ; =ov40_022451D4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _022352E4
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _022352CC
	b _022352D2
_022352CC:
	add r0, r1, #0
	add r0, #0xb0
	ldr r0, [r4, r0]
_022352D2:
	sub r0, r0, #1
	str r0, [r4, r1]
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #0xb
	bl ov40_0222BF80
_022352E4:
	ldr r0, _02235348 ; =ov40_022451D8
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _02235316
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, #0xb0
	ldr r1, [r4, r1]
	bl _s32_div_f
	mov r0, #0x8d
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #0xb
	bl ov40_0222BF80
_02235316:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02235336
	bl Thunk_G3X_Reset
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov41_0224B554
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
_02235336:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223533C: .word ov40_022451C4
_02235340: .word ov40_022451D0
_02235344: .word ov40_022451D4
_02235348: .word ov40_022451D8
	thumb_func_end ov40_0223527C

