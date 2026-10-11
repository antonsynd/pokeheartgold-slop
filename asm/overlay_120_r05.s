	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225F14C
	.extern ov120_0225F240

	.text

	.text
	thumb_func_start ov120_0225F14C
ov120_0225F14C: ; 0x0225F14C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bne _0225F158
	bl GF_AssertFail
_0225F158:
	mov r1, #0x11
	lsl r1, r1, #4
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0225F168
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0225F168:
	sub r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #0x30
	bhs _0225F1CC
	sub r0, r1, #2
	ldrsb r0, [r4, r0]
	sub r2, r0, #1
	sub r0, r1, #2
	strb r2, [r4, r0]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _0225F1CC
	sub r0, r1, #3
	ldrb r2, [r4, r0]
	sub r0, r1, #2
	strb r2, [r4, r0]
	add r0, r4, #4
	bl ov120_0225F240
	lsr r3, r0, #0x1f
	lsl r1, r0, #0x1d
	lsr r0, r0, #3
	sub r1, r1, r3
	mov r2, #0x1d
	ror r1, r2
	add r1, r3, r1
	lsl r1, r1, #0x15
	asr r3, r1, #0x10
	lsl r0, r0, #0x15
	asr r1, r0, #0x10
	add r0, r3, #0
	add r0, #0x20
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r2, #0xf2
	str r0, [sp]
	ldrb r0, [r4, r2]
	add r2, r1, #0
	add r2, #0x20
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r4]
	asr r2, r2, #0x10
	bl ov01_021F0960
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
_0225F1CC:
	mov r0, #0x43
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0x30
	blo _0225F1E2
	mov r1, #0
	add r0, r0, #4
	strb r1, [r4, r0]
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_0225F1E2:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov120_0225F14C

