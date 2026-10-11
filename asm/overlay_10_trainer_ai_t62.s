	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DC48
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221DC48
ov10_0221DC48: ; 0x0221DC48
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
	beq _0221DCB0
	cmp r6, #1
	bne _0221DCE0
	mov r2, #0xc0
	mul r2, r0
	add r0, r5, r2
	ldr r2, _0221DCE4 ; =0x000003DE
	ldr r3, _0221DCE8 ; =0x00002D4C
	mov r1, #0
_0221DC8A:
	ldrh r6, [r0, r3]
	cmp r6, #0
	beq _0221DC9A
	lsl r6, r6, #4
	add r6, r5, r6
	ldrh r6, [r6, r2]
	cmp r4, r6
	beq _0221DCA2
_0221DC9A:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _0221DC8A
_0221DCA2:
	cmp r1, #4
	bne _0221DCE0
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, r6, r7, pc}
_0221DCB0:
	ldr r2, _0221DCE4 ; =0x000003DE
	lsl r0, r0, #3
	add r3, r2, #0
	mov r1, #0
	add r0, r5, r0
	sub r3, #0x6e
_0221DCBC:
	ldrh r6, [r0, r3]
	cmp r6, #0
	beq _0221DCCC
	lsl r6, r6, #4
	add r6, r5, r6
	ldrh r6, [r6, r2]
	cmp r4, r6
	beq _0221DCD4
_0221DCCC:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _0221DCBC
_0221DCD4:
	cmp r1, #4
	bne _0221DCE0
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
_0221DCE0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221DCE4: .word 0x000003DE
_0221DCE8: .word 0x00002D4C
	thumb_func_end ov10_0221DC48

