	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02224BAC
	.extern ov07_0221BFC0
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221C4A8
	.extern ov07_0221FA48
	.extern ov07_0221FAB0
	.extern ov07_02222004
	.extern ov07_02224B14
	.extern ov07_0223197C
	.extern ov07_02231FA0
	.extern ov07_02231FE4
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_02224BAC
ov07_02224BAC: ; 0x02224BAC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x68
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	str r5, [r4, #0x60]
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221C4A8
	add r1, r4, #0
	add r1, #0x64
	strh r0, [r1]
	add r0, r5, #0
	mov r1, #2
	bl ov07_0221C4A8
	add r1, r4, #0
	add r7, r0, #0
	add r0, r5, #0
	add r1, #0x20
	bl ov07_02231FE4
	mov r6, #0xff
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	bgt _02224C08
	add r0, r6, #3
	cmp r7, r0
	blt _02224C5E
	beq _02224C12
	add r0, r6, #5
	cmp r7, r0
	beq _02224C1C
	add r0, r6, #0
	add r0, #9
	cmp r7, r0
	beq _02224C38
	b _02224C5E
_02224C08:
	add r0, r6, #0
	add r0, #0x11
	cmp r7, r0
	beq _02224C42
	b _02224C5E
_02224C12:
	add r0, r5, #0
	bl ov07_0221C468
	add r6, r0, #0
	b _02224C62
_02224C1C:
	add r0, r5, #0
	bl ov07_0221FAB0
	cmp r0, #1
	bne _02224C62
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_0223197C
	add r6, r0, #0
	b _02224C62
_02224C38:
	add r0, r5, #0
	bl ov07_0221C470
	add r6, r0, #0
	b _02224C62
_02224C42:
	add r0, r5, #0
	bl ov07_0221FAB0
	cmp r0, #1
	bne _02224C62
	add r0, r5, #0
	bl ov07_0221C470
	add r1, r0, #0
	add r0, r5, #0
	bl ov07_0223197C
	add r6, r0, #0
	b _02224C62
_02224C5E:
	bl GF_AssertFail
_02224C62:
	cmp r6, #0xff
	bne _02224C6E
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
_02224C6E:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221FA48
	add r1, r4, #0
	add r1, #0x10
	str r0, [r4, #0x14]
	bl ov07_02231FA0
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_02222004
	cmp r0, #0
	bgt _02224C9C
	mov r0, #0x64
	ldrsh r1, [r4, r0]
	sub r0, #0x65
	add r2, r1, #0
	mul r2, r0
	add r0, r4, #0
	add r0, #0x64
	strh r2, [r0]
_02224C9C:
	add r0, r5, #0
	bl ov07_0221BFC0
	ldr r0, [r4, #0x60]
	ldr r1, _02224CB4 ; =ov07_02224B14
	add r2, r4, #0
	bl ov07_0221C410
	add r1, r4, #0
	bl ov07_02224B14
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02224CB4: .word ov07_02224B14
	thumb_func_end ov07_02224BAC

