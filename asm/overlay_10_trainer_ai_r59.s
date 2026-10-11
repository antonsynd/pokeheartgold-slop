	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DA24
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221DA24
ov10_0221DA24: ; 0x0221DA24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	cmp r6, #0
	beq _0221DAB4
	cmp r6, #1
	beq _0221DA60
	cmp r6, #3
	beq _0221DA86
	pop {r3, r4, r5, r6, r7, pc}
_0221DA60:
	mov r2, #0xc0
	mul r2, r0
	ldr r0, _0221DADC ; =0x00002D4C
	mov r1, #0
	add r3, r5, r2
_0221DA6A:
	ldrh r2, [r3, r0]
	cmp r4, r2
	beq _0221DA78
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #4
	blt _0221DA6A
_0221DA78:
	cmp r1, #4
	bge _0221DAD8
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, r6, r7, pc}
_0221DA86:
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	ldr r1, _0221DAE0 ; =0x00002D8C
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0221DAD8
	ldr r1, _0221DADC ; =0x00002D4C
	mov r3, #0
_0221DA98:
	ldrh r2, [r0, r1]
	cmp r4, r2
	beq _0221DAA6
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _0221DA98
_0221DAA6:
	cmp r3, #4
	bge _0221DAD8
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, r6, r7, pc}
_0221DAB4:
	lsl r0, r0, #3
	add r3, r5, r0
	mov r0, #0x37
	mov r1, #0
	lsl r0, r0, #4
_0221DABE:
	ldrh r2, [r3, r0]
	cmp r4, r2
	beq _0221DACC
	add r1, r1, #1
	add r3, r3, #2
	cmp r1, #4
	blt _0221DABE
_0221DACC:
	cmp r1, #4
	bge _0221DAD8
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
_0221DAD8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221DADC: .word 0x00002D4C
_0221DAE0: .word 0x00002D8C
	thumb_func_end ov10_0221DA24

