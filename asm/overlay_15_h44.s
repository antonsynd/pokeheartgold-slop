#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB060
	.extern ov15_021F9F08
	.extern ov15_021FA074
	.extern ov15_021FB114
	.extern ov15_021FD404
	.extern ov15_021FD574
	.extern ov15_021FED24
	.extern ov15_021FF364
	.extern ov15_021FF6BC
	.extern ov15_021FFECC
	.extern ov15_02200030
	.extern ov15_02200140

	.text

	.text
	thumb_func_start ov15_021FB060
ov15_021FB060: ; 0x021FB060
	push {r3, r4, r5, lr}
	mov r1, #0xd2
	add r5, r0, #0
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r5, r1]
	ldr r1, _021FB10C ; =0x00000671
	strb r3, [r5, r1]
	add r2, r1, #1
	strb r3, [r5, r2]
	add r1, r1, #3
	str r3, [r5, r1]
	bl ov15_021FB114
	add r0, r5, #0
	bl ov15_021F9F08
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	bl ov15_021FA074
	mov r1, #0
	add r2, r0, #0
	add r0, r5, #0
	add r3, r1, #0
	bl ov15_021FD574
	mov r2, #6
	ldrsh r1, [r4, r2]
	add r0, r5, #0
	sub r2, r2, #7
	mov r3, #0
	bl ov15_021FF364
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_02200030
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r2, #0x64
	ldrb r2, [r2]
	mov r1, #1
	bl ov15_021FD404
	mov r2, #6
	ldrb r1, [r4, #9]
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov15_021FF6BC
	add r0, r5, #0
	bl ov15_021FA074
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl ov15_02200140
	add r0, r5, #0
	bl ov15_021FED24
	ldr r1, _021FB110 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov15_021FFECC
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021FB10C: .word 0x00000671
_021FB110: .word 0x00000644
	thumb_func_end ov15_021FB060

