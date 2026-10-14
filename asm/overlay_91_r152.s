	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225FD2C
	.extern ov91_02261D5C

	.text

	.text
	thumb_func_start ov91_0225FD2C
ov91_0225FD2C: ; 0x0225FD2C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r0, r3, #0
	add r4, r1, #0
	add r6, r2, #0
	bl Camera_New
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0
	add r2, r1, #4
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #8
	str r0, [r5, r2]
	add r2, r1, #0
	add r2, #0xc
	str r0, [r5, r2]
	ldr r3, _0225FDB8 ; =0x0000F112
	add r2, sp, #0xc
	strh r3, [r2]
	ldr r3, _0225FDBC ; =ov91_02261D5C
	lsl r4, r4, #3
	lsl r6, r6, #1
	add r3, r3, r4
	ldrh r3, [r6, r3]
	strh r3, [r2, #2]
	strh r0, [r2, #4]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	ldr r3, _0225FDC0 ; =0x00000FA4
	str r0, [sp, #8]
	add r0, r1, #4
	ldr r1, _0225FDC4 ; =0x001D9000
	add r0, r5, r0
	add r2, sp, #0xc
	bl Camera_Init_FromTargetDistanceAndAngle
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
	str r1, [sp, #0x1c]
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, sp, #0x14
	bl Camera_SetLookAtCamUp
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl Camera_SetStaticPtr
	mov r0, #0x32
	lsl r0, r0, #0xe
	lsr r2, r0, #0xb
	mov r1, #0xfa
	ldr r2, [r5, r2]
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0225FDB8: .word 0x0000F112
_0225FDBC: .word ov91_02261D5C
_0225FDC0: .word 0x00000FA4
_0225FDC4: .word 0x001D9000
	thumb_func_end ov91_0225FD2C

