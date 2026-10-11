	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02036024
	.extern _021D4140

	.text
	thumb_func_start sub_02036024
sub_02036024: ; 0x02036024
	push {r4, lr}
	ldr r0, _020360D0 ; =_021D4140
	mov r4, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0203604E
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	beq _02036044
	bl ov00_021E6CB8
	mov r4, #1
	b _0203604E
_02036044:
	bl sub_0203507C
	cmp r0, #0
	beq _0203604E
	mov r4, #1
_0203604E:
	cmp r4, #0
	beq _020360CE
	bl sub_020379F8
	bl sub_020343E4
	ldr r0, _020360D0 ; =_021D4140
	mov r1, #0
	strb r1, [r0, #1]
	ldr r1, [r0, #8]
	ldr r0, _020360D4 ; =0x0000057C
	ldr r0, [r1, r0]
	bl SysTask_Destroy
	ldr r1, _020360D0 ; =_021D4140
	ldr r0, _020360D4 ; =0x0000057C
	ldr r2, [r1, #8]
	mov r3, #0
	str r3, [r2, r0]
	ldr r1, [r1, #8]
	sub r0, #0xec
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r0, _020360D0 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _020360D8 ; =0x00000494
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r0, _020360D0 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _020360DC ; =0x0000048C
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r0, _020360D0 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _020360E0 ; =0x00000488
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r0, _020360D0 ; =_021D4140
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_02033F90
	ldr r0, _020360D0 ; =_021D4140
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_02033F90
	ldr r0, _020360D0 ; =_021D4140
	ldr r0, [r0, #4]
	bl Heap_Free
	ldr r0, _020360D0 ; =_021D4140
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
_020360CE:
	pop {r4, pc}
	.balign 4, 0
_020360D0: .word _021D4140
_020360D4: .word 0x0000057C
_020360D8: .word 0x00000494
_020360DC: .word 0x0000048C
_020360E0: .word 0x00000488
	thumb_func_end sub_02036024

