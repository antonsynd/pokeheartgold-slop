	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239F60
	.public ov72_0223AF48

	.text

	thumb_func_start ov72_02239F60
ov72_02239F60: ; 0x02239F60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02239F88 ; =0x0000136C
	add r0, r4, r0
	bl ov72_0223AF48
	cmp r0, #0
	beq _02239F84
	cmp r0, #2
	bne _02239F7A
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _02239F84
_02239F7A:
	mov r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0x20]
_02239F84:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02239F88: .word 0x0000136C
	thumb_func_end ov72_02239F60

