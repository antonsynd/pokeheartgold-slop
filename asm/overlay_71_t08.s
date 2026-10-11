	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02246EAC
	.extern ov71_02246F90

	.text

	.text
	thumb_func_start ov71_02246EAC
ov71_02246EAC: ; 0x02246EAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bne _02246F58
	mov r0, #0x38
	mov r1, #0x18
	bl Heap_Alloc
	add r4, r0, #0
	beq _02246F58
	add r0, r5, #0
	str r5, [r4]
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #1
	bne _02246EDE
	mov r0, #0
	mvn r0, r0
	b _02246EE0
_02246EDE:
	mov r0, #0xf
_02246EE0:
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0xc]
	mov r0, #2
	str r0, [r4, #8]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r1, r4, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r2, #0xa
	str r0, [r4, #0x14]
	ldr r0, _02246F5C ; =ov71_02246F90
	bl SysTask_CreateOnMainQueue
	add r1, r5, #0
	add r1, #0xf8
	ldr r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc4
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _02246F52
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xf4
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #8
	blt _02246F58
	mov r0, #0
	add r5, #0xf8
	str r0, [r5]
	pop {r3, r4, r5, pc}
_02246F52:
	add r0, r4, #0
	bl Heap_Free
_02246F58:
	pop {r3, r4, r5, pc}
	nop
_02246F5C: .word ov71_02246F90
	thumb_func_end ov71_02246EAC

