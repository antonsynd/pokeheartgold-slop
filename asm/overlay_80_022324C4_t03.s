	.include "asm/macros.inc"
	.include "overlay_80_022324C4.inc"
	.include "global.inc"
	.public ov80_02232908
	.extern ov80_022329B4

    .text

	.text
	thumb_func_start ov80_02232908
ov80_02232908: ; 0x02232908
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	add r5, r0, #0
	bl ov80_022329B4
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_02232918:
	str r7, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #6
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl sub_02030D84
	strh r0, [r6, #0x30]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #0xe
	blt _02232918
	mov r6, #0
	add r4, sp, #0x30
	add r7, r5, #0
_02232938:
	mov r0, #0
	str r0, [sp]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	mov r1, #8
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030D84
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0x9b
	lsl r0, r0, #2
	strh r1, [r7, r0]
	add r6, r6, #1
	add r4, r4, #2
	add r7, r7, #2
	cmp r6, #4
	blt _02232938
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xcd
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	add r1, sp, #0x30
	add r2, sp, #0x10
	mov r3, #0
	bl ov80_0222A52C
	mov r0, #0xb
	bl AllocMonZeroed
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #0x3c
_02232986:
	add r0, r5, #0
	bl ov80_02237D88
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov80_0222A140
	ldr r1, [r5, #0x2c]
	add r0, r5, #0
	add r2, r6, #0
	bl ov80_02237E18
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _02232986
	add r0, r6, #0
	bl Heap_Free
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_02232908

