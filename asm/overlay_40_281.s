	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02244AB0

	.text

	thumb_func_start ov40_02244AB0
ov40_02244AB0: ; 0x02244AB0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r1, #0
	ldrh r1, [r4]
	add r7, r0, #0
	add r5, r2, #0
	cmp r1, #0
	beq _02244AC6
	cmp r1, #1
	beq _02244B1A
	b _02244B28
_02244AC6:
	ldr r0, _02244B2C ; =_021D2AF8
	ldr r0, [r0]
	cmp r0, #0
	bne _02244AD2
	bl GF_AssertFail
_02244AD2:
	cmp r5, #1
	bne _02244AFA
	ldr r1, _02244B2C ; =_021D2AF8
	ldr r2, _02244B30 ; =0x0000E281
	ldr r0, [r1]
	add r0, #0xab
	strb r5, [r0]
	ldr r0, [r1]
	add r0, #0xcc
	strh r2, [r0]
	ldr r1, [r1]
	add r0, r7, #0
	add r1, #0x84
	mov r2, #0x58
	bl SaveArray_CalcCRC16
	ldr r1, _02244B2C ; =_021D2AF8
	ldr r1, [r1]
	add r1, #0xe4
	strh r0, [r1]
_02244AFA:
	ldr r0, _02244B2C ; =_021D2AF8
	ldr r1, _02244B34 ; =0x00001D4C
	ldr r0, [r0]
	ldr r2, _02244B38 ; =0x0000FFFF
	ldrh r3, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r2, r3
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_02030250
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02244B28
_02244B1A:
	ldr r1, _02244B2C ; =_021D2AF8
	ldr r3, [sp, #0x18]
	ldr r1, [r1]
	add r2, r6, #0
	bl sub_0202FDA4
	pop {r3, r4, r5, r6, r7, pc}
_02244B28:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02244B2C: .word _021D2AF8
_02244B30: .word 0x0000E281
_02244B34: .word 0x00001D4C
_02244B38: .word 0x0000FFFF
	thumb_func_end ov40_02244AB0

