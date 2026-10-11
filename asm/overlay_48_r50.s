	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259BC0
	.extern ov48_0225B16C
	.extern ov48_0225B184

	.text

	.text
	thumb_func_start ov48_02259BC0
ov48_02259BC0: ; 0x02259BC0
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r3, #0
	bl Camera_New
	str r0, [r4]
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, _02259C2C ; =ov48_0225B16C
	str r0, [sp, #4]
	ldr r0, _02259C30 ; =ov48_0225B184
	ldr r2, _02259C34 ; =0x000005C1
	bl Camera_Init_FromTargetAndPos
	mov r1, #0x19
	ldr r2, [r4]
	mov r0, #0
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	ldr r1, [r4]
	mov r0, #0
	bl Camera_ApplyPerspectiveType
	ldr r0, [r4]
	bl Camera_SetStaticPtr
	ldr r0, [sp, #0x14]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02259C0E
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r0, #5
	lsl r0, r0, #0x10
	b _02259C16
_02259C0E:
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #0x4a
	lsl r0, r0, #0xe
_02259C16:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	bl Camera_SetDistance
	add sp, #8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02259C2C: .word ov48_0225B16C
_02259C30: .word ov48_0225B184
_02259C34: .word 0x000005C1
	thumb_func_end ov48_02259BC0

