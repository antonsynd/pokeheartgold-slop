#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_022233DC
	.extern ov08_02225B98
	.extern ov08_02225BB8
	.extern ov08_02225C10

	.text

	.text
	thumb_func_start ov08_022233DC
ov08_022233DC: ; 0x022233DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _022233EE
	cmp r1, #1
	beq _022233F8
	cmp r1, #2
	beq _02223402
	b _0222340A
_022233EE:
	mov r1, #5
	add r0, #0x30
	ldr r6, _02223448 ; =ov08_02225BB8
	strb r1, [r0]
	b _0222340A
_022233F8:
	mov r1, #0x1a
	add r0, #0x30
	ldr r6, _0222344C ; =ov08_02225C10
	strb r1, [r0]
	b _0222340A
_02223402:
	ldr r6, _02223450 ; =ov08_02225B98
	mov r1, #4
	add r0, #0x30
	strb r1, [r0]
_0222340A:
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r0, #0xc]
	bl AllocWindows
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _02223446
_02223426:
	ldr r2, [r5, #0x2c]
	lsl r1, r4, #4
	add r1, r2, r1
	lsl r2, r4, #3
	ldr r0, [r5, #4]
	add r2, r6, r2
	bl AddWindow
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blo _02223426
_02223446:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02223448: .word ov08_02225BB8
_0222344C: .word ov08_02225C10
_02223450: .word ov08_02225B98
	thumb_func_end ov08_022233DC

