	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_0205876C
	.extern _021D41C8
	.extern sub_02058098

	.text
	thumb_func_start sub_0205876C
sub_0205876C: ; 0x0205876C
	push {r4, lr}
	sub sp, #8
	ldr r0, _020587E4 ; =_021D41C8
	ldr r1, [r0]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02058782
	sub r0, r0, #1
	strh r0, [r1, #0x38]
	add sp, #8
	pop {r4, pc}
_02058782:
	mov r4, #5
	bl sub_0203993C
	cmp r0, #5
	bgt _0205879C
	cmp r0, #2
	blt _020587A8
	beq _020587A6
	cmp r0, #4
	beq _020587A2
	cmp r0, #5
	beq _020587A2
	b _020587A8
_0205879C:
	cmp r0, #0x26
	beq _020587A6
	b _020587A8
_020587A2:
	mov r4, #0xf
	b _020587A8
_020587A6:
	mov r4, #7
_020587A8:
	add r0, sp, #0
	bl sub_02039980
	ldr r0, _020587E4 ; =_021D41C8
	ldr r0, [r0]
	ldr r1, [r0, #0x40]
	ldr r0, [r0, #0x14]
	cmp r1, #0
	bne _020587C4
	add r1, sp, #0
	add r2, r4, #0
	bl sub_02051598
	b _020587DC
_020587C4:
	add r2, r4, #0
	bl sub_020515FC
	ldr r0, _020587E4 ; =_021D41C8
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	bl Heap_Free
	ldr r0, _020587E4 ; =_021D41C8
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x40]
_020587DC:
	bl sub_02058098
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_020587E4: .word _021D41C8
	thumb_func_end sub_0205876C

