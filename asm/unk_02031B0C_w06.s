#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public ApricornBox_CountApricorn
	.public ApricornBox_GiveApricorn
	.public ApricornBox_TakeApricorn

	.text
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

