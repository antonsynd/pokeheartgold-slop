	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221E6D4
	.public ov07_0221E788
	.extern ov07_0221DD38
	.extern ov07_0221DDB0
	.extern ov07_0221E600
	.extern ov07_0221E87C
	.extern ov07_0221FAF8
	.extern ov07_02222BE4
	.extern ov07_02222D88
	.extern ov07_02222D90
	.extern ov07_02234C20

	.text

	.text
	thumb_func_start ov07_0221E6D4
ov07_0221E6D4: ; 0x0221E6D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #0x28
	ldr r0, [r0]
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, [r5, #0x48]
	mov r2, #6
	add r0, #0xc4
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5, #0x48]
	add r0, #0x9c
	ldr r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r5, #0x48]
	add r0, #0xa0
	ldr r0, [r0]
	strh r0, [r4, #6]
	ldr r0, [r5, #0x48]
	add r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #8]
	ldr r0, [r5, #0x48]
	add r0, #0x98
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	mov r0, #3
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov07_0221DDB0
	cmp r0, #1
	bne _0221E748
	mov r0, #8
	ldrsh r1, [r4, r0]
	sub r0, #9
	mul r0, r1
	strh r0, [r4, #8]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r0, #0xb
	mul r0, r1
	strh r0, [r4, #0xa]
	mov r0, #4
	ldrsh r1, [r4, r0]
	sub r0, r0, #5
	mul r0, r1
	strh r0, [r4, #4]
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r0, #7
	mul r0, r1
	strh r0, [r4, #6]
_0221E748:
	mov r2, #1
	str r2, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #6
	ldr r1, [r5, #0x48]
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r4, #0
	bl ov07_0221DD38
	add r0, r5, #0
	add r0, #0x44
	ldrh r1, [r0]
	mov r0, #1
	add r5, #0x44
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r5]
	ldr r0, _0221E780 ; =ov07_0221E600
	ldr r2, _0221E784 ; =0x00001001
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0221E780: .word ov07_0221E600
_0221E784: .word 0x00001001
	thumb_func_end ov07_0221E6D4

	thumb_func_start ov07_0221E788
ov07_0221E788: ; 0x0221E788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [r0, #0x48]
	str r0, [sp]
	ldr r0, [r4]
	mov r1, #0x28
	bl Heap_Alloc
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #0xc4
	bl Heap_Alloc
	str r0, [r6, #0x20]
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, r6, #0
	mov r2, #2
	bl ov07_0221DD38
	ldr r0, [sp]
	mov r1, #2
	add r0, #0x44
	ldrh r0, [r0]
	add r2, r0, #0
	ldr r0, [sp]
	orr r2, r1
	add r0, #0x44
	strh r2, [r0]
	mov r0, #0
	str r0, [r6, #0x18]
	add r0, r4, #0
	bl ov07_0221FAF8
	bl ov07_02222D90
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov07_02222D88
	add r1, r0, #0
	ldr r2, [r4]
	add r0, r5, #0
	bl ov07_02222BE4
	mov r4, #0
	ldr r1, [r6, #0x20]
	ldr r7, _0221E860 ; =ov07_02234C20
	add r1, #0xc0
	str r0, [r1]
	str r4, [sp, #4]
	add r5, r4, #0
_0221E7F4:
	ldr r0, [r6, #0x20]
	strh r4, [r0, r5]
	ldr r0, [r6, #0x20]
	add r1, r0, r5
	ldrsh r0, [r0, r5]
	add r0, #8
	strh r0, [r1, #2]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r6, #0x20]
	add r0, r0, r5
	strh r1, [r0, #4]
	ldr r0, [r6, #0x20]
	add r1, r0, r5
	mov r0, #0
	strh r0, [r1, #6]
	add r1, r0, #0
	bl ov07_02222D88
	ldr r1, [r6, #0x20]
	mov r2, #6
	add r1, r1, r5
	str r0, [r1, #8]
	ldr r0, [sp]
	add r1, r0, #0
	ldr r1, [r1, #0x48]
	bl ov07_0221DDB0
	cmp r0, #1
	bne _0221E83E
	ldr r0, [r6, #0x20]
	mov r1, #4
	add r0, r0, r5
	ldrsh r2, [r0, r1]
	sub r1, r1, #5
	mul r1, r2
	strh r1, [r0, #4]
_0221E83E:
	ldr r0, [sp, #4]
	add r4, #8
	add r0, r0, #1
	add r5, #0xc
	add r7, r7, #2
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _0221E7F4
	mov r2, #1
	ldr r0, _0221E864 ; =ov07_0221E87C
	add r1, r6, #0
	lsl r2, r2, #0xc
	bl SysTask_CreateOnMainQueue
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221E860: .word ov07_02234C20
_0221E864: .word ov07_0221E87C
	thumb_func_end ov07_0221E788

