	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F121C

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
	thumb_func_start ov18_021F121C
ov18_021F121C: ; 0x021F121C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	ldr r2, [sp, #0x18]
	add r6, r3, #0
	cmp r2, #0
	bne _021F125A
	mov r2, #0x67
	lsl r2, r2, #4
	add r5, r0, r2
	lsl r7, r1, #2
	add r1, sp, #0
	ldr r0, [r5, r7]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r3, #0
	ldrsh r2, [r2, r3]
	add r1, r1, r4
	lsl r1, r1, #0x10
	add r2, r2, r6
	lsl r2, r2, #0x10
	ldr r0, [r5, r7]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, r6, r7, pc}
_021F125A:
	mov r2, #0x67
	lsl r2, r2, #4
	add r5, r0, r2
	lsl r7, r1, #2
	add r1, sp, #0
	mov r3, #2
	ldr r0, [r5, r7]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r2, sp, #0
	mov r3, #2
	ldrsh r1, [r2, r3]
	ldr r0, [r5, r7]
	lsl r3, r3, #0x14
	add r1, r1, r4
	mov r4, #0
	ldrsh r2, [r2, r4]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r2, r6
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F121C

