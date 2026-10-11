	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034354
	.public sub_020343E4
	.extern _021D4130
	.extern sub_020346E8

	.text
	thumb_func_start sub_02034354
sub_02034354: ; 0x02034354
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	bl Save_PlayerData_GetProfile
	str r0, [sp, #8]
	ldr r0, _020343E0 ; =_021D4130
	ldr r0, [r0]
	cmp r0, #0
	bne _020343DA
	mov r1, #0xea
	mov r0, #0xf
	lsl r1, r1, #2
	bl Heap_Alloc
	ldr r1, _020343E0 ; =_021D4130
	mov r2, #0xea
	str r0, [r1]
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
	mov r6, #0
	ldr r7, _020343E0 ; =_021D4130
	add r4, r6, #0
	add r5, r6, #0
_0203438A:
	ldr r1, [r7]
	add r0, r1, #0
	add r0, #0x2c
	add r2, r0, r4
	mov r0, #0xd3
	add r1, r1, r5
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r6, #0
	bl sub_020346E8
	add r6, r6, #1
	add r4, #0x68
	add r5, r5, #4
	cmp r6, #8
	blt _0203438A
	ldr r2, _020343E0 ; =_021D4130
	mov r1, #0xe9
	ldr r3, [r2]
	mov r0, #0
	lsl r1, r1, #2
	strb r0, [r3, r1]
	ldr r4, [r2]
	add r3, r1, #1
	strb r0, [r4, r3]
	add r3, r1, #2
	ldr r4, [r2]
	sub r1, #0x58
	strb r0, [r4, r3]
	ldr r3, [r2]
	ldr r0, [sp]
	str r0, [r3, #8]
	ldr r3, [r2]
	ldr r0, [sp, #4]
	str r0, [r3, #4]
	ldr r2, [r2]
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	bl PlayerProfile_Copy
_020343DA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020343E0: .word _021D4130
	thumb_func_end sub_02034354

	thumb_func_start sub_020343E4
sub_020343E4: ; 0x020343E4
	push {r3, r4, r5, lr}
	ldr r1, _0203441C ; =_021D4130
	ldr r0, [r1]
	cmp r0, #0
	beq _02034418
	mov r4, #0
	mov r0, #0xd3
	add r5, r4, #0
	add r3, r4, #0
	lsl r0, r0, #2
_020343F8:
	ldr r2, [r1]
	add r4, r4, #1
	add r2, r2, r5
	add r5, r5, #4
	str r3, [r2, r0]
	cmp r4, #8
	blt _020343F8
	ldr r0, _0203441C ; =_021D4130
	ldr r0, [r0]
	cmp r0, #0
	beq _02034412
	bl Heap_Free
_02034412:
	ldr r0, _0203441C ; =_021D4130
	mov r1, #0
	str r1, [r0]
_02034418:
	pop {r3, r4, r5, pc}
	nop
_0203441C: .word _021D4130
	thumb_func_end sub_020343E4

