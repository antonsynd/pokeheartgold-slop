	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225BB14

    .text

	.text
	thumb_func_start ov49_0225BB14
ov49_0225BB14: ; 0x0225BB14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r6, r3, #0
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r3, sp, #0xc
	ldr r4, [sp, #0x28]
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	ldr r2, [sp, #0xc]
	add r7, r0, #0
	ldr r0, [r2, #8]
	add r2, #0xc
	lsr r1, r0, #1
	mov r0, #0
	cmp r1, #0
	ble _0225BB4C
_0225BB3E:
	ldrh r3, [r2]
	add r0, r0, #1
	add r3, r3, r4
	strh r3, [r2]
	add r2, r2, #2
	cmp r0, r1
	blt _0225BB3E
_0225BB4C:
	ldr r2, [sp, #0xc]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	bl LoadRectToBgTilemapRect
	lsl r1, r6, #0x18
	ldr r0, [r5]
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225BB14

