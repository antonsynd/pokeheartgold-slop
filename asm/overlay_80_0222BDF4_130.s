	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E400

	.text

	thumb_func_start ov80_0222E400
ov80_0222E400: ; 0x0222E400
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	add r7, r3, #0
	bl MailMsg_Init
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MailMsg_SetMsgBankAndNum
	add r0, sp, #0
	mov r1, #0
	add r2, r7, #0
	bl MailMsg_SetFieldI
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, sp, #0
	mov r1, #1
	bl MailMsg_SetFieldI
	add r0, sp, #0
	mov r1, #0x20
	bl MailMsg_GetExpandedString
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl String_Copy
	add r0, r4, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0222E400

