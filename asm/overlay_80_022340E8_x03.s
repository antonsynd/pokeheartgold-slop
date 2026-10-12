	.include "asm/macros.inc"
	.include "overlay_80_022340E8.inc"
	.include "global.inc"
	.public ov80_02234424
	.public ov80_022344D4

    .text

	.text
	thumb_func_start ov80_02234424
ov80_02234424: ; 0x02234424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	add r5, r0, #0
	bl ov80_022344D4
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_02234434:
	str r7, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #5
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl sub_02030F34
	add r1, r6, #0
	add r1, #0x78
	add r4, r4, #1
	add r6, r6, #2
	strh r0, [r1]
	cmp r4, #0xe
	blt _02234434
	mov r6, #0
	add r4, sp, #0x30
	add r7, r5, #0
_02234458:
	mov r0, #0
	str r0, [sp]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030F34
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0xc5
	lsl r0, r0, #2
	strh r1, [r7, r0]
	add r6, r6, #1
	add r4, r4, #2
	add r7, r7, #2
	cmp r6, #4
	blt _02234458
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
_022344A6:
	add r0, r5, #0
	bl ov80_02238370
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov80_0222A140
	ldr r1, [r5, #0x74]
	add r0, r5, #0
	add r2, r6, #0
	bl ov80_022383A8
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _022344A6
	add r0, r6, #0
	bl Heap_Free
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_02234424

	thumb_func_start ov80_022344D4
ov80_022344D4: ; 0x022344D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x70]
	bl Party_GetCount
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #0
	cmp r7, #0
	ble _0223451A
_022344EA:
	ldr r0, [r5, #0x70]
	add r1, r4, #0
	bl Party_GetMonByIndex
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030F34
	add r1, sp, #4
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #6
	add r2, sp, #4
	bl SetMonData
	add r4, r4, #1
	cmp r4, r7
	blt _022344EA
_0223451A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_022344D4

