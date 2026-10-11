	.include "asm/macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205AC88
	.public sub_0205AD0C
	.public sub_0205AD24
	.public sub_0205AD3C
	.public sub_0205AD60
	.public sub_0205AD9C
	.public sub_0205AEA0
	.extern _020FC824
	.extern sub_0205AEA8
	.extern sub_0205AF78
	.extern sub_0205B3B8
	.extern sub_0205B3CC

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205AC88
sub_0205AC88: ; 0x0205AC88
	push {r3, r4, r5, lr}
	ldr r1, _0205ACF4 ; =0x000004E8
	add r5, r0, #0
	mov r0, #0x1f
	bl Heap_Alloc
	add r4, r0, #0
	ldr r2, _0205ACF4 ; =0x000004E8
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #0x4e
	str r5, [r4]
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0205ACF8 ; =sub_0205AD60
	add r1, r4, #0
	mov r2, #0xb
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0205A1F0
	ldr r1, _0205ACFC ; =0x000004D4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #8
	ldr r0, [r0, #0xc]
	bl SaveArray_Get
	ldr r1, _0205AD00 ; =0x000004D8
	ldr r2, _0205AD04 ; =0x00002710
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0x57
	ldr r0, [r0, #0x40]
	str r0, [r4, #8]
	mov r0, #0xb
	bl Heap_CreateAtEnd
	mov r0, #0x57
	bl sub_0205B3B8
	ldr r1, _0205AD08 ; =0x000004DC
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_0205AD24
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0205ACF4: .word 0x000004E8
_0205ACF8: .word sub_0205AD60
_0205ACFC: .word 0x000004D4
_0205AD00: .word 0x000004D8
_0205AD04: .word 0x00002710
_0205AD08: .word 0x000004DC
	thumb_func_end sub_0205AC88

	thumb_func_start sub_0205AD0C
sub_0205AD0C: ; 0x0205AD0C
	mov r3, #0
	mov r1, #3
_0205AD10:
	ldrb r2, [r0, #0xd]
	cmp r2, #0
	beq _0205AD18
	strb r1, [r0, #0xc]
_0205AD18:
	add r3, r3, #1
	add r0, #0x18
	cmp r3, #0x33
	blt _0205AD10
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205AD0C

	thumb_func_start sub_0205AD24
sub_0205AD24: ; 0x0205AD24
	mov r2, #0
	add r1, r2, #0
_0205AD28:
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	add r2, r2, #1
	add r0, #0x18
	cmp r2, #0x33
	blt _0205AD28
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205AD24

	thumb_func_start sub_0205AD3C
sub_0205AD3C: ; 0x0205AD3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl SysTask_Destroy
	ldr r0, _0205AD5C ; =0x000004DC
	ldr r0, [r4, r0]
	bl sub_0205B3CC
	mov r0, #0x57
	bl Heap_Destroy
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
_0205AD5C: .word 0x000004DC
	thumb_func_end sub_0205AD3C

	thumb_func_start sub_0205AD60
sub_0205AD60: ; 0x0205AD60
	push {r3, r4, r5, lr}
	ldr r0, _0205AD98 ; =0x000004D4
	add r5, r1, #0
	ldr r0, [r5, r0]
	ldr r4, [r5]
	bl FieldSystem_TaskIsRunning
	cmp r0, #0
	bne _0205AD96
	ldr r3, _0205AD98 ; =0x000004D4
	add r1, r4, #0
	ldr r0, [r5, r3]
	ldr r0, [r0, #0x40]
	str r0, [r5, #8]
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r2, [r2, #0x3c]
	ldr r3, [r5, r3]
	add r0, r5, #0
	bl sub_0205AEA8
	ldr r1, _0205AD98 ; =0x000004D4
	add r0, r5, #0
	ldr r1, [r5, r1]
	ldr r1, [r1, #0x3c]
	bl sub_0205AF78
_0205AD96:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0205AD98: .word 0x000004D4
	thumb_func_end sub_0205AD60

	thumb_func_start sub_0205AD9C
sub_0205AD9C: ; 0x0205AD9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0
	str r0, [sp]
	str r3, [sp, #4]
	cmp r2, #0
	bne _0205ADD0
	ldr r0, _0205AE9C ; =_020FC824
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	ldr r0, [sp]
	mov r6, #3
	add r0, #0xc
	str r0, [sp]
_0205ADB8:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205AEA0
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #4
	blt _0205ADB8
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205ADD0:
	add r0, r2, #0
	str r0, [sp, #0xc]
	add r0, #0x50
	str r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [r2, #0x50]
	mov r2, #0x18
	add r3, r1, #0
	mul r3, r2
	ldr r2, [sp]
	add r2, r2, r3
	ldr r2, [r2, #0x18]
	cmp r0, r2
	beq _0205AE14
	ldr r0, _0205AE9C ; =_020FC824
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	ldr r0, [sp]
	mov r6, #3
	add r0, #0xc
	str r0, [sp]
_0205ADFC:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205AEA0
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, #4
	blt _0205ADFC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0205AE14:
	ldr r0, _0205AE9C ; =_020FC824
	lsl r1, r1, #1
	ldrh r7, [r0, r1]
	ldr r0, [sp, #0xc]
	add r6, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
_0205AE28:
	mov r0, #0x18
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r4, r0, r1
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0205AE42
	cmp r0, #2
	beq _0205AE68
	cmp r0, #4
	beq _0205AE82
	b _0205AE86
_0205AE42:
	ldr r0, [sp, #0xc]
	add r1, r0, r6
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0205AE86
	mov r0, #2
	strb r0, [r4, #0xc]
	ldrb r1, [r1, #0x18]
	mov r0, #0x7f
	and r0, r1
	strb r0, [r4, #0x14]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [r1]
	bl PalPad_PlayerIdIsFriendOrMutual
	strb r0, [r4, #0xe]
	mov r5, #1
	b _0205AE86
_0205AE68:
	ldr r0, [sp, #0xc]
	add r0, r0, r6
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0205AE7E
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #3
	bl sub_0205AEA0
	b _0205AE86
_0205AE7E:
	mov r5, #1
	b _0205AE86
_0205AE82:
	mov r0, #0
	strb r0, [r4, #0xc]
_0205AE86:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	add r7, r7, #1
	str r0, [sp, #8]
	cmp r6, #4
	blt _0205AE28
	add r0, r5, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0205AE9C: .word _020FC824
	thumb_func_end sub_0205AD9C

	thumb_func_start sub_0205AEA0
sub_0205AEA0: ; 0x0205AEA0
	mov r3, #0x18
	mul r3, r1
	strb r2, [r0, r3]
	bx lr
	thumb_func_end sub_0205AEA0

