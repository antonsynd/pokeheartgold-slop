	.include "asm/macros.inc"
	.include "render_window.inc"
	.include "global.inc"
	.public DrawFrameAndWindow3
	.extern sub_0200E6B4
	.extern sub_0200ECBC
	.extern sub_0200EF84

	.text
	thumb_func_start DrawFrameAndWindow3
DrawFrameAndWindow3: ; 0x0200F004
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r6, r2, #0
	add r7, r3, #0
	bl GetWindowBgId
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bhi _0200F062
	add r0, r4, #0
	bl GetWindowX
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl GetWindowY
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl GetWindowWidth
	add r5, r0, #0
	add r0, r4, #0
	bl GetWindowHeight
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl sub_0200ECBC
	add r1, r6, #0
	add r1, #0x1e
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0200EF84
	b _0200F094
_0200F062:
	add r0, r4, #0
	bl GetWindowX
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl GetWindowY
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl GetWindowWidth
	add r5, r0, #0
	add r0, r4, #0
	bl GetWindowHeight
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0200E6B4
_0200F094:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0200F0A0
	add r0, r4, #0
	bl CopyWindowToVram
_0200F0A0:
	add r0, r6, #0
	bl TextPrinter_SetDownArrowBaseTile
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end DrawFrameAndWindow3

