	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C5C4
	.extern ov59_0223CB58

	.text

	.text
	thumb_func_start ov59_0223C5C4
ov59_0223C5C4: ; 0x0223C5C4
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r5, _0223C61C ; =ov59_0223CB58
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
	str r0, [r4, #8]
	mov r1, #1
	str r1, [sp]
	ldr r0, [r4, #8]
	ldr r3, _0223C620 ; =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsl r1, r1, #0x10
	add r2, sp, #8
	bl Camera_Init_FromPosDistanceAndAngle
	mov r1, #0x19
	ldr r2, [r4, #8]
	mov r0, #0
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, [r4, #8]
	bl Camera_ClearFixedTarget
	ldr r0, [r4, #8]
	bl Camera_SetStaticPtr
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_0223C61C: .word ov59_0223CB58
_0223C620: .word 0x000005C1
	thumb_func_end ov59_0223C5C4

