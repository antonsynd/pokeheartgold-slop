	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7AD8

	.text

	.text
	thumb_func_start ov68_021E7AD8
ov68_021E7AD8: ; 0x021E7AD8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r5, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021E7AF4
	cmp r0, #1
	beq _021E7B1A
	cmp r0, #2
	beq _021E7B52
	b _021E7B64
_021E7AF4:
	ldrb r0, [r4, #2]
	mov r1, #7
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r5, #4]
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #4]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	b _021E7B64
_021E7B1A:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #4
	bne _021E7B64
	ldrb r0, [r4, #2]
	mov r1, #7
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r5, #4]
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #4]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	b _021E7B64
_021E7B52:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #2
	bne _021E7B64
	add sp, #0xc
	ldr r0, [r4, #8]
	pop {r4, r5, pc}
_021E7B64:
	mov r0, #0xd
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov68_021E7AD8

