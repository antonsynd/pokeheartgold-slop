	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02244BBC

	.text

	thumb_func_start ov40_02244BBC
ov40_02244BBC: ; 0x02244BBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02244C34 ; =_021D2AF8
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _02244BCE
	bl GF_AssertFail
_02244BCE:
	ldr r1, _02244C34 ; =_021D2AF8
	mov r2, #1
	ldr r0, [r1]
	add r0, #0xab
	strb r2, [r0]
	ldr r0, [r1]
	ldr r2, _02244C38 ; =0x0000E281
	add r0, #0xcc
	strh r2, [r0]
	ldr r1, [r1]
	add r0, r5, #0
	add r1, #0x84
	mov r2, #0x58
	bl SaveArray_CalcCRC16
	ldr r1, _02244C34 ; =_021D2AF8
	ldr r3, _02244C3C ; =0x0000FFFF
	ldr r2, [r1]
	add r2, #0xe4
	strh r0, [r2]
	ldr r0, [r1]
	ldr r1, _02244C40 ; =0x00001D4C
	ldrh r2, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_02030250
	mov r0, #8
	bl sub_0201A728
	ldr r1, _02244C34 ; =_021D2AF8
	add r0, r5, #0
	ldr r1, [r1]
	add r2, r4, #0
	bl sub_02027134
	add r4, r0, #0
	cmp r4, #2
	bne _02244C2A
	add r0, r5, #0
	bl SaveGameNormal
	add r4, r0, #0
_02244C2A:
	mov r0, #8
	bl sub_0201A738
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244C34: .word _021D2AF8
_02244C38: .word 0x0000E281
_02244C3C: .word 0x0000FFFF
_02244C40: .word 0x00001D4C
	thumb_func_end ov40_02244BBC

