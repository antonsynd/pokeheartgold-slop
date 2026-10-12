	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DD58
	.public ov28_0225DE04
	.extern DowsingMchn_FreeHiddenItemLocs
	.extern DowsingMchn_GetHiddenItemLocs

	.text

	.text
	thumb_func_start ov28_0225DD58
ov28_0225DD58: ; 0x0225DD58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl DowsingMchn_GetHiddenItemLocs
	mov r0, #0x83
	mov r4, #0
	lsl r0, r0, #2
	str r4, [r5, r0]
_0225DD6A:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r0, r4
	ldrb r0, [r6, #4]
	cmp r0, #0xff
	beq _0225DDF6
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0225DDBA
	mov r0, #0
	ldrsh r0, [r6, r0]
	str r0, [sp, #4]
	bl abs
	add r7, r0, #0
	mov r0, #2
	ldrsh r0, [r6, r0]
	bl abs
	add r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r0, #0x82
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	strh r1, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	mov r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, _0225DE00 ; =0x0000020A
	strh r1, [r5, r0]
	mov r1, #1
	add r0, r0, #2
	str r1, [r5, r0]
	b _0225DDF2
_0225DDBA:
	mov r0, #0
	ldrsh r0, [r6, r0]
	str r0, [sp]
	bl abs
	str r0, [sp, #8]
	mov r0, #2
	ldrsh r0, [r6, r0]
	bl abs
	ldr r1, [sp, #8]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r7, r0
	bls _0225DDF2
	add r7, r0, #0
	mov r0, #0x82
	ldr r1, [sp]
	lsl r0, r0, #2
	strh r1, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	mov r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, _0225DE00 ; =0x0000020A
	strh r1, [r5, r0]
_0225DDF2:
	add r4, r4, #6
	b _0225DD6A
_0225DDF6:
	add r0, r5, #0
	bl DowsingMchn_FreeHiddenItemLocs
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225DE00: .word 0x0000020A
	thumb_func_end ov28_0225DD58

	thumb_func_start ov28_0225DE04
ov28_0225DE04: ; 0x0225DE04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl GF_CosDeg
	mov r2, #0x11
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	mov r0, #0x15
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	mov r2, #0x11
	asr r1, r0, #0x1f
	lsl r2, r2, #0xe
	mov r3, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	mov r0, #0x59
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov28_0225DE04

