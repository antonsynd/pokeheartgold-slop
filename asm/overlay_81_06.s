	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F320
	.public ov81_0224086C
	.public ov81_022408A0
	.public ov81_02241FEC
	.public ov81_0224218C
	.public ov81_02242F54
	.public ov81_02242F94
	.public ov81_02242FB0

	.text

	thumb_func_start ov81_0223F320
ov81_0223F320: ; 0x0223F320
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov80_02236DD4
	ldr r0, _0223F388 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F54
	ldr r0, _0223F388 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov81_02242FB0
	ldr r0, _0223F388 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov81_02242F94
	ldrb r2, [r4, #0x11]
	add r0, r4, #0
	mov r1, #0
	add r2, r2, #1
	bl ov81_022408A0
	add r0, r4, #0
	mov r1, #0
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	add r0, r4, #0
	bl ov81_02241FEC
	add r0, r4, #0
	bl ov81_0224218C
	pop {r4, pc}
	.balign 4, 0
_0223F388: .word 0x00000468
	thumb_func_end ov81_0223F320

