	.include "macros.inc"
	.include "overlay_97.inc"
	.include "global.inc"
	.public ov97_0221F0E0

	.text

	.text
	thumb_func_start ov97_0221F0E0
ov97_0221F0E0: ; 0x0221F0E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0x6d
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #2
_0221F0EE:
	ldr r0, [r5, r6]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0221F0EE
	mov r0, #0
	mov r6, #0x1e
	ldr r7, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #4
_0221F106:
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl Sprite_Delete
	mov r4, #0
	add r5, r7, #0
_0221F114:
	ldr r0, [r5, r6]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0221F114
	ldr r0, [sp, #4]
	add r7, #0x18
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _0221F106
	mov r1, #0x95
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl Sprite_Delete
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov97_0221F0E0

