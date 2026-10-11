	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D3C4
	.public ov91_0225EEBC
	.public ov91_0225F008

	.text

	thumb_func_start ov91_0225D3C4
ov91_0225D3C4: ; 0x0225D3C4
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r1]
	ldr r2, _0225D404 ; =0x00008784
	strb r0, [r4, r2]
	ldrb r3, [r1, #1]
	add r0, r2, #1
	strb r3, [r4, r0]
	ldrb r3, [r1, #2]
	add r0, r2, #2
	strb r3, [r4, r0]
	ldrb r1, [r1, #3]
	add r0, r2, #3
	strb r1, [r4, r0]
	mov r1, #1
	add r0, r2, #4
	str r1, [r4, r0]
	add r1, r2, #0
	add r0, r2, #0
	sub r1, #8
	sub r0, #0x54
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r2, r4, r2
	bl ov91_0225EEBC
	ldr r1, _0225D408 ; =0x00008730
	add r0, r4, #0
	add r1, r4, r1
	bl ov91_0225F008
	pop {r4, pc}
	.balign 4, 0
_0225D404: .word 0x00008784
_0225D408: .word 0x00008730
	thumb_func_end ov91_0225D3C4

