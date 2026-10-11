	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AD74
	.public ov43_0222C620
	.public ov43_0222C630
	.public ov43_0222C65C
	.public ov43_0222C714
	.public ov43_0222EFA0
	.public ov43_0222EFA2

	.text

	thumb_func_start ov43_0222C620
ov43_0222C620: ; 0x0222C620
	mov r1, #0
	ldrsh r1, [r0, r1]
	lsl r2, r1, #3
	mov r1, #4
	ldrsh r0, [r0, r1]
	add r0, r2, r0
	bx lr
	.balign 4, 0
	thumb_func_end ov43_0222C620

	thumb_func_start ov43_0222C630
ov43_0222C630: ; 0x0222C630
	push {r3, lr}
	cmp r3, #1
	bne _0222C63E
	ldr r0, _0222C658 ; =0x000005DC
	bl PlaySE
	pop {r3, pc}
_0222C63E:
	cmp r3, #2
	bne _0222C64A
	ldr r0, _0222C658 ; =0x000005DC
	bl PlaySE
	pop {r3, pc}
_0222C64A:
	cmp r3, #3
	bne _0222C654
	ldr r0, _0222C658 ; =0x000005DC
	bl PlaySE
_0222C654:
	pop {r3, pc}
	nop
_0222C658: .word 0x000005DC
	thumb_func_end ov43_0222C630

	thumb_func_start ov43_0222C65C
ov43_0222C65C: ; 0x0222C65C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xf8
	add r4, r1, #0
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xff
	bl ov43_0222AD74
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	add r0, r5, #0
	mov r1, #0
	add r0, #0xfc
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #4
	ldrsh r1, [r5, r0]
	mov r0, #0xa
	add r5, #0xf8
	add r3, r1, #0
	mul r3, r0
	ldr r0, _0222C700 ; =ov43_0222EFA0
	ldrsh r0, [r0, r3]
	lsl r2, r0, #3
	ldr r0, _0222C704 ; =ov43_0222EFA2
	str r2, [sp]
	ldrsh r0, [r0, r3]
	lsl r1, r0, #3
	add r1, #0xfc
	lsl r0, r2, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	lsl r0, r1, #0xc
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r1, _0222C708 ; =0x0400004A
	ldr r0, _0222C70C ; =0xFFFFC0FF
	ldrh r2, [r1]
	and r2, r0
	mov r0, #7
	lsl r0, r0, #8
	orr r2, r0
	strh r2, [r1]
	ldrh r3, [r1]
	mov r2, #0x3f
	sub r0, #0xd8
	bic r3, r2
	mov r2, #0x1f
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r1]
	lsl r4, r2, #0x15
	ldr r3, [r4]
	ldr r1, _0222C710 ; =0xFFFF1FFF
	and r3, r1
	lsl r1, r2, #0xa
	orr r1, r3
	str r1, [r4]
	bl PlaySE
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0222C700: .word ov43_0222EFA0
_0222C704: .word ov43_0222EFA2
_0222C708: .word 0x0400004A
_0222C70C: .word 0xFFFFC0FF
_0222C710: .word 0xFFFF1FFF
	thumb_func_end ov43_0222C65C

	thumb_func_start ov43_0222C714
ov43_0222C714: ; 0x0222C714
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _0222C728
	mov r0, #1
	pop {r4, pc}
_0222C728:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl Sprite_GetAnimationFrame
	add r1, r4, #0
	add r1, #0xfc
	ldr r1, [r1]
	sub r1, r0, r1
	cmp r1, #2
	blo _0222C748
	add r4, #0xfc
	str r0, [r4]
	ldr r0, _0222C74C ; =0x00000628
	bl PlaySE
_0222C748:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222C74C: .word 0x00000628
	thumb_func_end ov43_0222C714

