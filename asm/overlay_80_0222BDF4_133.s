	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E558
	.public ov80_0222E920
	.public ov80_0222E940
	.public ov80_0222E948
	.public ov80_0222EA74
	.public ov80_0222EB14
	.public ov80_0222EB54
	.public ov80_0222EC60
	.public ov80_0222EC84
	.public ov80_0222EC90
	.public ov80_0222EE7C

	.text

	thumb_func_start ov80_0222E920
ov80_0222E920: ; 0x0222E920
	push {r4, lr}
	sub sp, #0x10
	add r4, sp, #8
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	ldr r4, [sp, #0x24]
	str r4, [sp, #0xc]
	bl ov80_0222E558
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov80_0222E920

	thumb_func_start ov80_0222E940
ov80_0222E940: ; 0x0222E940
	push {r3, lr}
	bl ov80_0222EA74
	pop {r3, pc}
	thumb_func_end ov80_0222E940

	thumb_func_start ov80_0222E948
ov80_0222E948: ; 0x0222E948
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	bl FrontierSystem_GetFrontierMap
	add r4, r0, #0
	add r0, r5, #0
	bl ov80_0222EB14
	mov r1, #7
	tst r1, r0
	bne _0222E966
	lsr r1, r0, #3
	b _0222E96A
_0222E966:
	lsr r0, r0, #3
	add r1, r0, #1
_0222E96A:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _0222E984
	add r0, r5, #0
	add r0, #0x98
	ldrb r0, [r0]
	sub r2, r0, r1
	add r0, r5, #0
	add r0, #0x98
	strb r2, [r0]
_0222E984:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	cmp r0, #8
	bls _0222E9D4
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _0222E9A8
	add r0, r5, #0
	add r0, #0x99
	ldrb r2, [r0]
	add r0, r5, #0
	add r0, #0x99
	sub r2, #0x10
	strb r2, [r0]
_0222E9A8:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	mov r2, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r3, #0x98
	add r1, r5, #0
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #8
	bl AddWindowParameterized
	b _0222EA22
_0222E9D4:
	add r2, r5, #0
	add r2, #0x97
	ldrb r2, [r2]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	beq _0222E9F0
	add r2, r5, #0
	add r2, #0x99
	ldrb r2, [r2]
	lsl r0, r0, #1
	sub r2, r2, r0
	add r0, r5, #0
	add r0, #0x99
	strb r2, [r0]
_0222E9F0:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	mov r2, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r5, #0
	add r3, #0x98
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #8
	bl AddWindowParameterized
_0222EA22:
	add r0, r5, #0
	ldr r2, _0222EA6C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xc
	bl DrawFrameAndWindow1
	add r0, r5, #0
	bl ov80_0222EB54
	ldr r3, [r5]
	add r2, r5, #0
	add r2, #0x96
	ldr r3, [r3, #0x34]
	mov r0, #0x65
	lsl r0, r0, #2
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	add r0, r5, r0
	mov r1, #0
	lsr r3, r3, #0x18
	bl ListMenuInit
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov80_0222EE7C
	ldr r0, _0222EA70 ; =ov80_0222EC90
	add r1, r5, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
_0222EA6C: .word 0x000003D9
_0222EA70: .word ov80_0222EC90
	thumb_func_end ov80_0222E948

	thumb_func_start ov80_0222EA74
ov80_0222EA74: ; 0x0222EA74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	ldr r1, [r5]
	mov r0, #0x50
	ldr r1, [r1, #0x34]
	add r7, r2, #0
	add r4, r3, #0
	bl String_New
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp]
	add r2, r6, #0
	bl ReadMsgDataIntoString
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	add r2, r6, #0
	bl StringExpandPlaceholders
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x6f
	ldr r0, [r0, #0x1c]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r6, #0
	bl String_Delete
	cmp r4, #0xfa
	bne _0222EAE6
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r2, #2
	mvn r2, r2
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #7
	lsl r0, r0, #6
	str r2, [r1, r0]
	b _0222EAF6
_0222EAE6:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #7
	lsl r0, r0, #6
	str r4, [r1, r0]
_0222EAF6:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	strh r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov80_0222EA74

	thumb_func_start ov80_0222EB14
ov80_0222EB14: ; 0x0222EB14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _0222EB4C
	add r5, r7, #0
_0222EB26:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222EB4C
	mov r0, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	cmp r6, r0
	bhs _0222EB3E
	add r6, r0, #0
_0222EB3E:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _0222EB26
_0222EB4C:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0222EB14

	thumb_func_start ov80_0222EB54
ov80_0222EB54: ; 0x0222EB54
	push {r4, r5}
	mov r3, #0x6f
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _0222EC4C ; =ov80_0222EC84
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _0222EC50 ; =ov80_0222EC60
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _0222EC54 ; =0xFFFFFE7F
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _0222EC58 ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _0222EC5C ; =0xFFFF7FFF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	sub r3, #0xc
	str r0, [r0, r3]
	pop {r4, r5}
	bx lr
	.balign 4, 0
_0222EC4C: .word ov80_0222EC84
_0222EC50: .word ov80_0222EC60
_0222EC54: .word 0xFFFFFE7F
_0222EC58: .word 0xFFFF81FF
_0222EC5C: .word 0xFFFF7FFF
	thumb_func_end ov80_0222EB54

