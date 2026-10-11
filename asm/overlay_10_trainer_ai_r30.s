	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CA9C
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221CA9C
ov10_0221CA9C: ; 0x0221CA9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	ldr r1, _0221CAF4 ; =0x000003CF
	mov ip, r0
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mov r0, #0
	mul r1, r2
	add r3, r6, r1
	ldr r7, _0221CAF8 ; =0x00002D4C
	add r1, r3, #0
	add r2, r0, #0
_0221CAC2:
	ldrh r4, [r1, r7]
	cmp r4, #0
	beq _0221CADA
	ldr r4, _0221CAF8 ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	lsl r4, r4, #4
	add r5, r6, r4
	ldr r4, _0221CAFC ; =0x000003E1
	ldrb r4, [r5, r4]
	cmp r4, #0
	bne _0221CAE4
_0221CADA:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _0221CAC2
_0221CAE4:
	cmp r0, #4
	bge _0221CAF0
	add r0, r6, #0
	mov r1, ip
	bl ov10_0221EF24
_0221CAF0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CAF4: .word 0x000003CF
_0221CAF8: .word 0x00002D4C
_0221CAFC: .word 0x000003E1
	thumb_func_end ov10_0221CA9C

