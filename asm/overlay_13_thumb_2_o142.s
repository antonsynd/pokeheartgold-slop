	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226EF0
	.extern ov13_02226CBC
	.extern ov13_02245A58
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02226EF0
ov13_02226EF0: ; 0x02226EF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02226F20 ; =ov13_0224DF30
	ldr r0, [r0, #0x38]
	str r0, [r4]
	ldr r0, _02226F24 ; =ov13_02245A58
	ldr r1, [r0, #0xc]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _02226F08
	b _02226F12
_02226F08:
	bl ov13_02226CBC
	ldr r1, _02226F24 ; =ov13_02245A58
	ldr r1, [r1, #0xc]
	sub r0, r1, r0
_02226F12:
	str r0, [r4, #4]
	ldr r0, _02226F20 ; =ov13_0224DF30
	ldr r0, [r0, #0x78]
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	nop
_02226F20: .word ov13_0224DF30
_02226F24: .word ov13_02245A58
	thumb_func_end ov13_02226EF0

