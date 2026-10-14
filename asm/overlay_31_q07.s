	.include "macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225D7A0
	.extern ov31_0225D75C
	.extern ov31_0225D83C
	.extern ov31_0225DAA4
	.extern ov31_0225E774

	.text

	.text
	thumb_func_start ov31_0225D7A0
ov31_0225D7A0: ; 0x0225D7A0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0225D7B0
	cmp r0, #1
	beq _0225D7BE
	pop {r3, r4, r5, pc}
_0225D7B0:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0225D836
	mov r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_0225D7BE:
	ldr r1, [r5, #0x14]
	ldr r0, _0225D838 ; =0x00000272
	ldrb r0, [r1, r0]
	cmp r0, #3
	beq _0225D7D2
	cmp r0, #7
	beq _0225D7FA
	cmp r0, #0xb
	beq _0225D814
	b _0225D81A
_0225D7D2:
	add r0, r5, #0
	mov r1, #0
	bl ov31_0225DAA4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0225D81A
	add r0, r5, #0
	add r1, r4, #0
	bl ov31_0225D75C
	cmp r0, #0
	beq _0225D81A
	mov r0, #0xa5
	ldr r1, [r5, #0x14]
	lsl r0, r0, #2
	str r4, [r1, r0]
	b _0225D81A
_0225D7FA:
	add r0, r5, #0
	mov r1, #1
	bl ov31_0225DAA4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225D81A
	mov r1, #0xa5
	ldr r2, [r5, #0x14]
	lsl r1, r1, #2
	str r0, [r2, r1]
	b _0225D81A
_0225D814:
	add r0, r5, #0
	bl ov31_0225E774
_0225D81A:
	mov r0, #0xa6
	ldr r1, [r5, #0x14]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0225D836
	add r0, r5, #0
	bl ov31_0225D83C
	mov r0, #0xa6
	ldr r1, [r5, #0x14]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
_0225D836:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225D838: .word 0x00000272
	thumb_func_end ov31_0225D7A0

