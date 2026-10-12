#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public InitApricornBox
	.public sub_02031B3C
	.extern sub_02031B5C
	.extern sub_020325CC

	.text
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

