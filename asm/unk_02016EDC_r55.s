	.include "asm/macros.inc"
	.include "unk_02016EDC.inc"
	.include "global.inc"
	.public sub_02017BF8
	.public sub_02017C78
	.extern _020F61BC
	.extern _020F61C0
	.extern _020F61C4
	.extern sub_02017220
	.extern sub_0201726C
	.extern sub_02017280

	.text
	thumb_func_start sub_02017BF8
sub_02017BF8: ; 0x02017BF8
	push {r3, lr}
	sub r0, #0x23
	cmp r0, #4
	bhi _02017C70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017C0C: ; jump table
	.short _02017C16 - _02017C0C - 2 ; case 0
	.short _02017C28 - _02017C0C - 2 ; case 1
	.short _02017C3A - _02017C0C - 2 ; case 2
	.short _02017C4C - _02017C0C - 2 ; case 3
	.short _02017C5E - _02017C0C - 2 ; case 4
_02017C16:
	add r0, r1, #0
	add r0, #0x3c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x68
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x68]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C28:
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x6c
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x6c]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C3A:
	add r0, r1, #0
	add r0, #0x44
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x70
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C4C:
	add r0, r1, #0
	add r0, #0x48
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x74
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C5E:
	add r0, r1, #0
	add r0, #0x4c
	str r0, [r1, #0x24]
	add r0, r2, #0
	add r0, #0x78
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x78]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02017C70:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02017BF8

	thumb_func_start sub_02017C78
sub_02017C78: ; 0x02017C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0
	bl sub_02017220
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2c
	bl sub_02017280
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, #0x2d
	bl sub_02017280
	mov r0, #0xc
	mul r0, r6
	ldr r1, _02017D14 ; =_020F61C0
	str r0, [sp]
	ldr r0, [r1, r0]
	mov r4, #0
	cmp r0, #0
	ble _02017CCE
	ldr r1, _02017D18 ; =_020F61BC
	ldr r0, [sp]
	add r6, r1, r0
	ldr r0, [sp, #4]
	add r7, r0, #4
_02017CB8:
	lsl r1, r4, #2
	add r0, r5, #0
	add r1, r7, r1
	bl sub_0201726C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r6, #4]
	cmp r4, r0
	blt _02017CB8
_02017CCE:
	ldr r1, _02017D1C ; =_020F61C4
	ldr r0, [sp]
	add r2, r5, #0
	ldr r0, [r1, r0]
	lsl r1, r0, #2
	ldr r0, [sp, #4]
	add r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02017BF8
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _02017D00
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r0, #0
	ldr r2, [r2, #0x50]
	blx r2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02017D00:
	ldr r0, [sp, #4]
	add r0, #0x2d
	ldrb r0, [r0]
	sub r1, r0, #1
	ldr r0, [sp, #4]
	add r0, #0x2d
	str r0, [sp, #4]
	strb r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02017D14: .word _020F61C0
_02017D18: .word _020F61BC
_02017D1C: .word _020F61C4
	thumb_func_end sub_02017C78

