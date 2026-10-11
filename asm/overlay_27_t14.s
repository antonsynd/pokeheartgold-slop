	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A7FC
	.extern ov27_0225A7B0
	.extern ov27_0225A7DC
	.extern ov27_0225B404
	.extern ov27_0225B4D8

	.text

	.text
	thumb_func_start ov27_0225A7FC
ov27_0225A7FC: ; 0x0225A7FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	add r2, r1, #0
	add r2, #0xd2
	ldrb r2, [r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1a
	cmp r2, #4
	bhi _0225A866
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225A81C: ; jump table
	.short _0225A826 - _0225A81C - 2 ; case 0
	.short _0225A82C - _0225A81C - 2 ; case 1
	.short _0225A846 - _0225A81C - 2 ; case 2
	.short _0225A866 - _0225A81C - 2 ; case 3
	.short _0225A866 - _0225A81C - 2 ; case 4
_0225A826:
	bl ov27_0225A7B0
	pop {r4, pc}
_0225A82C:
	bl ov27_0225A7DC
	ldr r2, [r4, #0x10]
	add r0, r2, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	add r2, #0xd2
	bic r1, r0
	mov r0, #2
	orr r0, r1
	strb r0, [r2]
	pop {r4, pc}
_0225A846:
	ldr r0, [r1, #0x6c]
	cmp r0, #0
	beq _0225A86A
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225A86A
	add r0, r4, #0
	bl ov27_0225B4D8
	cmp r0, #0
	beq _0225A86A
	add r0, r4, #0
	bl ov27_0225B404
	pop {r4, pc}
_0225A866:
	bl GF_AssertFail
_0225A86A:
	pop {r4, pc}
	thumb_func_end ov27_0225A7FC

