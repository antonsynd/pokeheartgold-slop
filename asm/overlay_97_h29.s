	.include "asm/macros.inc"
	.include "overlay_97.inc"
	.include "global.inc"
	.public ov97_0221F9E0
	.extern ov97_0221FAEC
	.extern ov97_0221FBA0
	.extern ov97_0221FCF4

	.text

	.text
	thumb_func_start ov97_0221F9E0
ov97_0221F9E0: ; 0x0221F9E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r4, #0
_0221F9E8:
	lsl r6, r4, #5
	add r6, #0x68
	lsl r0, r4, #2
	add r7, r5, r0
	str r6, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl ov97_0221FAEC
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r1, #1
	str r6, [sp]
	mov r0, #0xa8
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl ov97_0221FAEC
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0221F9E8
	mov r0, #0
	str r0, [sp, #0x10]
_0221FA3C:
	ldr r1, _0221FAE8 ; =ov97_0221FCF4
	ldr r0, [sp, #0x10]
	mov r2, #1
	ldrb r0, [r1, r0]
	mov r1, #0x18
	mov r3, #0
	lsl r6, r0, #4
	ldr r0, [sp, #0x10]
	add r6, #0x30
	mul r1, r0
	mov r0, #0x60
	str r0, [sp]
	add r7, r5, r1
	str r6, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov97_0221FAEC
	mov r1, #0x77
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r4, #0
_0221FA70:
	lsl r0, r4, #4
	add r0, #0xa8
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl ov97_0221FAEC
	lsl r1, r4, #2
	add r2, r7, r1
	mov r1, #0x1e
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _0221FA70
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	cmp r0, #5
	blo _0221FA3C
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl ov97_0221FAEC
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x32
	ldr r0, [r5]
	lsl r1, r1, #6
	bl Heap_Alloc
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov97_0221FBA0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0221FAE8: .word ov97_0221FCF4
	thumb_func_end ov97_0221F9E0

