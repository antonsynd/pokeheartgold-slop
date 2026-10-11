	.include "asm/macros.inc"
	.include "overlay_49_022649F4.inc"
	.include "global.inc"
	.public ov49_02265110
	.extern ov49_02269E1C
	.extern ov49_02269E24

    .text

	.text
	thumb_func_start ov49_02265110
ov49_02265110: ; 0x02265110
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225A10C
	mov r0, #8
	ldr r5, _02265168 ; =ov49_02269E1C
	str r0, [r7, #0x20]
	mov r4, #0
_02265126:
	ldrb r2, [r5]
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _02265126
	ldr r3, _0226516C ; =ov49_02269E24
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x12]
	add r0, r6, #0
	bl ov49_0225A154
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265168: .word ov49_02269E1C
_0226516C: .word ov49_02269E24
	thumb_func_end ov49_02265110

