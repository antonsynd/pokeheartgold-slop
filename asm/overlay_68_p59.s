	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E71C4
	.extern ov68_021E7BEC

	.text

	.text
	thumb_func_start ov68_021E71C4
ov68_021E71C4: ; 0x021E71C4
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _021E721C ; =ov68_021E7BEC
	add r4, r0, #0
	add r2, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x10
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, sp, #8
	str r0, [r3]
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r0, r2, #0
	bl Camera_New
	str r0, [r4]
	mov r1, #1
	str r1, [sp]
	ldr r0, [r4]
	ldr r3, _021E7220 ; =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #8
	bl Camera_Init_FromPosDistanceAndAngle
	mov r1, #0x19
	ldr r2, [r4]
	mov r0, #0
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, [r4]
	bl Camera_ClearFixedTarget
	ldr r0, [r4]
	bl Camera_SetStaticPtr
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021E721C: .word ov68_021E7BEC
_021E7220: .word 0x000005C1
	thumb_func_end ov68_021E71C4

