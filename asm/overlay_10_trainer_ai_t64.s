	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DD5C
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221DD5C
ov10_0221DD5C: ; 0x0221DD5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov10_0221EEF0
	add r1, r0, #0
	cmp r5, #0
	beq _0221DD82
	cmp r5, #1
	beq _0221DDA0
	pop {r3, r4, r5, pc}
_0221DD82:
	ldr r2, _0221DDC0 ; =0x00000356
	ldrh r0, [r4, r2]
	add r2, #0x79
	ldrb r3, [r4, r2]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	ldr r2, _0221DDC4 ; =0x00002DE8
	ldrh r2, [r3, r2]
	cmp r0, r2
	bne _0221DDBC
	add r0, r4, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, pc}
_0221DDA0:
	ldr r2, _0221DDC0 ; =0x00000356
	ldrh r0, [r4, r2]
	add r2, #0x79
	ldrb r3, [r4, r2]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	ldr r2, _0221DDC8 ; =0x00002DEC
	ldrh r2, [r3, r2]
	cmp r0, r2
	bne _0221DDBC
	add r0, r4, #0
	bl ov10_0221EF24
_0221DDBC:
	pop {r3, r4, r5, pc}
	nop
_0221DDC0: .word 0x00000356
_0221DDC4: .word 0x00002DE8
_0221DDC8: .word 0x00002DEC
	thumb_func_end ov10_0221DD5C

