	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225DD88
	.extern ov92_02263B5C

	.text

	.text
	thumb_func_start ov92_0225DD88
ov92_0225DD88: ; 0x0225DD88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r6, _0225DDD0 ; =ov92_02263B5C
	add r4, r0, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #8
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	mov r2, #0xb6
	add r7, sp, #0x14
	mov r3, #0
	str r3, [r7]
	str r3, [r7, #4]
	str r3, [r7, #8]
	str r0, [r5]
	str r3, [sp]
	ldr r0, [r4, #0x64]
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r0, r7, #0
	bl Camera_Init_FromTargetAndPos
	mov r1, #0xfa
	ldr r0, _0225DDD4 ; =0xFFC18000
	ldr r2, [r4, #0x64]
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, [r4, #0x64]
	bl Camera_SetStaticPtr
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DDD0: .word ov92_02263B5C
_0225DDD4: .word 0xFFC18000
	thumb_func_end ov92_0225DD88

