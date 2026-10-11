	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058098
	.extern _021D41C8

	.text
	thumb_func_start sub_02058098
sub_02058098: ; 0x02058098
	push {r4, r5, r6, lr}
	ldr r0, _020580E0 ; =_021D41C8
	ldr r0, [r0]
	cmp r0, #0
	beq _020580DE
	ldr r0, [r0, #0x34]
	bl SysTask_Destroy
	mov r4, #0
	ldr r6, _020580E0 ; =_021D41C8
	add r5, r4, #0
_020580AE:
	ldr r0, [r6]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _020580BA
	bl Heap_Free
_020580BA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _020580AE
	ldr r0, _020580E0 ; =_021D41C8
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _020580D0
	bl Heap_Free
_020580D0:
	ldr r0, _020580E0 ; =_021D41C8
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, _020580E0 ; =_021D41C8
	mov r1, #0
	str r1, [r0]
_020580DE:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_020580E0: .word _021D41C8
	thumb_func_end sub_02058098

