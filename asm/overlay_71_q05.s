	.include "macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02246C6C
	.extern ov71_02246D9C

	.text

	.text
	thumb_func_start ov71_02246C6C
ov71_02246C6C: ; 0x02246C6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x38
	add r6, r1, #0
	add r1, r0, #0
	add r1, #0xc8
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, _02246D30 ; =0x00000000
	str r0, [r5]
	beq _02246D28
	mov r0, #0x59
	mov r1, #6
	add r2, sp, #4
	mov r3, #0x38
	bl GfGfxLoader_GetPlttData
	add r7, r0, #0
	beq _02246CA6
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x60
	bl MIi_CpuClear16
	add r0, r7, #0
	bl Heap_Free
_02246CA6:
	add r1, r4, #0
	mov r0, #0
	add r1, #0xec
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xf0
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xf4
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xe4
	str r5, [r1]
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r1, r4, #0
	add r1, #0xfc
	str r6, [r1]
	add r3, r4, #0
	add r2, r0, #0
_02246CD6:
	add r1, r3, #0
	add r1, #0xc4
	add r0, r0, #1
	add r3, r3, #4
	str r2, [r1]
	cmp r0, #8
	blt _02246CD6
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246D34 ; =0x04000050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02246D38 ; =0x04001050
	mov r1, #4
	mov r2, #0xc
	mov r3, #0x10
	bl G2x_SetBlendAlpha_
	ldr r0, _02246D3C ; =ov71_02246D9C
	add r1, r4, #0
	mov r2, #0x14
	bl SysTask_CreateOnVWaitQueue
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	beq _02246D28
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #1
	str r1, [r0]
_02246D28:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246D30: .word 0x00000000
_02246D34: .word 0x04000050
_02246D38: .word 0x04001050
_02246D3C: .word ov71_02246D9C
	thumb_func_end ov71_02246C6C

