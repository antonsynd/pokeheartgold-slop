	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FF5C
	.extern sub_02010014

	.text
	thumb_func_start sub_0200FF5C
sub_0200FF5C: ; 0x0200FF5C
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	add r5, r0, #0
	mov r1, #0
	add r0, r5, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0200FF78
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0200FF78
	bl HBlankInterruptDisable
_0200FF78:
	ldr r1, _0200FF84 ; =sub_02010014
	add r0, r5, r4
	str r1, [r0, #8]
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0200FF84: .word sub_02010014
	thumb_func_end sub_0200FF5C

