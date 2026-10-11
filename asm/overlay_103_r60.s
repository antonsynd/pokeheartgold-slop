	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDCE0
	.public ov103_021EDD14

	.text

	.text
	thumb_func_start ov103_021EDCE0
ov103_021EDCE0: ; 0x021EDCE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r0, #0x26
	ldrb r4, [r0]
	cmp r4, #5
	bhi _021EDD08
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl SaveArray_Party_Get
	add r1, r4, #0
	bl Party_GetMonByIndex
	add r2, r0, #0
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	mov r3, #0x9c
	bl sub_02091004
_021EDD08:
	ldr r0, [r5, #0x14]
	bl Heap_Free
	mov r0, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDCE0

	thumb_func_start ov103_021EDD14
ov103_021EDD14: ; 0x021EDD14
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r2, [r0, #0x14]
	mov r3, #0x7f
	bic r1, r3
	add r3, r2, #0
	add r3, #0x26
	ldrb r4, [r3]
	mov r3, #0x7f
	add r2, #0x27
	and r3, r4
	orr r3, r1
	add r1, r0, #0
	add r1, #0x21
	strb r3, [r1]
	add r1, r0, #0
	ldrb r2, [r2]
	add r1, #0x20
	strb r2, [r1]
	ldr r0, [r0, #0x14]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov103_021EDD14

