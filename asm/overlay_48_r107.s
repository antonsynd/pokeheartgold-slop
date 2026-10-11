	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225ACD8
	.extern ov48_0225AE3C
	.extern ov48_0225AE58
	.extern ov48_0225AE5C
	.extern ov48_0225B050
	.extern ov48_0225B330

	.text

	.text
	thumb_func_start ov48_0225ACD8
ov48_0225ACD8: ; 0x0225ACD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r5, r4
	add r6, r5, #0
	str r3, [sp]
	mov r1, #1
	add r0, #0x34
	strb r1, [r0]
	add r6, #0x38
	add r0, r2, #0
	bl ov48_0225B050
	strb r0, [r6, r4]
	lsl r7, r4, #4
	ldrb r2, [r6, r4]
	mov r1, #0x30
	ldr r3, _0225AD34 ; =ov48_0225B330
	mul r1, r2
	add r1, r3, r1
	add r0, r5, r7
	add r1, r1, r7
	bl ov48_0225AE3C
	ldr r0, [sp]
	cmp r0, #0x18
	bhs _0225AD30
	bl ov48_0225B050
	ldrb r1, [r6, r4]
	cmp r0, r1
	bne _0225AD30
	cmp r4, #2
	bhs _0225AD30
	add r0, r4, #1
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl ov48_0225AE5C
	add r0, r5, r7
	mov r1, #1
	bl ov48_0225AE58
_0225AD30:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AD34: .word ov48_0225B330
	thumb_func_end ov48_0225ACD8

