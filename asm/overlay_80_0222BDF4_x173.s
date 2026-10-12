	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222EB14

	.text

	.text
	thumb_func_start ov80_0222EB14
ov80_0222EB14: ; 0x0222EB14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _0222EB4C
	add r5, r7, #0
_0222EB26:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222EB4C
	mov r0, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	cmp r6, r0
	bhs _0222EB3E
	add r6, r0, #0
_0222EB3E:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _0222EB26
_0222EB4C:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0222EB14

