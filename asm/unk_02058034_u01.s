	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058038
	.extern _021D41C8
	.extern sub_02058034
	.extern sub_020582CC

	.text
	thumb_func_start sub_02058038
sub_02058038: ; 0x02058038
	push {r4, lr}
	ldr r1, _02058090 ; =_021D41C8
	add r4, r0, #0
	ldr r1, [r1]
	cmp r1, #0
	bne _0205808C
	bl sub_02091574
	mov r0, #0xf
	mov r1, #0x44
	bl Heap_Alloc
	ldr r1, _02058090 ; =_021D41C8
	mov r2, #0x44
	str r0, [r1]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02058090 ; =_021D41C8
	mov r1, #0x32
	ldr r0, [r0]
	mov r2, #0xa
	strh r1, [r0, #0x38]
	ldr r0, _02058094 ; =sub_020582CC
	mov r1, #0
	bl SysTask_CreateOnMainQueue
	ldr r1, _02058090 ; =_021D41C8
	ldr r2, [r1]
	str r0, [r2, #0x34]
	ldr r0, [r1]
	mov r2, #0
	str r4, [r0, #0x14]
	ldr r0, [r1]
	str r2, [r0, #0x40]
	bl sub_02058034
	ldr r0, _02058090 ; =_021D41C8
	ldr r0, [r0]
	add r0, #0x18
	bl sub_0203778C
_0205808C:
	pop {r4, pc}
	nop
_02058090: .word _021D41C8
_02058094: .word sub_020582CC
	thumb_func_end sub_02058038

