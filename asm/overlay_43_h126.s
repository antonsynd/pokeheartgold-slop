	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D654
	.public ov43_0222D778
	.extern ov43_0222A9F4
	.extern ov43_0222AA70
	.extern ov43_0222AB20
	.extern ov43_0222AD00
	.extern ov43_0222AD40
	.extern ov43_0222AD98
	.extern ov43_0222D8B8
	.extern ov43_0222DACC
	.extern ov43_0222DAE8
	.extern ov43_0222DB84
	.extern ov43_0222DB94
	.extern ov43_0222DC7C
	.extern ov43_0222DF90

	.text

	.text
	thumb_func_start ov43_0222D654
ov43_0222D654: ; 0x0222D654
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r4, r2, #0
	mov r2, #0xb
	ldrsb r2, [r6, r2]
	add r5, r0, #0
	ldr r1, [r6, #4]
	add r2, r6, r2
	ldrb r2, [r2, #0x18]
	add r0, r4, #0
	add r7, r3, #0
	bl ov43_0222AB20
	mov r1, #0x4a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0xd
	bl ov43_0222A9F4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r0, #0xfc
	mov r1, #0
	ldr r2, [r0]
	add r3, r1, #0
	str r1, [sp]
	ldrh r0, [r2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	bl LoadRectToBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov43_0222D8B8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov43_0222AD98
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r1, r6, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r5, #0
	str r7, [sp, #4]
	bl ov43_0222DAE8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xff
	bl ov43_0222DB94
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf4
	mov r2, #0x18
	bl Sprite_SetPositionXY
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov43_0222AD40
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xf4
	mov r2, #0x88
	bl Sprite_SetPositionXY
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov43_0222AD40
	add r0, r4, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D654

	thumb_func_start ov43_0222D778
ov43_0222D778: ; 0x0222D778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov43_0222AD00
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #8
	mov r2, #0x62
	bl Sprite_SetPositionXY
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov43_0222AD40
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf8
	mov r2, #0x62
	bl Sprite_SetPositionXY
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov43_0222AD40
	add r4, r7, #0
	mov r6, #0
	add r4, #0x14
_0222D7BE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov43_0222DF90
	add r6, r6, #1
	add r4, #0x4c
	cmp r6, #3
	blt _0222D7BE
	add r0, r7, #0
	add r1, r5, #0
	bl ov43_0222DC7C
	add r0, r7, #0
	add r1, r5, #0
	bl ov43_0222DB84
	add r0, r7, #0
	bl ov43_0222DACC
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #5
	add r3, r2, #0
	bl FillBgTilemapRect
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #4
	add r3, r2, #0
	bl FillBgTilemapRect
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r5]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x43
	lsl r0, r0, #2
	mov r1, #0
	ldr r2, [r7, r0]
	add r3, r1, #0
	str r1, [sp]
	ldrh r0, [r2]
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
	ldr r0, [r5]
	mov r1, #0
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl ov43_0222AA70
	mov r0, #2
	add r1, r0, #0
	bl SetBgPriority
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D778

