	.include "asm/macros.inc"
	.include "overlay_49_02261FC0.inc"
	.include "global.inc"
	.public ov49_02262C38
	.extern ov49_02269DFC

    .text

	.text
	thumb_func_start ov49_02262C38
ov49_02262C38: ; 0x02262C38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r7, r3, #0
	bl ov49_0225A10C
	ldr r0, [sp]
	mov r4, #0
	str r6, [r0, #0x38]
	cmp r6, #0
	bls _02262C6E
_02262C54:
	add r0, r5, #0
	mov r1, #0
	add r2, r7, r4
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, r6
	blo _02262C54
_02262C6E:
	ldr r2, [sp]
	ldr r3, _02262CA4 ; =ov49_02269DFC
	add r2, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x38]
	strh r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	ldrh r0, [r0, #0x2a]
	cmp r0, r1
	bls _02262C96
	ldr r0, [sp]
	strh r1, [r0, #0x2a]
_02262C96:
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262CA4: .word ov49_02269DFC
	thumb_func_end ov49_02262C38

