	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EC6C
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221EC6C
ov10_0221EC6C: ; 0x0221EC6C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r1, r0, #0
	cmp r4, #0
	beq _0221EC96
	cmp r4, #1
	beq _0221ECBC
	cmp r4, #2
	beq _0221ECE2
	pop {r3, r4, r5, pc}
_0221EC96:
	ldr r2, _0221ED08 ; =0x000003CF
	mov r3, #0xc0
	ldrb r0, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r4, r0, #0
	mul r4, r3
	add r0, r5, r4
	ldr r4, _0221ED0C ; =0x00002D74
	mul r3, r2
	add r2, r5, r3
	ldrb r0, [r0, r4]
	ldrb r2, [r2, r4]
	cmp r0, r2
	bls _0221ED06
	add r0, r5, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, pc}
_0221ECBC:
	ldr r2, _0221ED08 ; =0x000003CF
	mov r3, #0xc0
	ldrb r0, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r4, r0, #0
	mul r4, r3
	add r0, r5, r4
	ldr r4, _0221ED0C ; =0x00002D74
	mul r3, r2
	add r2, r5, r3
	ldrb r0, [r0, r4]
	ldrb r2, [r2, r4]
	cmp r0, r2
	bhs _0221ED06
	add r0, r5, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, pc}
_0221ECE2:
	ldr r2, _0221ED08 ; =0x000003CF
	mov r3, #0xc0
	ldrb r0, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r4, r0, #0
	mul r4, r3
	add r0, r5, r4
	ldr r4, _0221ED0C ; =0x00002D74
	mul r3, r2
	add r2, r5, r3
	ldrb r0, [r0, r4]
	ldrb r2, [r2, r4]
	cmp r0, r2
	bne _0221ED06
	add r0, r5, #0
	bl ov10_0221EF24
_0221ED06:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221ED08: .word 0x000003CF
_0221ED0C: .word 0x00002D74
	thumb_func_end ov10_0221EC6C

