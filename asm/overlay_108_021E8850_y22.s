	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9230
	.extern ov108_021EA9C4
	.extern ov108_021EA9D8

	.text

	.text
	thumb_func_start ov108_021E9230
ov108_021E9230: ; 0x021E9230
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	bl Camera_New
	str r0, [r4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, _021E928C ; =0x0015B000
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _021E9290 ; =ov108_021EA9C4
	ldr r3, _021E9294 ; =0x000005C1
	add r0, #0xdc
	bl Camera_Init_FromTargetDistanceAndAngle
	ldr r0, [r4]
	bl Camera_SetStaticPtr
	mov r0, #0x19
	mov r1, #0x4b
	ldr r2, [r4]
	lsl r0, r0, #0xe
	lsl r1, r1, #0x10
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, _021E9298 ; =ov108_021EA9D8
	ldr r1, [r4]
	bl Camera_OffsetLookAtPosAndTarget
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021E928C: .word 0x0015B000
_021E9290: .word ov108_021EA9C4
_021E9294: .word 0x000005C1
_021E9298: .word ov108_021EA9D8
	thumb_func_end ov108_021E9230

