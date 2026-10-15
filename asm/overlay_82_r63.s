	.include "macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223FC48
	.extern ov82_0223FB08

	.text

	.text
	thumb_func_start ov82_0223FC48
ov82_0223FC48: ; 0x0223FC48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x69
	mov r1, #0x14
	str r2, [sp, #4]
	add r5, r3, #0
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0223FC64:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0223FC64
	ldr r0, [sp, #0x2c]
	mov r3, #0
	str r0, [r4, #0xc]
	ldr r2, [sp, #4]
	str r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov82_0223FB08
	str r0, [r4, #0x10]
	lsl r0, r5, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x10]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl Sprite_SetMatrix
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov82_0223FC48

