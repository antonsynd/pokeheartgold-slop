	.include "asm/macros.inc"
	.include "overlay_49_0225CB50.inc"
	.include "global.inc"
	.public ov49_0225CB78
	.extern ov49_02269A6C

    .text

	.text
	thumb_func_start ov49_0225CB78
ov49_0225CB78: ; 0x0225CB78
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x14
	add r5, r0, #0
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0225CB8C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0225CB8C
	add r0, r5, #0
	bl Camera_New
	str r0, [r4]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, _0225CBD0 ; =0x0029AEC1
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _0225CBD4 ; =ov49_02269A6C
	ldr r3, _0225CBD8 ; =0x000005C1
	add r0, #8
	bl Camera_Init_FromTargetDistanceAndAngle
	ldr r0, [r4]
	bl Camera_SetStaticPtr
	mov r0, #0x96
	mov r1, #0xe1
	ldr r2, [r4]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0225CBD0: .word 0x0029AEC1
_0225CBD4: .word ov49_02269A6C
_0225CBD8: .word 0x000005C1
	thumb_func_end ov49_0225CB78

