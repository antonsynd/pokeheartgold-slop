	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221F5F4

	.text

	.text
	thumb_func_start ov10_0221F5F4
ov10_0221F5F4: ; 0x0221F5F4
	push {r4, r5}
	mov r2, #0xc0
	mul r2, r1
	add r5, r0, r2
	mov r2, #0xb7
	lsl r2, r2, #6
	ldr r4, [r5, r2]
	mov r3, #0x20
	tst r3, r4
	beq _0221F620
	add r2, #8
	ldr r2, [r5, r2]
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1e
	bne _0221F620
	add r1, r0, r1
	ldr r0, _0221F628 ; =0x000021A4
	mov r2, #6
	strb r2, [r1, r0]
	mov r0, #1
	pop {r4, r5}
	bx lr
_0221F620:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_0221F628: .word 0x000021A4
	thumb_func_end ov10_0221F5F4

