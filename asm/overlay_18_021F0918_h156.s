	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F54C0
	.public ov18_021F555C
	.extern ov18_021F11C0
	.extern ov18_021F1294
	.extern ov18_021F12C8

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F54C0
ov18_021F54C0: ; 0x021F54C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	strh r1, [r4, #0x18]
	strh r2, [r4, #0x1a]
	mov r0, #1
	str r0, [sp]
	add r2, sp, #8
	ldr r0, [r4]
	mov r1, #2
	add r2, #2
	add r3, sp, #8
	bl ov18_021F12C8
	mov r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldr r0, [r4]
	mov r1, #4
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	add r1, sp, #4
	mov r2, #4
	mov r0, #0
	ldrsh r3, [r1, r2]
	ldrsh r0, [r1, r0]
	cmp r3, r0
	bge _021F552E
	mov r0, #2
	strh r0, [r4, #0x1c]
	mov r0, #8
	strh r0, [r4, #0x1e]
	ldr r0, [r4]
	mov r1, #3
	mov r2, #1
	bl ov18_021F11C0
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4]
	add r4, sp, #4
	mov r3, #4
	ldrsh r3, [r4, r3]
	mov r2, #6
	ldrsh r2, [r4, r2]
	add r3, #0xc0
	lsl r3, r3, #0x10
	mov r1, #3
	asr r3, r3, #0x10
	bl ov18_021F1294
	add sp, #0xc
	pop {r3, r4, pc}
_021F552E:
	strh r2, [r4, #0x1c]
	mov r0, #9
	strh r0, [r4, #0x1e]
	ldr r0, [r4]
	mov r1, #5
	mov r2, #1
	bl ov18_021F11C0
	mov r2, #2
	str r2, [sp]
	ldr r0, [r4]
	add r4, sp, #4
	mov r3, #0
	ldrsh r3, [r4, r3]
	ldrsh r2, [r4, r2]
	mov r1, #5
	add r3, #0xc0
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bl ov18_021F1294
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov18_021F54C0

	thumb_func_start ov18_021F555C
ov18_021F555C: ; 0x021F555C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	add r2, sp, #4
	ldrh r1, [r4, #0x1c]
	ldr r0, [r4]
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	mov r0, #0x18
	add r5, sp, #4
	mov r3, #0
	ldrsh r1, [r5, r3]
	ldrsh r0, [r4, r0]
	mov r2, #2
	add r0, r1, r0
	strh r0, [r5]
	mov r0, #1
	str r0, [sp]
	ldrh r1, [r4, #0x1c]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r4]
	bl ov18_021F1294
	mov r0, #2
	str r0, [sp]
	ldrh r1, [r4, #0x1c]
	add r2, sp, #4
	ldr r0, [r4]
	add r1, r1, #1
	add r2, #2
	add r3, sp, #4
	bl ov18_021F12C8
	mov r3, #0
	mov r0, #0x18
	ldrsh r1, [r5, r3]
	ldrsh r0, [r4, r0]
	mov r2, #2
	add r0, r1, r0
	strh r0, [r5]
	str r2, [sp]
	ldrh r1, [r4, #0x1c]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r4]
	add r1, r1, #1
	bl ov18_021F1294
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #0x18]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov18_021F555C

