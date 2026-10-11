	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02056EA0
	.extern _021D41C4
	.extern sub_0205724C

	.text
	thumb_func_start sub_02056EA0
sub_02056EA0: ; 0x02056EA0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02056EDC ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	beq _02056EDA
	mov r4, #0
	add r6, r4, #0
_02056EB0:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0205724C
	add r4, r4, #1
	cmp r4, #8
	blt _02056EB0
	ldr r0, _02056EDC ; =_021D41C4
	ldr r0, [r0]
	ldr r0, [r0, #0x2c]
	bl SysTask_Destroy
	ldr r0, _02056EDC ; =_021D41C4
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, _02056EDC ; =_021D41C4
	mov r1, #0
	str r1, [r0]
_02056EDA:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02056EDC: .word _021D41C4
	thumb_func_end sub_02056EA0

