	.include "asm/macros.inc"
	.include "render_window.inc"
	.include "global.inc"
	.public LoadUserFrameGfx1

	.text
	thumb_func_start LoadUserFrameGfx1
LoadUserFrameGfx1: ; 0x0200E3DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0200E3F2
	mov r1, #1
	b _0200E3F4
_0200E3F2:
	mov r1, #0
_0200E3F4:
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0
	bl GfGfxLoader_LoadCharData
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bne _0200E416
	mov r1, #0x2e
	b _0200E418
_0200E416:
	mov r1, #0x19
_0200E418:
	cmp r5, #4
	bhs _0200E432
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0200E432:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0x26
	lsl r3, r4, #5
	bl GfGfxLoader_GXLoadPal
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end LoadUserFrameGfx1

