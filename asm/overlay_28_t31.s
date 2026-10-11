	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DF14
	.extern ov28_0225DE64
	.extern ov28_0225DE78
	.extern ov28_0225DE88

	.text

	.text
	thumb_func_start ov28_0225DF14
ov28_0225DF14: ; 0x0225DF14
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
	lsl r1, r4, #1
	add r1, r4, r1
	add r1, r0, r1
	lsr r2, r1, #2
	mov r1, #0x22
	add r3, r4, #0
	lsl r1, r1, #4
	add r6, r0, #0
	add r3, #0x1e
	str r2, [r5, r1]
	lsl r2, r3, #1
	add r6, #0x78
	add r2, r3, r2
	add r2, r6, r2
	add r6, r0, #0
	lsr r3, r2, #2
	add r2, r1, #0
	add r2, #0xc
	str r3, [r5, r2]
	add r3, r4, #0
	sub r3, #0x24
	lsl r2, r3, #1
	sub r6, #0x87
	add r2, r3, r2
	add r2, r6, r2
	lsr r3, r2, #2
	add r2, r1, #0
	add r2, #0x18
	add r4, #0x5a
	str r3, [r5, r2]
	lsl r2, r4, #1
	add r0, #0x5a
	add r2, r4, r2
	add r0, r0, r2
	lsr r2, r0, #2
	add r0, r1, #0
	add r0, #0x24
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x2c
	ldrh r2, [r5, r0]
	ldr r0, _0225DFA0 ; =0xFFFF8000
	add r1, #0x2c
	and r2, r0
	mov r0, #4
	orr r0, r2
	strh r0, [r5, r1]
	pop {r4, r5, r6, pc}
	nop
_0225DFA0: .word 0xFFFF8000
	thumb_func_end ov28_0225DF14

