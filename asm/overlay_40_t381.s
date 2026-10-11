	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223EBB8
	.public ov40_0223EC40
	.extern ov40_0222DD68
	.extern ov40_02245E44

	.text

	.text
	thumb_func_start ov40_0223EBB8
ov40_0223EBB8: ; 0x0223EBB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	add r0, r1, #1
	ldr r2, _0223EC38 ; =ov40_02245E44
	lsl r0, r0, #1
	ldrh r4, [r2, r0]
	lsl r0, r1, #1
	ldrh r6, [r2, r0]
	ldr r1, [sp, #8]
	mov r0, #0x6d
	add r2, sp, #0xc
	bl ov40_0222DD68
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl Save_Pokedex_Get
	str r0, [sp]
	add r7, r6, #0
	cmp r6, r4
	bge _0223EC0A
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r5, r0, r1
_0223EBF2:
	ldrh r1, [r5]
	ldr r0, [sp]
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	bne _0223EC02
	ldr r0, _0223EC3C ; =0x0000FFFF
	strh r0, [r5]
_0223EC02:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r4
	blt _0223EBF2
_0223EC0A:
	cmp r6, r4
	bge _0223EC2A
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	add r2, r0, r1
	ldr r0, _0223EC3C ; =0x0000FFFF
_0223EC16:
	ldrh r1, [r2]
	cmp r1, r0
	beq _0223EC22
	mov r0, #1
	str r0, [sp, #8]
	b _0223EC2A
_0223EC22:
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, r4
	blt _0223EC16
_0223EC2A:
	ldr r0, [sp, #4]
	bl Heap_Free
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EC38: .word ov40_02245E44
_0223EC3C: .word 0x0000FFFF
	thumb_func_end ov40_0223EBB8

	thumb_func_start ov40_0223EC40
ov40_0223EC40: ; 0x0223EC40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	add r0, r1, #1
	ldr r2, _0223ED90 ; =ov40_02245E44
	lsl r0, r0, #1
	ldrh r6, [r2, r0]
	lsl r0, r1, #1
	ldrh r0, [r2, r0]
	ldr r2, _0223ED94 ; =0x000004CC
	mov r1, #0
	str r0, [sp]
	mov r0, #0x6d
	add r2, r4, r2
	bl ov40_0222DD68
	mov r2, #0x4d
	lsl r2, r2, #4
	str r0, [r4, r2]
	sub r2, r2, #4
	mov r0, #0x6d
	mov r1, #0
	add r2, r4, r2
	bl ov40_0222DD68
	str r0, [sp, #8]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl Save_Pokedex_Get
	str r0, [sp, #4]
	ldr r0, _0223ED98 ; =0x000004C8
	mov r1, #0
	ldr r7, [sp]
	str r1, [r4, r0]
	add r0, r7, #0
	cmp r0, r6
	bge _0223ECBE
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	add r5, r0, r1
_0223EC9A:
	ldrh r1, [r5]
	ldr r0, [sp, #4]
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	bne _0223ECAC
	ldr r0, _0223ED9C ; =0x0000FFFF
	strh r0, [r5]
	b _0223ECB6
_0223ECAC:
	ldr r0, _0223ED98 ; =0x000004C8
	ldr r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _0223ED98 ; =0x000004C8
	str r1, [r4, r0]
_0223ECB6:
	add r7, r7, #1
	add r5, r5, #2
	cmp r7, r6
	blt _0223EC9A
_0223ECBE:
	ldr r1, [sp]
	mov r0, #0
	cmp r1, r6
	bge _0223ECEE
	lsl r2, r1, #1
	ldr r1, [sp, #8]
	ldr r7, _0223ED9C ; =0x0000FFFF
	add r2, r1, r2
	add r3, r0, #0
_0223ECD0:
	ldrh r1, [r2]
	cmp r1, r7
	beq _0223ECE2
	mov r5, #0x4d
	lsl r5, r5, #4
	ldr r5, [r4, r5]
	add r0, r0, #1
	strh r1, [r5, r3]
	add r3, r3, #2
_0223ECE2:
	ldr r1, [sp]
	add r2, r2, #2
	add r1, r1, #1
	str r1, [sp]
	cmp r1, r6
	blt _0223ECD0
_0223ECEE:
	ldr r1, _0223ED94 ; =0x000004CC
	ldr r1, [r4, r1]
	cmp r0, r1
	bge _0223ED14
	mov r7, #0x4d
	ldr r1, [sp, #8]
	lsl r6, r0, #1
	lsl r7, r7, #4
	add r5, r1, r6
	sub r1, r7, #4
_0223ED02:
	ldrh r3, [r5]
	ldr r2, [r4, r7]
	add r0, r0, #1
	strh r3, [r2, r6]
	ldr r2, [r4, r1]
	add r5, r5, #2
	add r6, r6, #2
	cmp r0, r2
	blt _0223ED02
_0223ED14:
	ldr r0, [sp, #8]
	bl Heap_Free
	ldr r1, _0223ED98 ; =0x000004C8
	mov r0, #0x6d
	ldr r1, [r4, r1]
	lsl r1, r1, #4
	bl Heap_Alloc
	ldr r2, _0223EDA0 ; =0x000004DC
	mov r1, #0
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	sub r2, #0x14
	ldr r2, [r4, r2]
	lsl r2, r2, #4
	bl MI_CpuFill8
	ldr r0, _0223ED98 ; =0x000004C8
	mov r5, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0223ED74
	ldr r7, _0223EDA0 ; =0x000004DC
	add r2, r5, #0
	add r0, r7, #0
	add r3, r5, #0
	sub r0, #0x14
_0223ED4C:
	mov r1, #0x4d
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, _0223EDA0 ; =0x000004DC
	ldrh r1, [r1, r2]
	ldr r6, [r4, r6]
	add r5, r5, #1
	str r1, [r6, r3]
	mov r1, #0x4d
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, [r4, r7]
	ldrh r1, [r1, r2]
	add r6, r6, r3
	add r2, r2, #2
	str r1, [r6, #4]
	ldr r1, [r4, r0]
	add r3, #0x10
	cmp r5, r1
	blt _0223ED4C
_0223ED74:
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xed
	mov r3, #0x6d
	bl NewMsgDataFromNarc
	ldr r1, _0223EDA4 ; =0x000004D4
	mov r2, #1
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223ED90: .word ov40_02245E44
_0223ED94: .word 0x000004CC
_0223ED98: .word 0x000004C8
_0223ED9C: .word 0x0000FFFF
_0223EDA0: .word 0x000004DC
_0223EDA4: .word 0x000004D4
	thumb_func_end ov40_0223EC40

