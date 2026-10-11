	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E62F4
	.extern _0221A680
	.extern ov00_021E62D8

	.text

	.text
	thumb_func_start ov00_021E62F4
ov00_021E62F4: ; 0x021E62F4
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r4, r5, #0
_021E62FA:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl ov00_021F9988
	add r5, r5, #1
	cmp r5, #4
	blt _021E62FA
	bl ov00_021EE490
	cmp r0, #0
	bne _021E6356
	ldr r6, _021E6378 ; =_0221A680
	ldr r0, _021E637C ; =0x0000107C
	ldr r1, [r6]
	mov r5, #0
	ldr r0, [r1, r0]
	cmp r0, #0
	ble _021E6366
	ldr r7, _021E637C ; =0x0000107C
	mov r4, #1
_021E6324:
	bl ov00_021EE490
	cmp r5, r0
	beq _021E634A
	bl ov00_021EE4FC
	add r1, r4, #0
	lsl r1, r5
	tst r0, r1
	beq _021E634A
	lsl r0, r5, #0x18
	ldr r1, _021E6380 ; =0x00002710
	lsr r0, r0, #0x18
	bl ov00_021F9988
	cmp r0, #0
	bne _021E634A
	bl GF_AssertFail
_021E634A:
	ldr r0, [r6]
	add r5, r5, #1
	ldr r0, [r0, r7]
	cmp r5, r0
	blt _021E6324
	b _021E6366
_021E6356:
	ldr r1, _021E6380 ; =0x00002710
	mov r0, #0
	bl ov00_021F9988
	cmp r0, #0
	bne _021E6366
	bl GF_AssertFail
_021E6366:
	ldr r0, _021E6378 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E6384 ; =0x000010A8
	str r2, [r1, r0]
	bl ov00_021E62D8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6378: .word _0221A680
_021E637C: .word 0x0000107C
_021E6380: .word 0x00002710
_021E6384: .word 0x000010A8
	thumb_func_end ov00_021E62F4

