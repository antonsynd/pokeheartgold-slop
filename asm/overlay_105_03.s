	.include "asm/macros.inc"
	.include "overlay_105.inc"
	.include "global.inc"
	.public ov105_021E5BCC
	.extern ov105_021E5DCC
	.extern ov105_021E5DCE
	.extern ov105_021E5DF0
	.extern ov105_021E5E2C
	.extern ov105_021E5E38
	.extern ov105_021E5E3A

	.text

	.text
	thumb_func_start ov105_021E5BCC
ov105_021E5BCC: ; 0x021E5BCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	add r5, sp, #0xc
	mov r0, #0
	str r0, [r5]
	str r0, [r5, #4]
	str r0, [r5, #8]
	add r2, r4, #0
	add r2, #0x90
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0x14
	str r0, [r2]
	add r0, r4, #0
	add r0, #0x9f
	ldrb r7, [r0]
	add r0, r4, #0
	add r0, #0x9c
	ldrb r0, [r0]
	add r6, r7, #0
	mul r6, r1
	add r5, r0, #0
	ldr r0, _021E5C6C ; =ov105_021E5E2C
	mul r5, r1
	add r1, r0, r5
	ldr r0, _021E5C70 ; =ov105_021E5E38
	add r2, r1, r6
	add r0, r0, r5
	ldrb r0, [r6, r0]
	add r2, r2, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	add r0, r3, #0
	ldr r3, _021E5C74 ; =ov105_021E5E3A
	ldr r1, [r1, r6]
	add r3, r3, r5
	ldrh r3, [r6, r3]
	bl Camera_Init_FromTargetDistanceAndAngle
	add r0, r4, #0
	add r0, #0x9c
	ldrb r1, [r0]
	ldr r3, _021E5C78 ; =ov105_021E5DF0
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r1, r3, r2
	mul r0, r7
	add r0, r1, r0
	ldr r1, [r4]
	bl Camera_OffsetLookAtPosAndTarget
	add r0, r4, #0
	add r0, #0x9c
	ldrb r0, [r0]
	ldr r3, _021E5C7C ; =ov105_021E5DCE
	lsl r2, r7, #2
	lsl r1, r0, #2
	ldr r0, _021E5C80 ; =ov105_021E5DCC
	add r0, r0, r1
	add r1, r3, r1
	ldrh r0, [r2, r0]
	ldrh r1, [r2, r1]
	ldr r2, [r4]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, [r4]
	bl Camera_SetStaticPtr
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5C6C: .word ov105_021E5E2C
_021E5C70: .word ov105_021E5E38
_021E5C74: .word ov105_021E5E3A
_021E5C78: .word ov105_021E5DF0
_021E5C7C: .word ov105_021E5DCE
_021E5C80: .word ov105_021E5DCC
	thumb_func_end ov105_021E5BCC

