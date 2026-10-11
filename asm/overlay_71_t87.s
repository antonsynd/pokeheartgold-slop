	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02248E78
	.public ov71_02248EB4
	.extern ov71_022476B4
	.extern ov71_022476D4
	.extern ov71_02247708
	.extern ov71_02248F8C
	.extern ov71_02248FC8
	.extern ov71_02249184

	.text

	.text
	thumb_func_start ov71_02248E78
ov71_02248E78: ; 0x02248E78
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0
	ble _02248E9A
	ldr r1, [r4]
	ldr r0, [r4, #4]
	add r1, r1, r0
	str r1, [r4]
	ldr r0, [r4, #0x10]
	asr r1, r1, #0xc
	bl ov71_02247708
	pop {r3, r4, r5, pc}
_02248E9A:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	asr r1, r1, #0xc
	bl ov71_02247708
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov71_02248E78

	thumb_func_start ov71_02248EB4
ov71_02248EB4: ; 0x02248EB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xdc
	add r0, #0xd8
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #8
	bl ov71_022476B4
	add r0, r5, #0
	add r0, #0xd8
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x20
	bl ov71_022476D4
	add r3, r4, #0
	add r3, #8
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0]
	str r0, [r4, #4]
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r5, #0xdc
	str r0, [r5]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x28]
	ldr r1, [r4, #0xc]
	ldr r0, _02248F84 ; =0xFFFF8000
	sub r0, r0, r1
	mov r1, #0x1e
	bl _s32_div_f
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r2, #1
	mov r1, #0x1e
	add r0, #0x80
	str r1, [r0]
	mov r1, #0
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	add r0, r4, #0
	str r1, [r4, #0x44]
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	lsl r2, r2, #0xe
	add r0, #0x56
	strh r2, [r0]
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	str r1, [r4, #0x7c]
	add r2, r4, #0
	add r0, r1, #0
_02248F38:
	add r3, r2, #0
	add r3, #0x5c
	strh r0, [r3]
	add r3, r2, #0
	add r3, #0x5e
	strh r0, [r3]
	add r3, r2, #0
	add r3, #0x60
	strh r0, [r3]
	add r3, r2, #0
	add r3, #0x62
	add r1, r1, #1
	add r2, #8
	strh r0, [r3]
	cmp r1, #3
	blt _02248F38
	mov r1, #0xd
	str r0, [r4, #0x78]
	add r0, r4, #0
	lsl r1, r1, #8
	mov r2, #0x1e
	bl ov71_02248F8C
	mov r1, #0x29
	mov r2, #5
	add r0, r4, #0
	lsl r1, r1, #0xc
	lsl r2, r2, #0xe
	mov r3, #0x1e
	bl ov71_02248FC8
	ldr r0, _02248F88 ; =ov71_02249184
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	nop
_02248F84: .word 0xFFFF8000
_02248F88: .word ov71_02249184
	thumb_func_end ov71_02248EB4

