	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A134
	.public ov90_0225C31C

	.text

	thumb_func_start ov90_0225A134
ov90_0225A134: ; 0x0225A134
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0225A148
	bl GF_AssertFail
_0225A148:
	mov r1, #0xc1
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02014A4C
	ldr r1, _0225A194 ; =ov90_0225C31C
	add r5, r0, #0
	mov r6, #0
	mov r7, #0xc
_0225A15C:
	ldrh r0, [r4, #0x18]
	sub r3, r6, #1
	add r2, r0, #0
	mul r2, r7
	ldrb r0, [r4, #0x1b]
	add r2, r1, r2
	add r0, r0, r2
	sub r0, #0xc
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r2, r3, r0
	bpl _0225A176
	add r2, #0xc0
_0225A176:
	ldr r0, [r4, #0x1c]
	lsl r2, r2, #1
	asr r0, r0, #0xc
	add r6, r6, #1
	strh r0, [r5, r2]
	cmp r6, #0x30
	blt _0225A15C
	mov r1, #0xc1
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl sub_02014A78
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A194: .word ov90_0225C31C
	thumb_func_end ov90_0225A134

