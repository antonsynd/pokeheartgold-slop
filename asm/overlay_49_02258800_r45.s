	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_0225904C
	.extern ov49_022589AC
	.extern ov49_022589C4
	.extern ov49_02269654

    .text

	.text
	thumb_func_start ov49_0225904C
ov49_0225904C: ; 0x0225904C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	ldr r0, [r1]
	str r2, [sp]
	str r3, [sp, #4]
	bl ov42_022282DC
	add r4, sp, #0x1c
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	mov r5, sp
	ldr r7, _0225912C ; =ov49_02269654
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	sub r5, r5, #4
	strh r0, [r4, #0xe]
	mov r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0xc]
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0xe]
	str r0, [sp, #0x18]
_0225907E:
	ldr r0, [sp, #0x14]
	strh r0, [r5]
	ldr r0, [sp, #0x18]
	strh r0, [r5, #2]
	ldrb r1, [r7]
	ldr r0, [r5]
	bl ov42_02228270
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0xc]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov49_022589AC
	cmp r0, #1
	beq _02259118
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov49_022589C4
	cmp r0, #0
	beq _022590E8
	cmp r0, #0x2a
	bne _02259118
_022590E8:
	ldrh r1, [r4, #8]
	ldr r0, [r6]
	strh r1, [r5]
	ldrh r1, [r4, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5]
	bl ov42_022284A4
	cmp r0, #0
	bne _02259118
	ldr r1, _0225912C ; =ov49_02269654
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	str r1, [r0]
	add r1, sp, #0x1c
	ldr r0, [sp, #4]
	ldrh r2, [r1, #8]
	add sp, #0x2c
	strh r2, [r0]
	ldrh r1, [r1, #0xa]
	strh r1, [r0, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02259118:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225907E
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225912C: .word ov49_02269654
	thumb_func_end ov49_0225904C

