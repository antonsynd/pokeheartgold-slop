	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A444

	.text
	thumb_func_start sub_0203A444
sub_0203A444: ; 0x0203A444
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl SysTask_Destroy
	mov r0, #7
	ldr r2, _0203A470 ; =0x40000200
	lsl r0, r0, #0x18
	str r2, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _0203A466
	ldr r0, _0203A474 ; =0x07000400
	str r2, [r0]
	strh r1, [r0, #4]
_0203A466:
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	nop
_0203A470: .word 0x40000200
_0203A474: .word 0x07000400
	thumb_func_end sub_0203A444

