#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02224254
	.public ov08_0222458C

	.text

	.text
	thumb_func_start ov08_02224254
ov08_02224254: ; 0x02224254
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0xca
	lsl r0, r0, #2
	mov r2, #0
	add r0, r5, r0
	add r3, r2, #0
	add r4, r1, #0
	bl ov08_0222458C
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _02224510 ; =0x00000448
	mov r3, #9
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	str r3, [sp, #4]
	bl ov08_0222458C
	mov r0, #0x10
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	ldr r0, _02224514 ; =0x00000568
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x12
	bl ov08_0222458C
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _02224518 ; =0x00000688
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x1b
	bl ov08_0222458C
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _0222451C ; =0x0000078C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x20
	bl ov08_0222458C
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x89
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x25
	bl ov08_0222458C
	mov r0, #0x1a
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r0, _02224520 ; =0x00000994
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x2a
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224524 ; =0x00000A98
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x39
	bl ov08_0222458C
	ldr r0, _02224528 ; =0x00000ACA
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x39
	str r2, [sp, #4]
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222452C ; =0x00000AFC
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x39
	bl ov08_0222458C
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02224530 ; =0x00000B2E
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0
	bl ov08_0222458C
	ldr r0, _02224534 ; =0x00000BEE
	mov r2, #0x10
	str r2, [sp]
	mov r3, #6
	add r0, r5, r0
	add r1, r4, #0
	str r3, [sp, #4]
	bl ov08_0222458C
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02224538 ; =0x00000CAE
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0xc
	bl ov08_0222458C
	mov r2, #0x10
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _0222453C ; =0x00000D6E
	add r1, r4, #0
	add r0, r5, r0
	mov r3, #0x12
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224540 ; =0x00000E2E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x2f
	bl ov08_0222458C
	mov r0, #0xe6
	mov r2, #5
	lsl r0, r0, #4
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x2f
	str r2, [sp, #4]
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224544 ; =0x00000E92
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x2f
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224548 ; =0x00000EC4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x2f
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222454C ; =0x00000EF6
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	mov r3, #0x34
	bl ov08_0222458C
	ldr r0, _02224550 ; =0x00000F28
	mov r2, #5
	str r2, [sp]
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0x34
	str r2, [sp, #4]
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224554 ; =0x00000F5A
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xa
	mov r3, #0x34
	bl ov08_0222458C
	mov r0, #5
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224558 ; =0x00000F8C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0xf
	mov r3, #0x34
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222455C ; =0x00000FBE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x2f
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224560 ; =0x00000FDE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x2f
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224564 ; =0x00000FFE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x2f
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224568 ; =0x0000101E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x33
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222456C ; =0x0000103E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x33
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224570 ; =0x0000105E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x33
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224574 ; =0x0000107E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x37
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224578 ; =0x0000109E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x37
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0222457C ; =0x000010BE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x37
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224580 ; =0x000010DE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x14
	mov r3, #0x3b
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224584 ; =0x000010FE
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x18
	mov r3, #0x3b
	bl ov08_0222458C
	mov r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02224588 ; =0x0000111E
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0x1c
	mov r3, #0x3b
	bl ov08_0222458C
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02224510: .word 0x00000448
_02224514: .word 0x00000568
_02224518: .word 0x00000688
_0222451C: .word 0x0000078C
_02224520: .word 0x00000994
_02224524: .word 0x00000A98
_02224528: .word 0x00000ACA
_0222452C: .word 0x00000AFC
_02224530: .word 0x00000B2E
_02224534: .word 0x00000BEE
_02224538: .word 0x00000CAE
_0222453C: .word 0x00000D6E
_02224540: .word 0x00000E2E
_02224544: .word 0x00000E92
_02224548: .word 0x00000EC4
_0222454C: .word 0x00000EF6
_02224550: .word 0x00000F28
_02224554: .word 0x00000F5A
_02224558: .word 0x00000F8C
_0222455C: .word 0x00000FBE
_02224560: .word 0x00000FDE
_02224564: .word 0x00000FFE
_02224568: .word 0x0000101E
_0222456C: .word 0x0000103E
_02224570: .word 0x0000105E
_02224574: .word 0x0000107E
_02224578: .word 0x0000109E
_0222457C: .word 0x000010BE
_02224580: .word 0x000010DE
_02224584: .word 0x000010FE
_02224588: .word 0x0000111E
	thumb_func_end ov08_02224254

	thumb_func_start ov08_0222458C
ov08_0222458C: ; 0x0222458C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r0, sp, #8
	mov lr, r3
	ldrb r3, [r0, #0x14]
	mov r6, #0
	mov ip, r3
	cmp r3, #0
	ble _022245D8
	ldrb r3, [r0, #0x10]
	lsl r2, r2, #1
	add r7, r1, r2
_022245A4:
	mov r2, #0
	cmp r3, #0
	ble _022245CC
	mov r0, lr
	add r0, r0, r6
	lsl r0, r0, #6
	add r5, r7, r0
	add r0, r6, #0
	mul r0, r3
	lsl r1, r0, #1
	ldr r0, [sp]
	add r4, r0, r1
_022245BC:
	lsl r1, r2, #1
	ldrh r0, [r5, r1]
	strh r0, [r4, r1]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, r3
	blt _022245BC
_022245CC:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, ip
	cmp r6, r0
	blt _022245A4
_022245D8:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov08_0222458C

