	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E6C60
	.extern ov67_021E6490
	.extern ov67_021E6530
	.extern ov67_021E6688
	.extern ov67_021E6C14

	.text

	.text
	thumb_func_start ov67_021E6C60
ov67_021E6C60: ; 0x021E6C60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021E6D1C ; =0x000004A8
	mov r1, #0
	add r6, r2, #0
	str r1, [r5, r0]
	cmp r4, #2
	bne _021E6C76
	cmp r6, #0
	beq _021E6C8E
_021E6C76:
	cmp r4, #5
	bne _021E6C7E
	cmp r6, #3
	beq _021E6C8E
_021E6C7E:
	cmp r4, #8
	bne _021E6C86
	cmp r6, #6
	beq _021E6C8E
_021E6C86:
	cmp r4, #0xb
	bne _021E6CB2
	cmp r6, #9
	bne _021E6CB2
_021E6C8E:
	mov r0, #0x4a
	lsl r0, r0, #4
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _021E6C9C
	sub r1, r1, #1
	b _021E6C9E
_021E6C9C:
	mov r1, #2
_021E6C9E:
	strh r1, [r5, r0]
	add r0, r5, #0
	bl ov67_021E6490
	add r0, r5, #0
	bl ov67_021E6530
	ldr r0, _021E6D1C ; =0x000004A8
	mov r1, #1
	str r1, [r5, r0]
_021E6CB2:
	cmp r4, #0
	bne _021E6CBA
	cmp r6, #2
	beq _021E6CD2
_021E6CBA:
	cmp r4, #3
	bne _021E6CC2
	cmp r6, #5
	beq _021E6CD2
_021E6CC2:
	cmp r4, #6
	bne _021E6CCA
	cmp r6, #8
	beq _021E6CD2
_021E6CCA:
	cmp r4, #9
	bne _021E6CF6
	cmp r6, #0xb
	bne _021E6CF6
_021E6CD2:
	mov r0, #0x4a
	lsl r0, r0, #4
	ldrh r1, [r5, r0]
	cmp r1, #2
	bhs _021E6CE0
	add r1, r1, #1
	b _021E6CE2
_021E6CE0:
	mov r1, #0
_021E6CE2:
	strh r1, [r5, r0]
	add r0, r5, #0
	bl ov67_021E6490
	add r0, r5, #0
	bl ov67_021E6530
	ldr r0, _021E6D1C ; =0x000004A8
	mov r1, #2
	str r1, [r5, r0]
_021E6CF6:
	cmp r4, #0xc
	bne _021E6CFE
	mov r1, #0x1e
	b _021E6D0A
_021E6CFE:
	mov r0, #0x4a
	lsl r0, r0, #4
	ldrh r1, [r5, r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r4, r0
_021E6D0A:
	add r0, r5, #0
	bl ov67_021E6688
	add r0, r5, #0
	add r1, r4, #0
	bl ov67_021E6C14
	pop {r4, r5, r6, pc}
	nop
_021E6D1C: .word 0x000004A8
	thumb_func_end ov67_021E6C60

