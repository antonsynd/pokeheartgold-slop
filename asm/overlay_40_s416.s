	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223EBB8
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

