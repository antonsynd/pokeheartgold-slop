	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CB00
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221CB00
ov10_0221CB00: ; 0x0221CB00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	ldr r1, _0221CB58 ; =0x000003CF
	mov ip, r0
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mov r0, #0
	mul r1, r2
	add r3, r6, r1
	ldr r7, _0221CB5C ; =0x00002D4C
	add r1, r3, #0
	add r2, r0, #0
_0221CB26:
	ldrh r4, [r1, r7]
	cmp r4, #0
	beq _0221CB3E
	ldr r4, _0221CB5C ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	lsl r4, r4, #4
	add r5, r6, r4
	ldr r4, _0221CB60 ; =0x000003E1
	ldrb r4, [r5, r4]
	cmp r4, #0
	bne _0221CB48
_0221CB3E:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _0221CB26
_0221CB48:
	cmp r0, #4
	bne _0221CB54
	add r0, r6, #0
	mov r1, ip
	bl ov10_0221EF24
_0221CB54:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CB58: .word 0x000003CF
_0221CB5C: .word 0x00002D4C
_0221CB60: .word 0x000003E1
	thumb_func_end ov10_0221CB00

