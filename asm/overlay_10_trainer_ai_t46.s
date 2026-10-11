	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221D188
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221D188
ov10_0221D188: ; 0x0221D188
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r4, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	mov r1, #0xc0
	mul r1, r0
	mov r2, #2
	mov ip, r1
	add r6, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r3, [r6, r1]
	lsl r2, r2, #0x14
	tst r2, r3
	beq _0221D1C8
	mov r4, #0
	b _0221D234
_0221D1C8:
	cmp r4, #0
	beq _0221D1D0
	cmp r4, #2
	bne _0221D230
_0221D1D0:
	mov r1, #0x39
	add r2, r5, r0
	lsl r1, r1, #4
	ldrb r4, [r2, r1]
	cmp r4, #0
	beq _0221D1E2
	sub r1, #0x34
	str r4, [r5, r1]
	b _0221D234
_0221D1E2:
	mov r1, ip
	add r2, r5, r1
	ldr r1, _0221D25C ; =0x00002D67
	ldrb r4, [r2, r1]
	cmp r4, #0x17
	beq _0221D234
	cmp r4, #0x2a
	beq _0221D234
	cmp r4, #0x47
	beq _0221D234
	sub r1, #0x27
	add r6, r5, r1
	mov r1, #0xc0
	mul r1, r0
	ldrh r0, [r6, r1]
	str r1, [sp]
	mov r1, #0x18
	bl GetMonBaseStat
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x19
	ldrh r0, [r6, r0]
	bl GetMonBaseStat
	cmp r4, #0
	beq _0221D228
	cmp r0, #0
	beq _0221D228
	cmp r4, r7
	beq _0221D224
	cmp r0, r7
	bne _0221D234
_0221D224:
	mov r4, #0
	b _0221D234
_0221D228:
	cmp r4, #0
	bne _0221D234
	add r4, r0, #0
	b _0221D234
_0221D230:
	sub r1, #0x59
	ldrb r4, [r6, r1]
_0221D234:
	cmp r4, #0
	bne _0221D242
	mov r0, #0xd7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D242:
	cmp r4, r7
	bne _0221D250
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D250:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221D25C: .word 0x00002D67
	thumb_func_end ov10_0221D188

