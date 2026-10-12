	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DEB0
	.extern ov28_0225DE64
	.extern ov28_0225DE88

	.text

	.text
	thumb_func_start ov28_0225DEB0
ov28_0225DEB0: ; 0x0225DEB0
	push {r4, lr}
	mov r1, #0x85
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov28_0225DE64
	bl ov28_0225DE88
	mov r1, #0x22
	lsl r1, r1, #4
	add r2, r1, #0
	sub r2, #0xf4
	add r3, r0, r2
	add r2, r1, #0
	str r0, [r4, r1]
	add r2, #0xc
	str r3, [r4, r2]
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0x78
	add r2, #0x18
	str r3, [r4, r2]
	add r2, r1, #0
	add r0, #0xd8
	add r2, #0x24
	str r0, [r4, r2]
	add r0, r1, #0
	add r0, #0x2c
	ldrh r2, [r4, r0]
	ldr r0, _0225DF00 ; =0xFFFF8000
	add r1, #0x2c
	and r2, r0
	mov r0, #6
	orr r0, r2
	strh r0, [r4, r1]
	pop {r4, pc}
	nop
_0225DF00: .word 0xFFFF8000
	thumb_func_end ov28_0225DEB0

