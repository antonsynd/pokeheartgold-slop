#include "msgdata/msg/msg_0252.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public ov52_021E8BDC
	.public ov52_021E8CBC
	.extern _021E94AC
	.extern ov52_021E8CDC
	.extern ov52_021E927C
	.extern ov52_021E9364
	.extern ov52_021E94B2
	.extern ov52_021E94BA

	.text

	.text
	thumb_func_start ov52_021E8BDC
ov52_021E8BDC: ; 0x021E8BDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r0, _021E8CA4 ; =ov52_021E94BA
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021E8C30
	cmp r1, #0
	bne _021E8C22
	mov r0, #0xc3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021E8C30
	add r0, r4, #0
	mov r1, #msg_0252_00010 ; Is this OK?
	bl ov52_021E927C
	mov r0, #0xc3
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0xbc
	add r0, r4, r0
	mov r1, #1
	bl ov52_021E8CDC
	ldr r0, _021E8CA8 ; =0x000005DD
	bl PlaySE
	b _021E8C30
_021E8C22:
	ldr r0, _021E8CAC ; =0x0000431A
	strb r1, [r4, r0]
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov52_021E8CBC
_021E8C30:
	ldr r0, _021E8CB0 ; =ov52_021E94B2
	bl TouchscreenHitbox_FindRectAtTouchHeld
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E8C44
	add r0, r4, #0
	bl ov52_021E9364
_021E8C44:
	add r0, sp, #0
	mov r1, #4
	mov r2, #1
	bl sub_02021280
	cmp r0, #1
	bne _021E8CA0
	add r7, sp, #0
	ldrh r3, [r7]
	mov r1, #0
	cmp r3, #0
	ble _021E8C78
	ldr r5, _021E8CB4 ; =0x0000431C
	add r2, sp, #0
	add r6, r5, #0
	add r6, #8
_021E8C64:
	ldrh r3, [r2, #2]
	add r0, r4, r1
	add r1, r1, #1
	strb r3, [r0, r5]
	ldrh r3, [r2, #4]
	add r2, #8
	strb r3, [r0, r6]
	ldrh r3, [r7]
	cmp r1, r3
	blt _021E8C64
_021E8C78:
	ldr r0, _021E8CB8 ; =0x0000432C
	mov r2, #0xf0
	ldrb r1, [r4, r0]
	bic r1, r2
	lsl r2, r3, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, r0]
	ldrb r3, [r4, r0]
	mov r1, #0xf
	bic r3, r1
	add r1, r0, #0
	sub r1, #0x12
	ldrb r2, [r4, r1]
	mov r1, #0xf
	and r1, r2
	orr r1, r3
	strb r1, [r4, r0]
_021E8CA0:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8CA4: .word ov52_021E94BA
_021E8CA8: .word 0x000005DD
_021E8CAC: .word 0x0000431A
_021E8CB0: .word ov52_021E94B2
_021E8CB4: .word 0x0000431C
_021E8CB8: .word 0x0000432C
	thumb_func_end ov52_021E8BDC

	thumb_func_start ov52_021E8CBC
ov52_021E8CBC: ; 0x021E8CBC
	push {r3, lr}
	ldr r2, _021E8CD8 ; =_021E94AC
	cmp r1, #0
	ldr r0, [r0]
	bne _021E8CD0
	ldrh r1, [r2, #4]
	add r1, r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r3, pc}
_021E8CD0:
	ldrh r1, [r2, #4]
	bl Sprite_SetAnimCtrlSeq
	pop {r3, pc}
	.balign 4, 0
_021E8CD8: .word _021E94AC
	thumb_func_end ov52_021E8CBC

