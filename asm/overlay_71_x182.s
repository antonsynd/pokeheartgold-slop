	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224B9CC
	.extern ov71_022476B4
	.extern ov71_022476D4
	.extern ov71_02247704
	.extern ov71_02247708
	.extern ov71_0224BABC

	.text

	.text
	thumb_func_start ov71_0224B9CC
ov71_0224B9CC: ; 0x0224B9CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x39
	mov r1, #0x44
	bl Heap_Alloc
	add r4, r0, #0
	beq _0224BA3A
	mov r1, #0
	str r1, [r4, #4]
	str r6, [r4]
	ldr r0, [r5, #0x74]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x78]
	str r0, [r4, #0x14]
	str r5, [r4, #8]
	ldr r0, _0224BA40 ; =0x000018CC
	str r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #0x14
	str r0, [r4, #0x20]
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #0x3a]
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x14]
	bl ov71_02247708
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl ov71_02247704
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x24
	bl ov71_022476B4
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x34
	bl ov71_022476D4
	ldr r0, _0224BA44 ; =ov71_0224BABC
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r6]
	cmp r0, #0
	bne _0224BA3E
	add r0, r4, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
_0224BA3A:
	mov r0, #0
	str r0, [r6]
_0224BA3E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224BA40: .word 0x000018CC
_0224BA44: .word ov71_0224BABC
	thumb_func_end ov71_0224B9CC

