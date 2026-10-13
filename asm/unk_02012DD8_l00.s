	.include "asm/macros.inc"
	.include "unk_02012DD8.inc"
	.include "global.inc"
	.public sub_02012DD8
	.public sub_02012E10
	.extern sub_02012E6C
	.extern sub_02012F54

	.text

	.text
	thumb_func_start sub_02012DD8
sub_02012DD8: ; 0x02012DD8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	mov r1, #0x4c
	bl Heap_Alloc
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	bl sub_02012E6C
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02012DD8

	thumb_func_start sub_02012E10
sub_02012E10: ; 0x02012E10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	ldr r4, [r5, #0x14]
	cmp r0, #1
	beq _02012E28
	cmp r0, #2
	beq _02012E44
	cmp r0, #3
	beq _02012E5E
	b _02012E62
_02012E28:
	add r0, r4, #0
	bl sub_02012F54
	cmp r0, #1
	bne _02012E66
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x44]
	ldr r2, [r5, #0x10]
	bl sub_02010F34
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012E66
_02012E44:
	add r0, r4, #0
	bl sub_02010EC8
	ldr r0, [r5, #0x14]
	bl Heap_Free
	add r0, r6, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _02012E66
_02012E5E:
	mov r6, #1
	b _02012E66
_02012E62:
	bl GF_AssertFail
_02012E66:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_02012E10

