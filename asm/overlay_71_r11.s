	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247000
	.extern ov71_02247068

	.text

	.text
	thumb_func_start ov71_02247000
ov71_02247000: ; 0x02247000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0x38
	mov r1, #0x24
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r5, [sp, #0x28]
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, _02247060 ; =0x00000001
	str r0, [r5]
	beq _02247058
	ldr r1, [sp]
	str r1, [r4]
	str r6, [r4, #8]
	ldr r1, [sp, #4]
	str r7, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r1, [sp, #0x20]
	str r1, [r4, #0x14]
	cmp r6, r7
	bge _02247034
	mov r0, #0
_02247034:
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [r4, #0x1c]
	str r5, [r4, #4]
	ldr r0, _02247064 ; =ov71_02247068
	add r1, r4, #0
	str r2, [r5]
	bl SysTask_CreateOnVBlankQueue
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _02247058
	mov r0, #1
	str r0, [r5]
	add r0, r4, #0
	bl Heap_Free
_02247058:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247060: .word 0x00000001
_02247064: .word ov71_02247068
	thumb_func_end ov71_02247000

