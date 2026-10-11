	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E8374
	.extern _021EAA80

	.text

	.text
	thumb_func_start ov85_021E8374
ov85_021E8374: ; 0x021E8374
	ldr r0, [r1]
	cmp r0, #0
	beq _021E83BA
	cmp r0, #1
	beq _021E8384
	cmp r0, #2
	beq _021E83A8
	bx lr
_021E8384:
	ldr r0, [r1, #4]
	lsl r2, r0, #2
	ldr r0, _021E83BC ; =_021EAA80
	ldr r0, [r0, r2]
	lsl r2, r0, #0xc
	ldr r0, [r1, #0xc]
	str r2, [r0, #0x54]
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021E83BA
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bx lr
_021E83A8:
	ldr r0, [r1, #8]
	add r0, r0, #1
	str r0, [r1, #8]
	cmp r0, #0xf
	blt _021E83BA
	mov r0, #0
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1]
_021E83BA:
	bx lr
	.balign 4, 0
_021E83BC: .word _021EAA80
	thumb_func_end ov85_021E8374

