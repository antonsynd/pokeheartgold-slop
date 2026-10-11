	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C3F0
	.public ov59_0223C474
	.public ov59_0223C4B4
	.public ov59_0223C4D0
	.public ov59_0223C4EC
	.public ov59_0223C53C

	.text

	thumb_func_start ov59_0223C3F0
ov59_0223C3F0: ; 0x0223C3F0
	push {r3, r4, lr}
	sub sp, #4
	bl NNS_G3dInit
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r0, _0223C45C ; =0x04000060
	ldr r1, _0223C460 ; =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _0223C464 ; =0x0000CFFB
	and r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r3
	strh r2, [r0]
	add r2, r1, #2
	ldrh r4, [r0]
	add r1, r1, #2
	sub r3, #0x1c
	and r4, r2
	mov r2, #8
	orr r2, r4
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _0223C468 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0223C46C ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _0223C470 ; =0xBFFF0000
	str r0, [r1, #0x40]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C45C: .word 0x04000060
_0223C460: .word 0xFFFFCFFD
_0223C464: .word 0x0000CFFB
_0223C468: .word 0x00007FFF
_0223C46C: .word 0x04000540
_0223C470: .word 0xBFFF0000
	thumb_func_end ov59_0223C3F0

	thumb_func_start ov59_0223C474
ov59_0223C474: ; 0x0223C474
	push {r3, r4, r5, lr}
	ldr r3, _0223C4AC ; =NNS_GfdDefaultFuncAllocTexVram
	mov r0, #2
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0223C4B0 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0xa0
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0223C49C
	bl GF_AssertFail
_0223C49C:
	cmp r5, #0
	bne _0223C4A4
	bl GF_AssertFail
_0223C4A4:
	bl sub_02014DA0
	pop {r3, r4, r5, pc}
	nop
_0223C4AC: .word NNS_GfdDefaultFuncAllocTexVram
_0223C4B0: .word NNS_GfdDefaultFuncAllocPlttVram
	thumb_func_end ov59_0223C474

	thumb_func_start ov59_0223C4B4
ov59_0223C4B4: ; 0x0223C4B4
	push {r4, lr}
	ldr r3, _0223C4CC ; =NNS_GfdDefaultFuncAllocTexVram
	mov r2, #0
	ldr r3, [r3]
	blx r3
	add r4, r0, #0
	bl sub_02015354
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0223C4CC: .word NNS_GfdDefaultFuncAllocTexVram
	thumb_func_end ov59_0223C4B4

	thumb_func_start ov59_0223C4D0
ov59_0223C4D0: ; 0x0223C4D0
	push {r4, lr}
	ldr r3, _0223C4E8 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r2, #0
	ldr r3, [r3]
	blx r3
	add r4, r0, #0
	bl sub_02015394
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_0223C4E8: .word NNS_GfdDefaultFuncAllocPlttVram
	thumb_func_end ov59_0223C4D0

	thumb_func_start ov59_0223C4EC
ov59_0223C4EC: ; 0x0223C4EC
	push {r3}
	sub sp, #0xc
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	ldr r1, _0223C530 ; =0xFFFFEFE0
	ldr r2, _0223C534 ; =0x00003310
	str r1, [sp, #4]
	ldr r1, _0223C538 ; =0xFFFFE520
	str r2, [sp]
	str r1, [sp, #8]
	ldr r1, [r0, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
	nop
_0223C530: .word 0xFFFFEFE0
_0223C534: .word 0x00003310
_0223C538: .word 0xFFFFE520
	thumb_func_end ov59_0223C4EC

	thumb_func_start ov59_0223C53C
ov59_0223C53C: ; 0x0223C53C
	push {r4, lr}
	sub sp, #8
	mov r1, #0x12
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl Heap_Alloc
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0x12
	ldr r0, _0223C57C ; =ov59_0223C4B4
	ldr r1, _0223C580 ; =ov59_0223C4D0
	lsl r3, r3, #0xa
	str r4, [sp, #4]
	bl sub_02014DB4
	add r4, r0, #0
	bl sub_02015524
	add r2, r0, #0
	beq _0223C574
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
_0223C574:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_0223C57C: .word ov59_0223C4B4
_0223C580: .word ov59_0223C4D0
	thumb_func_end ov59_0223C53C

