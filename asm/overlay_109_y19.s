	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E5D08

	.text

	.text
	thumb_func_start ov109_021E5D08
ov109_021E5D08: ; 0x021E5D08
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, #0xc4
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xc5
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0x12
	add r0, #0xcc
	mov r1, #0
	lsl r2, r2, #4
	bl MI_CpuFill8
	add r0, r4, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r2, #0
	cmp r0, #0
	bls _021E5D5A
	add r0, r4, #0
	add r0, #0xcc
	mov r5, #0x84
_021E5D36:
	lsl r3, r2, #3
	add r1, r0, r3
	strb r2, [r0, r3]
	add r3, r4, #0
	add r3, #0xc8
	ldr r6, [r3]
	add r3, r2, #0
	mul r3, r5
	add r3, r6, r3
	str r3, [r1, #4]
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	add r1, r4, #0
	add r1, #0xc5
	ldrb r1, [r1]
	cmp r2, r1
	blo _021E5D36
_021E5D5A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021E5D08

