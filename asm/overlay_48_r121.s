	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225B038
	.extern ov48_0225B238

	.text

	.text
	thumb_func_start ov48_0225B038
ov48_0225B038: ; 0x0225B038
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x18
	blo _0225B044
	bl GF_AssertFail
_0225B044:
	ldr r0, _0225B04C ; =ov48_0225B238
	lsl r1, r4, #1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_0225B04C: .word ov48_0225B238
	thumb_func_end ov48_0225B038

