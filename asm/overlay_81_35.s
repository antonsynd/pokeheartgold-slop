	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241364
	.public ov81_02242D74

	.text

	thumb_func_start ov81_02241364
ov81_02241364: ; 0x02241364
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224137E
	bl ov81_02242D74
	mov r0, #0xe
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0224137E:
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241394
	bl ov81_02242D74
	mov r0, #0xe1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02241394:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov81_02241364

