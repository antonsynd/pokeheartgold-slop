	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D0E8
	.extern ov07_02223038

	.text

	.text
	thumb_func_start ov07_0221D0E8
ov07_0221D0E8: ; 0x0221D0E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r1, r0, #4
	str r1, [r4, #0x18]
	ldr r0, [r1]
	add r1, r1, #4
	str r1, [r4, #0x18]
	bl ov07_02223038
	add r7, r0, #0
	ldr r0, [r4, #0x18]
	add r2, r4, #0
	ldr r5, [r0]
	add r0, r0, #4
	add r2, #0x18
	mov r3, #0
	str r0, [r4, #0x18]
	cmp r5, #0
	bls _0221D12A
	add r6, r4, #0
_0221D112:
	ldr r0, [r4, #0x18]
	add r3, r3, #1
	ldr r1, [r0]
	add r0, r6, #0
	add r0, #0x94
	str r1, [r0]
	ldr r0, [r2]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [r2]
	cmp r3, r5
	blo _0221D112
_0221D12A:
	cmp r3, #0xa
	bge _0221D142
	lsl r0, r3, #2
	add r2, r4, r0
	mov r1, #0
_0221D134:
	add r0, r2, #0
	add r0, #0x94
	add r3, r3, #1
	add r2, r2, #4
	str r1, [r0]
	cmp r3, #0xa
	blt _0221D134
_0221D142:
	add r0, r4, #0
	blx r7
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_0221D0E8

