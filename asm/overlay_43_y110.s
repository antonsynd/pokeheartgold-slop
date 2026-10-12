	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DAE8
	.public ov43_0222DB28
	.extern ov43_0222AD74
	.extern ov43_0222DF4C

	.text

	.text
	thumb_func_start ov43_0222DAE8
ov43_0222DAE8: ; 0x0222DAE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bne _0222DB00
	ldr r2, [sp, #0x20]
	add r1, r4, #0
	strh r2, [r5]
	bl ov43_0222DB28
_0222DB00:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	add r5, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #0x4c
	mul r0, r6
	add r0, r5, r0
	add r1, r7, #0
	add r2, r4, #0
	bl ov43_0222DF4C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222DAE8

	thumb_func_start ov43_0222DB28
ov43_0222DB28: ; 0x0222DB28
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x10]
	add r5, r1, #0
	cmp r0, #1
	bne _0222DB4A
	lsl r1, r2, #5
	mov r0, #0x7f
	lsl r0, r0, #2
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xb0
	mov r4, #2
	bl Sprite_SetPositionXY
	b _0222DB78
_0222DB4A:
	cmp r2, #2
	bne _0222DB60
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf0
	mov r2, #0xb0
	mov r4, #2
	bl Sprite_SetPositionXY
	b _0222DB78
_0222DB60:
	mov r1, #0x70
	mul r1, r2
	mov r0, #0x7f
	lsl r0, r0, #2
	add r1, #0x38
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xb0
	mov r4, #1
	bl Sprite_SetPositionXY
_0222DB78:
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov43_0222AD74
	pop {r3, r4, r5, pc}
	thumb_func_end ov43_0222DB28

