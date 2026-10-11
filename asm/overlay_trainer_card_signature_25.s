#include "msgdata/msg/msg_0252.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public ov52_021E9158
	.extern ov52_021E8FAC
	.extern ov52_021E9124
	.extern ov52_021E95A0

	.text

	.text
	thumb_func_start ov52_021E9158
ov52_021E9158: ; 0x021E9158
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	mov r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	add r5, r1, #0
	add r6, r2, #0
_021E916E:
	ldrb r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	beq _021E91D2
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _021E9188
	ldrb r0, [r6]
	sub r0, #0x20
	str r0, [sp, #0x28]
	ldrb r0, [r6, #1]
	sub r0, #0x48
	str r0, [sp, #0x24]
_021E9188:
	ldrb r0, [r5, #0x10]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1c
	cmp r1, #0
	ble _021E91D2
	mov r0, #1
	str r0, [sp, #0x1c]
	cmp r1, #0
	ble _021E91D2
_021E919C:
	add r0, sp, #0x28
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r6, #2]
	add r3, r5, r4
	str r0, [sp, #0xc]
	ldrb r1, [r5, #0x10]
	ldrb r3, [r3, #8]
	add r0, r7, #0
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsl r2, r1, #4
	ldr r1, _021E9214 ; =ov52_021E95A0
	sub r3, #0x48
	add r1, r1, r2
	ldrb r2, [r5, r4]
	sub r2, #0x20
	bl ov52_021E8FAC
	ldrb r0, [r5, #0x10]
	add r4, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r4, r0
	blt _021E919C
_021E91D2:
	ldr r0, [sp, #0x20]
	add r5, #0x11
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _021E916E
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E91F2
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021E91F2
	add r0, r7, #0
	bl CopyWindowToVram
_021E91F2:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl ov52_021E9124
	mov r3, #0
	mov r1, #0xf0
_021E91FE:
	ldr r0, [sp, #0x10]
	add r3, r3, #1
	ldrb r2, [r0, #0x10]
	bic r2, r1
	strb r2, [r0, #0x10]
	add r0, #0x11
	str r0, [sp, #0x10]
	cmp r3, #5
	blt _021E91FE
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9214: .word ov52_021E95A0
	thumb_func_end ov52_021E9158

