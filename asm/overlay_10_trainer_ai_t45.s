	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221D0A8
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221D0A8
ov10_0221D0A8: ; 0x0221D0A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r7, r0, #0
	lsl r1, r7, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r1, r0, #0
	mov r3, #0xb7
	mov r2, #2
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	add r0, r5, r6
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	lsl r2, r2, #0x14
	tst r2, r4
	beq _0221D0EA
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D0EA:
	ldr r2, _0221D180 ; =0x000003CF
	ldrb r4, [r5, r2]
	cmp r4, r1
	beq _0221D172
	cmp r7, #3
	beq _0221D172
	add r4, r5, r1
	add r1, r2, #0
	sub r1, #0x3f
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0221D108
	sub r2, #0x73
	str r1, [r5, r2]
	pop {r3, r4, r5, r6, r7, pc}
_0221D108:
	add r1, r3, #0
	sub r1, #0x59
	ldrb r1, [r0, r1]
	cmp r1, #0x17
	beq _0221D11A
	cmp r1, #0x2a
	beq _0221D11A
	cmp r1, #0x47
	bne _0221D122
_0221D11A:
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D122:
	sub r3, #0x80
	add r7, r5, r3
	ldrh r0, [r7, r6]
	mov r1, #0x18
	bl GetMonBaseStat
	add r4, r0, #0
	ldrh r0, [r7, r6]
	mov r1, #0x19
	bl GetMonBaseStat
	add r6, r0, #0
	cmp r4, #0
	beq _0221D15E
	cmp r6, #0
	beq _0221D15E
	ldr r0, [sp]
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _0221D156
	mov r0, #0xd7
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D156:
	mov r0, #0xd7
	lsl r0, r0, #2
	str r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D15E:
	cmp r4, #0
	beq _0221D16A
	mov r0, #0xd7
	lsl r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D16A:
	mov r0, #0xd7
	lsl r0, r0, #2
	str r6, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221D172:
	ldr r0, _0221D184 ; =0x00002D67
	add r1, r5, r6
	ldrb r1, [r1, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D180: .word 0x000003CF
_0221D184: .word 0x00002D67
	thumb_func_end ov10_0221D0A8

