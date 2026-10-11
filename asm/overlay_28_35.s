	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225E060
	.extern ov28_0225DE64
	.extern ov28_0225DE78
	.extern ov28_0225DE88

	.text

	.text
	thumb_func_start ov28_0225E060
ov28_0225E060: ; 0x0225E060
	push {r4, r5, r6, lr}
	mov r1, #0x85
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl ov28_0225DE64
	bl ov28_0225DE88
	mov r1, #0x82
	lsl r1, r1, #2
	add r4, r0, #0
	ldrsh r0, [r5, r1]
	add r1, r1, #2
	ldrsh r1, [r5, r1]
	bl ov28_0225DE78
	bl ov28_0225DE88
	add r6, r0, #0
	add r0, r4, r6
	mov r1, #3
	bl _u32_div_f
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r6, #0
	add r0, #0x3c
	add r0, r0, r4
	lsr r2, r0, #1
	add r0, r1, #0
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r6, #0
	sub r0, #0x48
	add r0, r0, r4
	lsr r2, r0, #1
	add r0, r1, #0
	add r0, #0x18
	add r4, #0x5a
	add r6, #0x2d
	str r2, [r5, r0]
	add r0, r4, r6
	lsr r2, r0, #1
	add r0, r1, #0
	add r0, #0x24
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x2c
	ldrh r2, [r5, r0]
	ldr r0, _0225E0D8 ; =0xFFFF8000
	add r1, #0x2c
	and r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r5, r1]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225E0D8: .word 0xFFFF8000
	thumb_func_end ov28_0225E060

