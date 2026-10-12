#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D8C

	.text

	.text
	thumb_func_start ov70_02238D8C
ov70_02238D8C: ; 0x02238D8C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	ble _02238DAA
	lsl r0, r1, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02238DB8
_02238DAA:
	lsl r0, r1, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02238DB8:
	bl _ffix
	str r0, [sp]
	cmp r5, #0
	ble _02238DD4
	lsl r0, r5, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02238DE2
_02238DD4:
	lsl r0, r5, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02238DE2:
	bl _ffix
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov70_02238D8C

