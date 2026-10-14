	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022473F0
	.extern _0224C040
	.extern ov71_0224C044

	.text

	.text
	thumb_func_start ov71_022473F0
ov71_022473F0: ; 0x022473F0
	push {r4, r5, r6, lr}
	ldr r6, _0224741C ; =_0224C040
	ldr r0, [r6]
	cmp r0, #0
	beq _02247418
	mov r4, #0
	cmp r0, #0
	ble _02247412
	ldr r5, _02247420 ; =ov71_0224C044
_02247402:
	ldr r0, [r5]
	bl Heap_Free
	ldr r0, [r6]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _02247402
_02247412:
	ldr r0, _0224741C ; =_0224C040
	mov r1, #0
	str r1, [r0]
_02247418:
	pop {r4, r5, r6, pc}
	nop
_0224741C: .word _0224C040
_02247420: .word ov71_0224C044
	thumb_func_end ov71_022473F0

