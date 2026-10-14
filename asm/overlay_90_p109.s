	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B2A8
	.extern ov90_0225C1EC

	.text

	.text
	thumb_func_start ov90_0225B2A8
ov90_0225B2A8: ; 0x0225B2A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225B320 ; =0x0000065E
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _0225B31E
	sub r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0225B2C0
	cmp r0, #8
	bne _0225B30A
_0225B2C0:
	ldrb r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _0225B30A
	ldr r4, _0225B324 ; =ov90_0225C1EC
	ldr r7, _0225B328 ; =0x0000065C
_0225B2CC:
	add r0, r5, r6
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225B300
	ldr r0, _0225B32C ; =0x00000658
	ldrb r3, [r4]
	ldr r0, [r5, r0]
	ldr r2, [r0, #0xc]
	ldrh r0, [r5, r7]
	lsl r1, r3, #5
	cmp r0, #0
	bne _0225B2EA
	add r0, r3, #3
	b _0225B2EC
_0225B2EA:
	add r0, r3, #7
_0225B2EC:
	lsl r0, r0, #5
	add r2, r2, r0
	mov r0, #0xf
	mov r3, #0x20
	bl GF_CreateNewVramTransferTask
	cmp r0, #0
	bne _0225B300
	bl GF_AssertFail
_0225B300:
	ldrb r0, [r5, #0x14]
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, r0
	blt _0225B2CC
_0225B30A:
	ldr r3, _0225B328 ; =0x0000065C
	ldrh r0, [r5, r3]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5, r3]
_0225B31E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B320: .word 0x0000065E
_0225B324: .word ov90_0225C1EC
_0225B328: .word 0x0000065C
_0225B32C: .word 0x00000658
	thumb_func_end ov90_0225B2A8

