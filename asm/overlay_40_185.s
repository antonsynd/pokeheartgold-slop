	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223B538
	.public ov40_0223B574

	.text

	thumb_func_start ov40_0223B538
ov40_0223B538: ; 0x0223B538
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	ldr r0, _0223B570 ; =0x00002030
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223B566
	add r5, r6, #0
	ldr r7, _0223B570 ; =0x00002030
	add r5, #0x14
_0223B550:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0223B550
_0223B566:
	ldr r0, _0223B570 ; =0x00002030
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B570: .word 0x00002030
	thumb_func_end ov40_0223B538

	thumb_func_start ov40_0223B574
ov40_0223B574: ; 0x0223B574
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	ldr r0, _0223B5AC ; =0x0000202C
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223B5A2
	add r5, r6, #0
	ldr r7, _0223B5AC ; =0x0000202C
	add r5, #0x94
_0223B58C:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0223B58C
_0223B5A2:
	ldr r0, _0223B5AC ; =0x0000202C
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B5AC: .word 0x0000202C
	thumb_func_end ov40_0223B574

