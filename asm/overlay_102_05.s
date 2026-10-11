	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7934
	.public ov102_021E7968
	.public ov102_021E79A0

	.text

	thumb_func_start ov102_021E7934
ov102_021E7934: ; 0x021E7934
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl MailMsg_GetMsgBank
	strh r0, [r5]
	mov r0, #0x14
	strb r0, [r5, #3]
	add r0, r4, #0
	bl MailMsg_GetMsgNo
	mov r6, #0
	strb r0, [r5, #2]
	add r4, r5, #4
	add r0, r6, #0
	mov r1, #3
_021E7956:
	ldrsb r3, [r4, r0]
	ldrsb r2, [r5, r1]
	add r6, r6, #1
	add r2, r3, r2
	strb r2, [r4]
	cmp r6, #5
	blt _021E7956
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov102_021E7934

	thumb_func_start ov102_021E7968
ov102_021E7968: ; 0x021E7968
	add r2, r0, #0
	mov r0, #2
	ldrsb r3, [r2, r0]
	add r3, r3, #1
	strb r3, [r2, #2]
	ldrsb r3, [r2, r0]
	mov r0, #3
	ldrsb r0, [r2, r0]
	cmp r3, r0
	blt _021E798E
	mov r3, #0
	strb r3, [r2, #2]
	ldrsh r0, [r2, r3]
	add r0, r0, #1
	strh r0, [r2]
	ldrsh r0, [r2, r3]
	cmp r0, #5
	blt _021E798E
	strh r3, [r2]
_021E798E:
	add r0, r1, #0
	mov r1, #0
	mov r3, #2
	ldrsh r1, [r2, r1]
	ldrsb r2, [r2, r3]
	ldr r3, _021E799C ; =MailMsg_SetMsgBankAndNum
	bx r3
	.balign 4, 0
_021E799C: .word MailMsg_SetMsgBankAndNum
	thumb_func_end ov102_021E7968

	thumb_func_start ov102_021E79A0
ov102_021E79A0: ; 0x021E79A0
	add r2, r0, #0
	mov r0, #2
	ldrsb r3, [r2, r0]
	sub r3, r3, #1
	strb r3, [r2, #2]
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _021E79CA
	mov r0, #0
	ldrsh r3, [r2, r0]
	sub r3, r3, #1
	strh r3, [r2]
	ldrsh r0, [r2, r0]
	cmp r0, #0
	bge _021E79C2
	mov r0, #4
	strh r0, [r2]
_021E79C2:
	mov r0, #3
	ldrsb r0, [r2, r0]
	sub r0, r0, #1
	strb r0, [r2, #2]
_021E79CA:
	add r0, r1, #0
	mov r1, #0
	mov r3, #2
	ldrsh r1, [r2, r1]
	ldrsb r2, [r2, r3]
	ldr r3, _021E79D8 ; =MailMsg_SetMsgBankAndNum
	bx r3
	.balign 4, 0
_021E79D8: .word MailMsg_SetMsgBankAndNum
	thumb_func_end ov102_021E79A0

