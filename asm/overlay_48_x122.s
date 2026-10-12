	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225B050
	.extern ov48_0225B239

	.text

	.text
	thumb_func_start ov48_0225B050
ov48_0225B050: ; 0x0225B050
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x18
	blo _0225B05C
	bl GF_AssertFail
_0225B05C:
	ldr r0, _0225B064 ; =ov48_0225B239
	lsl r1, r4, #1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_0225B064: .word ov48_0225B239
	thumb_func_end ov48_0225B050

