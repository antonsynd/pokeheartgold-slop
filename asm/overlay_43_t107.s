	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DDA0
	.public ov43_0222DDD0
	.public ov43_0222DDF0
	.extern ov43_0222EF20

	.text

	.text
	thumb_func_start ov43_0222DDA0
ov43_0222DDA0: ; 0x0222DDA0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r4, _0222DDCC ; =ov43_0222EF20
	mov r6, #0
	add r5, r0, r1
_0222DDAE:
	ldr r0, [r7]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #8
	blt _0222DDAE
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222DDCC: .word ov43_0222EF20
	thumb_func_end ov43_0222DDA0

	thumb_func_start ov43_0222DDD0
ov43_0222DDD0: ; 0x0222DDD0
	push {r3, r4, r5, lr}
	mov r1, #0x46
	lsl r1, r1, #2
	mov r4, #0
	add r5, r0, r1
_0222DDDA:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _0222DDDA
	pop {r3, r4, r5, pc}
	thumb_func_end ov43_0222DDD0

	thumb_func_start ov43_0222DDF0
ov43_0222DDF0: ; 0x0222DDF0
	ldrh r1, [r2]
	strh r1, [r0]
	ldrh r1, [r2, #2]
	strh r1, [r0, #2]
	ldrh r1, [r2, #4]
	mov r2, #0
	strh r1, [r0, #4]
	str r3, [r0, #8]
	add r1, r2, #0
_0222DE02:
	str r1, [r0, #0xc]
	str r1, [r0, #0x2c]
	add r2, r2, #1
	add r0, r0, #4
	cmp r2, #8
	blt _0222DE02
	bx lr
	thumb_func_end ov43_0222DDF0

