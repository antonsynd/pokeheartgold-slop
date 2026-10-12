	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D1B8
	.extern ov07_02234B98

	.text

	.text
	thumb_func_start ov07_0221D1B8
ov07_0221D1B8: ; 0x0221D1B8
	push {r4, r5}
	sub sp, #0x10
	ldr r5, _0221D210 ; =ov07_02234B98
	add r2, sp, #0
	add r4, r0, #0
	add r3, r2, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	add r1, r1, #4
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r0, #0x18
	ldr r1, [r1, #0xc]
	cmp r1, #0
	beq _0221D1FE
	ldr r2, [r0]
	add r2, r2, #4
	str r2, [r0]
	mov r2, #0
_0221D1EA:
	ldr r5, [r3]
	tst r5, r1
	bne _0221D1FE
	ldr r5, [r0]
	add r2, r2, #1
	add r5, r5, #4
	add r3, r3, #4
	str r5, [r0]
	cmp r2, #4
	blo _0221D1EA
_0221D1FE:
	ldr r1, [r4, #0x18]
	ldr r0, [r1]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x18]
	add sp, #0x10
	pop {r4, r5}
	bx lr
	nop
_0221D210: .word ov07_02234B98
	thumb_func_end ov07_0221D1B8

