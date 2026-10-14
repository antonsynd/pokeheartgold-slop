	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225B630

	.text

	.text
	thumb_func_start ov27_0225B630
ov27_0225B630: ; 0x0225B630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp, #0x10]
	ldr r6, [r7]
	bl GetWindowX
	add r5, r0, #0
	add r0, r7, #0
	bl GetWindowY
	add r4, r0, #0
	add r0, r7, #0
	bl GetWindowWidth
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl GetWindowHeight
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	beq _0225B666
	cmp r0, #2
	bne _0225B664
	b _0225B8C2
_0225B664:
	b _0225BB1E
_0225B666:
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #3
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xa9
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xaa
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xab
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r3, r5, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0xac
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [sp, #0x14]
	mov r1, #5
	add r7, r5, r0
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0xad
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #3
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0x64
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0x65
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0x66
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0x68
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #3
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0x84
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0x85
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0x86
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0x88
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [sp, #0x18]
	sub r3, r5, #3
	add r4, r4, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xa4
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xa5
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #0xa6
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r3, r5, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0xa7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0xa8
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	b _0225BB22
_0225B8C2:
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #3
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r3, r5, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [sp, #0x14]
	mov r1, #5
	add r7, r5, r0
	sub r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #3
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #3
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	ldr r0, [sp, #0x18]
	sub r3, r5, #3
	add r4, r4, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #2
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	sub r3, r5, #1
	str r0, [sp, #8]
	mov r0, #0
	lsl r3, r3, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #4
	mov r2, #7
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r3, r5, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r7, #0x18
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	b _0225BB22
_0225BB1E:
	bl GF_AssertFail
_0225BB22:
	add r0, r6, #0
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add r0, r6, #0
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov27_0225B630

