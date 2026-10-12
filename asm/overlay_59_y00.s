	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02237D40
	.extern ov59_02237E94
	.extern ov59_02237F3C
	.extern ov59_02238624

	.text

	.text
	thumb_func_start ov59_02237D40
ov59_02237D40: ; 0x02237D40
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r6, r0, #0
	cmp r1, #0
	beq _02237D52
	cmp r1, #1
	beq _02237D94
	b _02237DA4
_02237D52:
	bl ov59_02238624
	mov r2, #2
	mov r0, #3
	mov r1, #0x86
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r1, #0xa7
	add r0, r6, #0
	lsl r1, r1, #2
	mov r2, #0x86
	bl OverlayManager_CreateAndGetData
	mov r2, #0xa7
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x86
	str r0, [r4]
	add r0, r6, #0
	bl OverlayManager_GetArgs
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov59_02237E94
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _02237DA4
_02237D94:
	bl OverlayManager_GetData
	bl ov59_02237F3C
	cmp r0, #0
	beq _02237DA4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02237DA4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_02237D40

