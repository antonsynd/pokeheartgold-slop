	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DE14

	.text

	.text
	thumb_func_start ov43_0222DE14
ov43_0222DE14: ; 0x0222DE14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x18]
	add r1, r3, #0
	str r0, [sp, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x44]
	lsr r1, r1, #0x18
	str r3, [sp, #0x1c]
	lsl r4, r2, #2
	bl AllocWindows
	ldr r1, [sp, #0x14]
	add r7, r1, r4
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x2c]
	add r0, r1, #0
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _0222DECA
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x40]
_0222DE4E:
	ldr r0, [r7, #0xc]
	add r0, r0, r4
	bl InitWindow
	ldr r1, [sp, #0x14]
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _0222DE62
	neg r0, r0
_0222DE62:
	ldr r2, [sp, #0x14]
	mov r1, #0
	ldrsh r6, [r2, r1]
	cmp r6, #0
	bge _0222DE6E
	neg r6, r6
_0222DE6E:
	ldrb r1, [r5, #1]
	mov r2, #3
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	ldrb r3, [r5]
	ldr r0, [sp, #0x18]
	ldr r1, [r7, #0xc]
	add r3, r3, r6
	lsl r3, r3, #0x18
	ldr r0, [r0]
	add r1, r1, r4
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [r7, #0xc]
	mov r1, #0
	add r0, r0, r4
	bl FillWindowPixelBuffer
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r4, #0x10
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	add r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0x24]
	cmp r1, r0
	blo _0222DE4E
_0222DECA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222DE14

