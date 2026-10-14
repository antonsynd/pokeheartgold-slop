	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E738C

	.text

	.text
	thumb_func_start ov99_021E738C
ov99_021E738C: ; 0x021E738C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	mov r5, #0
	add r7, r0, #0
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
_021E739A:
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021E73A2:
	add r0, r4, r5
	add r1, r0, #1
	add r0, sp, #0x18
	strh r1, [r0]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [r7]
	add r3, r3, r4
	lsl r3, r3, #0x18
	mov r1, #3
	add r2, sp, #0x18
	lsr r3, r3, #0x18
	bl LoadRectToBgTilemapRect
	add r4, r4, #1
	cmp r4, #2
	blt _021E73A2
	ldr r0, [sp, #0x10]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #2
	blt _021E739A
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov99_021E738C

