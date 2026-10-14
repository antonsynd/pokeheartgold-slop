#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA73C
	.extern ov15_021F9F08
	.extern ov15_021FA074
	.extern ov15_021FA0E4
	.extern ov15_021FA170
	.extern ov15_021FA68C
	.extern ov15_021FD404
	.extern ov15_021FD574
	.extern ov15_021FD774
	.extern ov15_021FD7D0
	.extern ov15_021FDAF4
	.extern ov15_021FDF88
	.extern ov15_021FF364
	.extern ov15_021FF6BC
	.extern ov15_02200030
	.extern ov15_02200140

	.text

	.text
	thumb_func_start ov15_021FA73C
ov15_021FA73C: ; 0x021FA73C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r2, #0
	mov r6, #1
	cmp r1, #0x10
	bls _021FA74A
	b _021FA92A
_021FA74A:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021FA756: ; jump table
	.short _021FA778 - _021FA756 - 2 ; case 0
	.short _021FA778 - _021FA756 - 2 ; case 1
	.short _021FA778 - _021FA756 - 2 ; case 2
	.short _021FA778 - _021FA756 - 2 ; case 3
	.short _021FA778 - _021FA756 - 2 ; case 4
	.short _021FA778 - _021FA756 - 2 ; case 5
	.short _021FA778 - _021FA756 - 2 ; case 6
	.short _021FA778 - _021FA756 - 2 ; case 7
	.short _021FA856 - _021FA756 - 2 ; case 8
	.short _021FA856 - _021FA756 - 2 ; case 9
	.short _021FA856 - _021FA756 - 2 ; case 10
	.short _021FA856 - _021FA756 - 2 ; case 11
	.short _021FA856 - _021FA756 - 2 ; case 12
	.short _021FA856 - _021FA756 - 2 ; case 13
	.short _021FA8C4 - _021FA756 - 2 ; case 14
	.short _021FA892 - _021FA756 - 2 ; case 15
	.short _021FA8F6 - _021FA756 - 2 ; case 16
_021FA778:
	bl ov15_021FA68C
	sub r1, r6, #2
	cmp r0, r1
	bne _021FA786
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FA786:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r1, #0x64
	ldrb r1, [r1]
	cmp r0, r1
	bne _021FA7A0
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	bne _021FA7A0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021FA7A0:
	add r2, #0x64
	strb r0, [r2]
	add r0, r4, #0
	bl ov15_021F9F08
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r5, r2, r0
	add r0, r4, #0
	bl ov15_021FA074
	mov r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r3, r1, #0
	bl ov15_021FD574
	mov r2, #6
	ldrsh r1, [r5, r2]
	add r0, r4, #0
	sub r2, r2, #7
	mov r3, #0
	bl ov15_021FF364
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_02200030
	mov r2, #6
	ldrb r1, [r5, #9]
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0
	bl ov15_021FF6BC
	add r0, r4, #0
	bl ov15_021FA074
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #1
	bl ov15_02200140
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r2, #0x64
	ldrb r2, [r2]
	mov r1, #1
	bl ov15_021FD404
	ldr r0, _021FA930 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov15_021FA170
	ldr r0, _021FA934 ; =0x00000644
	ldr r1, [r4, r0]
	cmp r1, #8
	blt _021FA838
	add r0, r4, #0
	bl ov15_021FA0E4
_021FA838:
	add r0, r4, #0
	bl ov15_021FDF88
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r0, _021FA938 ; =0x00000808
	add r1, #0x64
	ldrb r1, [r1]
	add r0, r4, r0
	mov r2, #7
	add r1, r1, #1
	bl ov15_021FDAF4
	b _021FA92A
_021FA856:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	sub r1, #8
	add r3, r2, #0
	add r3, #0x64
	ldrb r5, [r3]
	mov r3, #0xc
	add r0, r2, #4
	mul r3, r5
	add r3, r0, r3
	mov r0, #6
	ldrsh r0, [r3, r0]
	add r0, r0, r1
	ldrb r1, [r3, #9]
	cmp r0, r1
	bge _021FA88A
	ldr r1, [r3]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	add r2, #0x66
	strh r0, [r2]
	ldr r0, _021FA930 ; =0x000005DC
	strb r6, [r7]
	bl PlaySE
_021FA88A:
	add r0, r4, #0
	bl ov15_021FA170
	b _021FA92A
_021FA892:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xd]
	cmp r0, #6
	bls _021FA92A
	ldr r0, _021FA930 ; =0x000005DC
	bl PlaySE
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add r6, r0, #0
	b _021FA92A
_021FA8C4:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xd]
	cmp r0, #6
	bls _021FA92A
	ldr r0, _021FA930 ; =0x000005DC
	bl PlaySE
	mov r0, #0x1f
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add r6, r0, #0
	b _021FA92A
_021FA8F6:
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r3, #0
	add r2, #0x66
	strh r3, [r2]
	ldr r1, [r4, r1]
	mov r2, #5
	add r1, #0x68
	strh r2, [r1]
	ldr r1, [sp, #0x1c]
	bl ov15_021FD774
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add r6, r0, #0
_021FA92A:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FA930: .word 0x000005DC
_021FA934: .word 0x00000644
_021FA938: .word 0x00000808
	thumb_func_end ov15_021FA73C

