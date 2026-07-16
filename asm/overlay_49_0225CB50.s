	.include "asm/macros.inc"
	.include "overlay_49_0225CB50.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_0225CB50
ov49_0225CB50: ; 0x0225CB50
	strb r1, [r2, #3]
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _0225CB5E
	mov r0, #2
	strb r0, [r2, #3]
	bx lr
_0225CB5E:
	cmp r0, #3
	bne _0225CB66
	mov r0, #1
	strb r0, [r2, #3]
_0225CB66:
	bx lr
	thumb_func_end ov49_0225CB50

	thumb_func_start ov49_0225CB68
ov49_0225CB68: ; 0x0225CB68
	mov r1, #0
	strh r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225CB68

	thumb_func_start ov49_0225CB70
ov49_0225CB70: ; 0x0225CB70
	mov r1, #0xc3
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_0225CB70

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

	thumb_func_start ov49_0225CBDC
ov49_0225CBDC: ; 0x0225CBDC
	push {r4, lr}
	add r4, r0, #0
	bl Camera_UnsetStaticPtr
	ldr r0, [r4]
	bl Camera_Delete
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CBDC

	thumb_func_start ov49_0225CBF4
ov49_0225CBF4: ; 0x0225CBF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225CC18
	add r1, r4, #0
	add r1, #8
	bl ov49_02259154
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	sub r0, r1, r0
	str r0, [r4, #0x10]
_0225CC18:
	bl Camera_PushLookAtToNNSGlb
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CBF4

	thumb_func_start ov49_0225CC20
ov49_0225CC20: ; 0x0225CC20
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end ov49_0225CC20

	thumb_func_start ov49_0225CC28
ov49_0225CC28: ; 0x0225CC28
	push {r3, r4}
	mov r4, #2
	lsl r4, r4, #0xe
	add r1, r1, r4
	str r1, [r0, #8]
	lsl r1, r4, #2
	str r2, [r0, #0xc]
	sub r1, r3, r1
	str r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225CC28

	thumb_func_start ov49_0225CC40
ov49_0225CC40: ; 0x0225CC40
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov49_0225CC40

	thumb_func_start ov49_0225CC44
ov49_0225CC44: ; 0x0225CC44
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225CC44

	thumb_func_start ov49_0225CC4C
ov49_0225CC4C: ; 0x0225CC4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _0225CCBC ; =0x000004A4
	add r0, r2, #0
	str r2, [sp]
	bl Heap_Alloc
	ldr r2, _0225CCBC ; =0x000004A4
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0xb4
	mul r0, r5
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl Heap_Alloc
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xe4
	add r7, r6, #0
	mul r7, r0
	ldr r0, [sp]
	add r1, r7, #0
	bl Heap_Alloc
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r2, [sp, #4]
	mov r1, #0
	bl memset
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r7, #0
	bl memset
	mov r0, #0x49
	lsl r0, r0, #2
	strb r5, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CCBC: .word 0x000004A4
	thumb_func_end ov49_0225CC4C

	thumb_func_start ov49_0225CCC0
ov49_0225CCC0: ; 0x0225CCC0
	push {r4, lr}
	mov r1, #0x4a
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0225CCD2
	bl ov49_0225CE88
_0225CCD2:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Heap_Free
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CCC0

	thumb_func_start ov49_0225CCF0
ov49_0225CCF0: ; 0x0225CCF0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4b
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	bl ov49_0225D7B8
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _0225CD2C
	mov r7, #0x71
	add r6, r4, #0
	lsl r7, r7, #2
_0225CD10:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r7
	add r0, r0, r6
	bl ov49_0225DA70
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, #0xb4
	cmp r4, r0
	blt _0225CD10
_0225CD2C:
	ldr r0, _0225CD54 ; =0x00000125
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225CD52
	ldr r7, _0225CD54 ; =0x00000125
	add r4, r6, #0
_0225CD3A:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, r4
	bl ov49_0225DD68
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xe4
	cmp r6, r0
	blt _0225CD3A
_0225CD52:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225CD54: .word 0x00000125
	thumb_func_end ov49_0225CCF0

	thumb_func_start ov49_0225CD58
ov49_0225CD58: ; 0x0225CD58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _0225CD62
	bl GF_AssertFail
_0225CD62:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0225CD70
	bl GF_AssertFail
_0225CD70:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0225CD7E
	bl GF_AssertFail
_0225CD7E:
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov49_0225D804
	ldr r0, _0225CDE4 ; =0x00000125
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225CDB4
	mov r7, #0xa7
	add r6, r4, #0
	lsl r7, r7, #2
_0225CD9A:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, r7
	add r1, r1, r6
	bl ov49_0225DD0C
	ldr r0, _0225CDE4 ; =0x00000125
	add r4, r4, #1
	ldrb r0, [r5, r0]
	add r6, #0xe4
	cmp r4, r0
	blt _0225CD9A
_0225CDB4:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _0225CDE2
	mov r7, #0x71
	add r6, r4, #0
	lsl r7, r7, #2
_0225CDC6:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r7
	add r0, r0, r6
	bl ov49_0225DAFC
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, #0xb4
	cmp r4, r0
	blt _0225CDC6
_0225CDE2:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225CDE4: .word 0x00000125
	thumb_func_end ov49_0225CD58

	thumb_func_start ov49_0225CDE8
ov49_0225CDE8: ; 0x0225CDE8
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225CDE8

	thumb_func_start ov49_0225CDEC
ov49_0225CDEC: ; 0x0225CDEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225CE80 ; =0x00000127
	add r7, r3, #0
	strb r2, [r5, r0]
	sub r0, r0, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r7, #0
	ldr r4, [sp, #0x18]
	bl ov49_0225D4FC
	add r6, r0, #0
	mov r0, #0xcb
	add r1, r7, #0
	bl NARC_New
	add r7, r0, #0
	ldr r0, _0225CE84 ; =0x00000494
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #4
	bl HeapExp_FndInitAllocator
	ldr r0, _0225CE84 ; =0x00000494
	add r1, r7, #0
	add r0, r5, r0
	str r0, [sp]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r6, #0
	add r3, r4, #0
	bl ov49_0225D5FC
	mov r0, #0xa7
	ldr r2, _0225CE84 ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov49_0225DC2C
	mov r0, #0x71
	ldr r2, _0225CE84 ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov49_0225D854
	add r0, r7, #0
	bl NARC_Delete
	add r0, r6, #0
	bl ov49_0225D520
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov49_0225D6F0
	mov r0, #0x4a
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CE80: .word 0x00000127
_0225CE84: .word 0x00000494
	thumb_func_end ov49_0225CDEC

	thumb_func_start ov49_0225CE88
ov49_0225CE88: ; 0x0225CE88
	push {r4, lr}
	mov r1, #0x4b
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov49_0225D76C
	mov r0, #0x4b
	ldr r1, _0225CECC ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov49_0225D6AC
	mov r0, #0xa7
	ldr r1, _0225CECC ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov49_0225DCBC
	mov r0, #0x71
	ldr r1, _0225CECC ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov49_0225D9D0
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_0225CECC: .word 0x00000494
	thumb_func_end ov49_0225CE88

	thumb_func_start ov49_0225CED0
ov49_0225CED0: ; 0x0225CED0
	push {r3, lr}
	mov r2, #7
	add r1, r0, #0
	lsl r2, r2, #6
	ldr r0, [r1, r2]
	cmp r0, #1
	bne _0225CEFA
	add r0, r2, #0
	sub r0, #0xbc
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0225CEFA
	add r0, r2, #0
	mov r3, #1
	sub r0, #0xbc
	str r3, [r1, r0]
	sub r2, #0x24
	add r0, r1, #4
	add r1, r1, r2
	bl sub_020181D4
_0225CEFA:
	pop {r3, pc}
	thumb_func_end ov49_0225CED0

	thumb_func_start ov49_0225CEFC
ov49_0225CEFC: ; 0x0225CEFC
	push {r4, lr}
	mov r1, #7
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0225CF26
	add r0, r1, #0
	sub r0, #0xbc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225CF26
	sub r1, #0x24
	add r0, r4, #4
	add r1, r4, r1
	bl sub_020181E0
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0225CF26:
	pop {r4, pc}
	thumb_func_end ov49_0225CEFC

	thumb_func_start ov49_0225CF28
ov49_0225CF28: ; 0x0225CF28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r5, #2
	ble _0225CF3C
	bl GF_AssertFail
_0225CF3C:
	cmp r6, #3
	ble _0225CF44
	bl GF_AssertFail
_0225CF44:
	add r0, r7, #0
	bl ov49_0225D820
	mov r1, #0x71
	lsl r1, r1, #2
	add r4, r0, #0
	add r2, r7, r1
	lsl r1, r5, #4
	add r0, r4, #4
	add r1, r2, r1
	bl sub_020181B0
	add r0, r4, #4
	mov r1, #1
	bl sub_020182A0
	ldr r1, [sp]
	add r0, r4, #0
	bl ov49_0225CFA8
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl ov49_0225CFEC
	strb r6, [r4, #1]
	add r0, r4, #0
	strb r5, [r4, #2]
	mov r1, #1
	strb r1, [r4]
	str r1, [r4, #0x7c]
	add r0, #0x84
	str r1, [r0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CF28

	thumb_func_start ov49_0225CF94
ov49_0225CF94: ; 0x0225CF94
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #0
	bl sub_020182A0
	mov r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CF94

	thumb_func_start ov49_0225CFA8
ov49_0225CFA8: ; 0x0225CFA8
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x9c
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	add r1, r3, #0
	str r0, [r2]
	add r1, #0x9c
	ldr r2, [r1]
	add r1, r3, #0
	add r1, #0xa8
	ldr r1, [r1]
	add r0, r3, #4
	add r1, r2, r1
	add r2, r3, #0
	add r2, #0xa0
	ldr r4, [r2]
	add r2, r3, #0
	add r2, #0xac
	ldr r2, [r2]
	add r2, r4, r2
	add r4, r3, #0
	add r4, #0xa4
	add r3, #0xb0
	ldr r4, [r4]
	ldr r3, [r3]
	add r3, r4, r3
	bl sub_020182A8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CFA8

	thumb_func_start ov49_0225CFEC
ov49_0225CFEC: ; 0x0225CFEC
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0xa8
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	add r1, r3, #0
	str r0, [r2]
	add r1, #0x9c
	ldr r2, [r1]
	add r1, r3, #0
	add r1, #0xa8
	ldr r1, [r1]
	add r0, r3, #4
	add r1, r2, r1
	add r2, r3, #0
	add r2, #0xa0
	ldr r4, [r2]
	add r2, r3, #0
	add r2, #0xac
	ldr r2, [r2]
	add r2, r4, r2
	add r4, r3, #0
	add r4, #0xa4
	add r3, #0xb0
	ldr r4, [r4]
	ldr r3, [r3]
	add r3, r4, r3
	bl sub_020182A8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CFEC

	thumb_func_start ov49_0225D030
ov49_0225D030: ; 0x0225D030
	push {r3, lr}
	add r3, r1, #0
	add r0, r0, #4
	add r2, r1, #4
	add r3, #8
	bl sub_020182B0
	pop {r3, pc}
	thumb_func_end ov49_0225D030

	thumb_func_start ov49_0225D040
ov49_0225D040: ; 0x0225D040
	ldr r3, _0225D048 ; =sub_020182A0
	add r0, r0, #4
	bx r3
	nop
_0225D048: .word sub_020182A0
	thumb_func_end ov49_0225D040

	thumb_func_start ov49_0225D04C
ov49_0225D04C: ; 0x0225D04C
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	bne _0225D060
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	add r0, r1, #0
	bx lr
_0225D060:
	mov r0, #0
	bx lr
	thumb_func_end ov49_0225D04C

	thumb_func_start ov49_0225D064
ov49_0225D064: ; 0x0225D064
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	bne _0225D078
	mov r1, #1
	add r0, #0x88
	str r1, [r0]
	add r0, r1, #0
	bx lr
_0225D078:
	mov r0, #0
	bx lr
	thumb_func_end ov49_0225D064

	thumb_func_start ov49_0225D07C
ov49_0225D07C: ; 0x0225D07C
	ldr r3, _0225D084 ; =sub_020182E0
	add r0, r0, #4
	mov r2, #0
	bx r3
	.balign 4, 0
_0225D084: .word sub_020182E0
	thumb_func_end ov49_0225D07C

	thumb_func_start ov49_0225D088
ov49_0225D088: ; 0x0225D088
	add r0, #0x80
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225D088

	thumb_func_start ov49_0225D090
ov49_0225D090: ; 0x0225D090
	add r0, #0x88
	ldr r0, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225D090

	thumb_func_start ov49_0225D098
ov49_0225D098: ; 0x0225D098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov49_0225DBF8
	mov r1, #0xa7
	lsl r1, r1, #2
	add r2, r7, r1
	ldr r1, [sp]
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, r2, r1
	bl sub_020181B0
	ldr r5, [sp, #0xc]
	ldr r0, [sp]
	mov r1, #0xc
	mul r1, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #4
	add r4, r7, r1
	add r5, #0x7c
	str r0, [sp, #0x14]
_0225D0D8:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0225D0F2
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r3, r1
	ldr r3, _0225D15C ; =0x00000494
	add r3, r7, r3
	bl sub_020180E8
_0225D0F2:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #3
	blt _0225D0D8
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, r0, #4
	bl sub_020182A0
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	lsl r0, r0, #4
	strh r0, [r1]
	ldr r0, [sp, #8]
	mov r3, sp
	lsl r0, r0, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	sub r3, r3, #4
	ldr r0, [sp, #0xc]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_0225D1C4
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldr r1, [sp]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r1, #0x14
	add r0, #0xcc
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #0xc
	add r0, #0xdc
	str r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x1f
	add r0, #0xe1
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D15C: .word 0x00000494
	thumb_func_end ov49_0225D098

	thumb_func_start ov49_0225D160
ov49_0225D160: ; 0x0225D160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	add r0, r1, #4
	mov r1, #0
	bl sub_020182A0
	mov r0, #0xa7
	ldr r5, [sp]
	lsl r0, r0, #2
	mov r7, #0
	add r0, r6, r0
	add r4, r7, #0
	add r5, #0x7c
	str r0, [sp, #4]
_0225D180:
	ldr r0, [sp]
	ldrh r1, [r0, #2]
	mov r0, #0xc
	mul r0, r1
	add r0, r6, r0
	add r2, r4, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	cmp r2, #0
	beq _0225D1A6
	lsl r3, r1, #4
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, r3
	ldr r3, _0225D1BC ; =0x00000494
	add r3, r6, r3
	bl sub_020180E8
_0225D1A6:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #3
	blt _0225D180
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D1BC: .word 0x00000494
	thumb_func_end ov49_0225D160

	thumb_func_start ov49_0225D1C0
ov49_0225D1C0: ; 0x0225D1C0
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov49_0225D1C0

	thumb_func_start ov49_0225D1C4
ov49_0225D1C4: ; 0x0225D1C4
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, sp, #0x1c
	add r1, sp, #0
	bl ov49_02258800
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #4
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
	thumb_func_end ov49_0225D1C4

	thumb_func_start ov49_0225D1EC
ov49_0225D1EC: ; 0x0225D1EC
	push {r3, lr}
	sub sp, #0x10
	add r0, r0, #4
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0xc
	bl sub_020182B0
	add r0, sp, #4
	add r1, sp, #0
	bl ov49_02258814
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	add sp, #0x10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D1EC

	thumb_func_start ov49_0225D214
ov49_0225D214: ; 0x0225D214
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ov49_0225D224
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225D214

	thumb_func_start ov49_0225D224
ov49_0225D224: ; 0x0225D224
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	str r0, [sp]
	add r4, r1, #0
	add r7, r3, #0
	cmp r5, #3
	blt _0225D238
	bl GF_AssertFail
_0225D238:
	cmp r7, #7
	blt _0225D240
	bl GF_AssertFail
_0225D240:
	ldrh r0, [r4, #2]
	cmp r0, #0x12
	blo _0225D24A
	bl GF_AssertFail
_0225D24A:
	ldrh r0, [r4, #2]
	mov r1, #0xc
	lsl r6, r5, #2
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r0, r6
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225D324
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0xb8
	str r0, [sp, #4]
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _0225D280
	add r2, r4, #0
	mov r1, #0x14
	add r2, #0x7c
	mul r1, r5
	add r0, r4, #4
	add r1, r2, r1
	bl sub_020181D4
_0225D280:
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0, r5]
	add r0, r4, r5
	add r0, #0xbc
	strb r7, [r0]
	add r0, r4, r6
	ldr r1, [sp, #0x20]
	add r0, #0xd0
	str r1, [r0]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0xcd
	str r0, [sp, #8]
	mov r0, #0
	ldr r1, [sp, #8]
	cmp r7, #6
	strb r0, [r1, r5]
	bhi _0225D310
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225D2B2: ; jump table
	.short _0225D2C0 - _0225D2B2 - 2 ; case 0
	.short _0225D2C0 - _0225D2B2 - 2 ; case 1
	.short _0225D2C0 - _0225D2B2 - 2 ; case 2
	.short _0225D2C8 - _0225D2B2 - 2 ; case 3
	.short _0225D2C8 - _0225D2B2 - 2 ; case 4
	.short _0225D2DE - _0225D2B2 - 2 ; case 5
	.short _0225D2F8 - _0225D2B2 - 2 ; case 6
_0225D2C0:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1]
	b _0225D310
_0225D2C8:
	add r1, r4, #0
	mov r0, #0x14
	add r1, #0x7c
	mul r0, r5
	add r0, r1, r0
	bl sub_020181A4
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1]
	b _0225D310
_0225D2DE:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1]
	bl MTRandom
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl _u32_div_f
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
	b _0225D310
_0225D2F8:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1]
	bl MTRandom
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl _u32_div_f
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
_0225D310:
	add r1, r4, #0
	mov r0, #0x14
	add r1, #0x7c
	mul r0, r5
	add r0, r1, r0
	add r1, r4, r6
	add r1, #0xc0
	ldr r1, [r1]
	bl sub_02018198
_0225D324:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D224

	thumb_func_start ov49_0225D328
ov49_0225D328: ; 0x0225D328
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #3
	blt _0225D338
	bl GF_AssertFail
_0225D338:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0225D342
	bl GF_AssertFail
_0225D342:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225D390
	add r6, r5, #0
	add r6, #0xb8
	ldrb r0, [r6, r4]
	cmp r0, #1
	bne _0225D390
	add r2, r5, #0
	mov r1, #0x14
	add r2, #0x7c
	mul r1, r4
	add r0, r5, #4
	add r1, r2, r1
	bl sub_020181E0
	lsl r2, r4, #2
	mov r0, #0
	add r1, r5, r2
	strb r0, [r6, r4]
	add r1, #0xc0
	str r0, [r1]
	add r1, r5, r4
	add r1, #0xbc
	strb r0, [r1]
	add r1, r5, r4
	add r1, #0xcd
	strb r0, [r1]
	add r1, r5, r2
	add r1, #0xd0
	str r0, [r1]
_0225D390:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D328

	thumb_func_start ov49_0225D394
ov49_0225D394: ; 0x0225D394
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_0225D39C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225D450
	cmp r0, #1
	bne _0225D3B2
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov49_0225D328
_0225D3B2:
	add r4, r4, #1
	cmp r4, #3
	blt _0225D39C
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D394

	thumb_func_start ov49_0225D3BC
ov49_0225D3BC: ; 0x0225D3BC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #3
	blt _0225D3CC
	bl GF_AssertFail
_0225D3CC:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0225D3D6
	bl GF_AssertFail
_0225D3D6:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225D3F4
	add r0, r5, r4
	add r0, #0xb8
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_0225D3F4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225D3BC

	thumb_func_start ov49_0225D3F8
ov49_0225D3F8: ; 0x0225D3F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r3, #0
	cmp r4, #3
	blt _0225D40A
	bl GF_AssertFail
_0225D40A:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0225D414
	bl GF_AssertFail
_0225D414:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0225D42E
	bl GF_AssertFail
_0225D42E:
	add r0, r5, r4
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225D44E
	add r2, r5, #0
	mov r0, #0x14
	add r2, #0xc0
	lsl r1, r4, #2
	str r7, [r2, r1]
	add r5, #0x7c
	mul r0, r4
	ldr r1, [r2, r1]
	add r0, r5, r0
	bl sub_02018198
_0225D44E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D3F8

	thumb_func_start ov49_0225D450
ov49_0225D450: ; 0x0225D450
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0225D45E
	bl GF_AssertFail
_0225D45E:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0225D468
	bl GF_AssertFail
_0225D468:
	add r0, r5, r4
	add r0, #0xb8
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225D450

	thumb_func_start ov49_0225D470
ov49_0225D470: ; 0x0225D470
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0225D47E
	bl GF_AssertFail
_0225D47E:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0225D488
	bl GF_AssertFail
_0225D488:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc0
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D470

	thumb_func_start ov49_0225D494
ov49_0225D494: ; 0x0225D494
	ldr r3, _0225D49C ; =sub_020182A0
	add r0, r0, #4
	bx r3
	nop
_0225D49C: .word sub_020182A0
	thumb_func_end ov49_0225D494

	thumb_func_start ov49_0225D4A0
ov49_0225D4A0: ; 0x0225D4A0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #2]
	add r6, r2, #0
	cmp r0, #0x12
	blo _0225D4B2
	bl GF_AssertFail
_0225D4B2:
	ldrh r0, [r4, #2]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl NNS_G3dMdlSetMdlLightEnableFlagAll
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D4A0

	thumb_func_start ov49_0225D4C8
ov49_0225D4C8: ; 0x0225D4C8
	add r0, #0xdc
	str r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225D4C8

	thumb_func_start ov49_0225D4D0
ov49_0225D4D0: ; 0x0225D4D0
	push {r3, r4}
	add r3, r0, #0
	mov r4, #1
	add r3, #0xe0
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xe1
	strb r1, [r3]
	add r0, #0xe2
	strb r2, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov49_0225D4D0

	thumb_func_start ov49_0225D4E8
ov49_0225D4E8: ; 0x0225D4E8
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	bx lr
	thumb_func_end ov49_0225D4E8

	thumb_func_start ov49_0225D4F0
ov49_0225D4F0: ; 0x0225D4F0
	push {r3, lr}
	add r0, r0, #4
	bl sub_020182C4
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D4F0

	thumb_func_start ov49_0225D4FC
ov49_0225D4FC: ; 0x0225D4FC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	lsl r2, r1, #2
	add r1, r1, r2
	add r4, r0, r1
	cmp r4, #0x19
	blo _0225D50E
	bl GF_AssertFail
_0225D50E:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xca
	add r1, r4, #1
	mov r2, #0
	add r3, r5, #0
	bl GfGfxLoader_LoadFromNarc
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225D4FC

	thumb_func_start ov49_0225D520
ov49_0225D520: ; 0x0225D520
	ldr r3, _0225D524 ; =Heap_Free
	bx r3
	.balign 4, 0
_0225D524: .word Heap_Free
	thumb_func_end ov49_0225D520

	thumb_func_start ov49_0225D528
ov49_0225D528: ; 0x0225D528
	push {r4, lr}
	add r4, r0, #0
	bl ov49_02258830
	ldr r0, [r4]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #4]
	cmp r0, #0
	beq _0225D55C
	add r2, r0, #0
	add r2, #8
	beq _0225D550
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _0225D550
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0225D552
_0225D550:
	mov r1, #0
_0225D552:
	cmp r1, #0
	beq _0225D55C
	ldr r1, [r1]
	add r0, r0, r1
	b _0225D55E
_0225D55C:
	mov r0, #0
_0225D55E:
	str r0, [r4, #8]
	ldr r0, [r4]
	bl NNS_G3dGetTex
	str r0, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl GF3dRender_BindModelSet
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D528

	thumb_func_start ov49_0225D574
ov49_0225D574: ; 0x0225D574
	ldr r3, _0225D578 ; =sub_02018068
	bx r3
	.balign 4, 0
_0225D578: .word sub_02018068
	thumb_func_end ov49_0225D574

	thumb_func_start ov49_0225D57C
ov49_0225D57C: ; 0x0225D57C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_020181A4
	add r1, r0, #0
	ldr r0, [r5]
	add r0, r0, r4
	cmp r0, r1
	bge _0225D596
	str r0, [r5]
	pop {r3, r4, r5, pc}
_0225D596:
	bl _s32_div_f
	str r1, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D57C

	thumb_func_start ov49_0225D5A0
ov49_0225D5A0: ; 0x0225D5A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_020181A4
	ldr r1, [r5]
	add r1, r1, r4
	cmp r1, r0
	bge _0225D5BA
	str r1, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225D5BA:
	mov r1, #2
	lsl r1, r1, #0xa
	sub r0, r0, r1
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D5A0

	thumb_func_start ov49_0225D5C8
ov49_0225D5C8: ; 0x0225D5C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_020181A4
	ldr r1, [r5]
	sub r1, r1, r4
	bmi _0225D5DE
	str r1, [r5]
	pop {r3, r4, r5, pc}
_0225D5DE:
	add r0, r0, r1
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225D5C8

	thumb_func_start ov49_0225D5E4
ov49_0225D5E4: ; 0x0225D5E4
	ldr r1, [r0]
	sub r1, r1, r2
	cmp r1, #0
	ble _0225D5F2
	str r1, [r0]
	mov r0, #0
	bx lr
_0225D5F2:
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225D5E4

	thumb_func_start ov49_0225D5FC
ov49_0225D5FC: ; 0x0225D5FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	mov r7, #6
	ldr r5, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x30]
	mov r6, #0
	add r4, r2, #0
	lsl r7, r7, #6
_0225D616:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov49_0225D528
	ldr r0, [r5]
	bl ov45_0222D740
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #2
	blt _0225D616
	ldr r6, [sp, #8]
	ldr r4, [sp, #0x10]
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r7, #0
	add r5, #0x20
	str r0, [sp, #0x18]
_0225D644:
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _0225D65E
	add r1, r6, #0
	add r1, #0x84
	mov r0, #0
	str r0, [r1]
	b _0225D69C
_0225D65E:
	add r1, r6, #0
	add r1, #0x84
	mov r0, #1
	str r0, [r1]
	cmp r7, #3
	beq _0225D684
	ldr r0, [sp, #0x14]
	mov r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl sub_020180BC
	b _0225D69C
_0225D684:
	ldr r0, [sp, #0x14]
	mov r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl sub_020180BC
_0225D69C:
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	add r5, #0x14
	cmp r7, #5
	blt _0225D644
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D5FC


    .rodata

ov49_02269A6C: ; 0x02269A6C
	.byte 0x02, 0xD6, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

