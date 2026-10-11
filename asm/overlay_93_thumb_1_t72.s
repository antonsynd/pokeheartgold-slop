	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225EE4C

	.text

	.text
	thumb_func_start ov93_0225EE4C
ov93_0225EE4C: ; 0x0225EE4C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	cmp r0, #0
	beq _0225EE5A
	mov r0, #1
	b _0225EE5C
_0225EE5A:
	mov r0, #0
_0225EE5C:
	lsl r1, r0, #0xf
	ldr r0, _0225EE90 ; =0x21085EF7
	mov r2, #1
	orr r0, r1
	str r0, [sp, #4]
	mov r0, #0x30
	add r1, sp, #4
	bl NNS_G3dGeBufferOP_N
	cmp r4, #0
	beq _0225EE76
	mov r0, #1
	b _0225EE78
_0225EE76:
	mov r0, #0
_0225EE78:
	lsl r1, r0, #0xf
	ldr r0, _0225EE94 ; =0x00007FFF
	mov r2, #1
	orr r0, r1
	str r0, [sp]
	mov r0, #0x31
	add r1, sp, #0
	bl NNS_G3dGeBufferOP_N
	add sp, #8
	pop {r4, pc}
	nop
_0225EE90: .word 0x21085EF7
_0225EE94: .word 0x00007FFF
	thumb_func_end ov93_0225EE4C

