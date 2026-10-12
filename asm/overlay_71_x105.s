	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249500
	.extern ov71_02249538
	.extern ov71_0224BD7C

	.text

	.text
	thumb_func_start ov71_02249500
ov71_02249500: ; 0x02249500
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #2
	bhs _0224952E
	lsl r3, r2, #2
	ldr r2, _02249534 ; =ov71_0224BD7C
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02249524
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_02249524:
	add r0, r5, #0
	bl ov71_02249538
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224952E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02249534: .word ov71_0224BD7C
	thumb_func_end ov71_02249500

