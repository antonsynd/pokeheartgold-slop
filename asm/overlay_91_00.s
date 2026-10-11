	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225C540
	.public ov91_0225CBE4

	.text

	thumb_func_start ov91_0225C540
ov91_0225C540: ; 0x0225C540
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x6a
	lsl r2, r0, #0x11
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0x88
	mov r2, #0x6a
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x88
	add r4, r0, #0
	bl memset
	str r5, [sp]
	add r1, r5, #0
	add r1, #0x39
	ldr r2, [r5, #0x34]
	add r5, #0x38
	add r0, r4, #0
	ldrb r1, [r1]
	ldrb r3, [r5]
	add r0, #8
	bl ov90_02258800
	add r0, r4, #0
	mov r1, #0x6a
	bl ov91_0225CBE4
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov91_0225C540

