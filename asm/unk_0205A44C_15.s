	.include "asm/macros.inc"
	.include "unk_0205A44C.inc"
	.include "global.inc"
	.public sub_0205A9A0
	.public sub_0205AA4C
	.extern _020FC9D4

	.text
	thumb_func_start sub_0205A9A0
sub_0205A9A0: ; 0x0205A9A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r3, #0
	mov r0, #0x11
	add r6, r1, #0
	add r2, r3, #0
	add r4, r5, #0
	lsl r0, r0, #4
_0205A9B0:
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0205A9B8
	add r3, r3, #1
_0205A9B8:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, #0xa
	blt _0205A9B0
	cmp r3, #0
	beq _0205A9C8
	mov r0, #0xa6
	pop {r4, r5, r6, pc}
_0205A9C8:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl MailMsg_IsInit
	cmp r0, #0
	bne _0205A9DA
	mov r0, #0xa7
	pop {r4, r5, r6, pc}
_0205A9DA:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl MailMsg_GetMsgBank
	cmp r0, #4
	beq _0205AA0C
	ldr r0, [r5, #8]
	bl PlayerProfile_GetAvatar
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl PlayerProfile_GetTrainerGender
	add r1, r4, #0
	mov r2, #2
	bl GetUnionRoomAvatarAttrBySprite
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl BufferTrainerClassName
	mov r0, #0xa8
	pop {r4, r5, r6, pc}
_0205AA0C:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	bl MailMsg_GetMsgNo
	add r4, r0, #0
	cmp r4, #0x14
	blt _0205AA1E
	mov r4, #0
_0205AA1E:
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl MailMsg_GetFieldI
	add r2, r0, #0
	ldr r0, _0205AA44 ; =0x0000FFFF
	cmp r2, r0
	beq _0205AA3A
	add r0, r6, #0
	mov r1, #0
	bl BufferECWord
_0205AA3A:
	ldr r0, _0205AA48 ; =_020FC9D4
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
	nop
_0205AA44: .word 0x0000FFFF
_0205AA48: .word _020FC9D4
	thumb_func_end sub_0205A9A0

	thumb_func_start sub_0205AA4C
sub_0205AA4C: ; 0x0205AA4C
	push {r3, r4}
	mov r3, #0
	strb r3, [r0, #0x1c]
	add r4, r0, #0
	add r2, r3, #0
_0205AA56:
	stmia r4!, {r2}
	add r1, r0, r3
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x10]
	add r3, r3, #1
	strb r2, [r1, #0x14]
	cmp r3, #4
	blt _0205AA56
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205AA4C

