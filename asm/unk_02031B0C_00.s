#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public ApricornBox_CountApricorn
	.public ApricornBox_GiveApricorn
	.public ApricornBox_TakeApricorn
	.public InitApricornBox
	.public Save_ApricornBox_Get
	.public Save_ApricornBox_Init
	.public Save_ApricornBox_sizeof
	.public sub_02031B10
	.public sub_02031B3C
	.public sub_02031B5C
	.extern sub_020325CC

	.text
	thumb_func_start Save_ApricornBox_sizeof
Save_ApricornBox_sizeof: ; 0x02031B0C
	mov r0, #0x80
	bx lr
	thumb_func_end Save_ApricornBox_sizeof

	thumb_func_start sub_02031B10
sub_02031B10: ; 0x02031B10
	mov r0, #0x20
	bx lr
	thumb_func_end sub_02031B10

	thumb_func_start Save_ApricornBox_Get
Save_ApricornBox_Get: ; 0x02031B14
	ldr r3, _02031B1C ; =SaveArray_Get
	mov r1, #0x26
	bx r3
	nop
_02031B1C: .word SaveArray_Get
	thumb_func_end Save_ApricornBox_Get

	thumb_func_start InitApricornBox
InitApricornBox: ; 0x02031B20
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x80
	bl MI_CpuFill8
	add r0, r4, #0
	add r0, #0xc
	bl sub_02031B5C
	add r0, r4, #0
	bl sub_02031B3C
	pop {r4, pc}
	thumb_func_end InitApricornBox

	thumb_func_start sub_02031B3C
sub_02031B3C: ; 0x02031B3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x20
_02031B44:
	add r0, r5, #0
	bl sub_020325CC
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #3
	blt _02031B44
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02031B3C

	thumb_func_start Save_ApricornBox_Init
Save_ApricornBox_Init: ; 0x02031B54
	ldr r3, _02031B58 ; =InitApricornBox
	bx r3
	.balign 4, 0
_02031B58: .word InitApricornBox
	thumb_func_end Save_ApricornBox_Init

	thumb_func_start sub_02031B5C
sub_02031B5C: ; 0x02031B5C
	ldr r3, _02031B64 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #8
	bx r3
	.balign 4, 0
_02031B64: .word MI_CpuFill8
	thumb_func_end sub_02031B5C

	thumb_func_start ApricornBox_GiveApricorn
ApricornBox_GiveApricorn: ; 0x02031B68
	push {r3, lr}
	cmp r1, #7
	blt _02031B76
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_02031B76:
	ldrb r3, [r0, r1]
	add r2, r2, r3
	cmp r2, #0x63
	ble _02031B82
	mov r2, #0x63
	b _02031B82
_02031B82:
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	pop {r3, pc}
	thumb_func_end ApricornBox_GiveApricorn

	thumb_func_start ApricornBox_TakeApricorn
ApricornBox_TakeApricorn: ; 0x02031B88
	push {r3, lr}
	cmp r1, #7
	blt _02031B96
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_02031B96:
	ldrb r3, [r0, r1]
	cmp r3, r2
	blo _02031BA0
	sub r2, r3, r2
	strb r2, [r0, r1]
_02031BA0:
	ldrb r0, [r0, r1]
	pop {r3, pc}
	thumb_func_end ApricornBox_TakeApricorn

	thumb_func_start ApricornBox_CountApricorn
ApricornBox_CountApricorn: ; 0x02031BA4
	push {r3, lr}
	cmp r1, #7
	blt _02031BB2
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_02031BB2:
	ldrb r0, [r0, r1]
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ApricornBox_CountApricorn

