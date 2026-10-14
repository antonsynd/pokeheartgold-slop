	.include "macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CD34
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF7C
	.extern ov10_0222B080
	.extern ov10_0222B098

	.text

	.text
	thumb_func_start ov10_0221CD34
ov10_0221CD34: ; 0x0221CD34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	ldr r2, _0221CE50 ; =0x00000356
	str r0, [sp, #0x1c]
	ldrh r3, [r6, r2]
	add r2, #0x88
	ldr r1, _0221CE54 ; =ov10_0222B098
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _0221CE58 ; =0x0000FFFF
	mov r0, #0
_0221CD5E:
	ldrh r4, [r1]
	cmp r3, r4
	beq _0221CD6E
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _0221CD5E
_0221CD6E:
	ldr r2, _0221CE5C ; =ov10_0222B080
	ldr r4, _0221CE58 ; =0x0000FFFF
	mov r1, #0
_0221CD74:
	ldrh r5, [r2]
	cmp r3, r5
	beq _0221CD84
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _0221CD74
_0221CD84:
	lsl r2, r1, #1
	ldr r1, _0221CE5C ; =ov10_0222B080
	ldrh r1, [r1, r2]
	ldr r2, _0221CE58 ; =0x0000FFFF
	cmp r1, r2
	bne _0221CDA4
	ldr r1, _0221CE60 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _0221CE42
	lsl r1, r0, #1
	ldr r0, _0221CE54 ; =ov10_0222B098
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _0221CE42
_0221CDA4:
	ldr r7, _0221CE64 ; =0x000003CF
	mov r4, #0
	add r5, sp, #0x20
_0221CDAA:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl GetBattlerVar
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0221CDAA
	ldr r0, _0221CE64 ; =0x000003CF
	ldrb r4, [r6, r0]
	mov r0, #0xc0
	add r5, r4, #0
	mul r5, r0
	add r0, r6, #0
	add r1, r4, #0
	bl GetBattlerAbility
	add r1, sp, #0x28
	str r1, [sp]
	ldr r3, _0221CE68 ; =0x00002DB8
	add r1, r6, r5
	ldrh r1, [r1, r3]
	add r2, r4, #0
	str r1, [sp, #4]
	add r1, sp, #0x20
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r4
	add r1, r6, r0
	add r0, r3, #0
	add r0, #0x14
	ldr r0, [r1, r0]
	sub r3, #0x6c
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r3, r6, r3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	add r3, r3, r5
	bl ov10_0221EF7C
	ldr r0, _0221CE6C ; =0x00000355
	add r1, sp, #0x28
	ldrb r0, [r6, r0]
	mov r3, #0
	lsl r0, r0, #2
	ldr r2, [r1, r0]
_0221CE18:
	ldr r0, [r1]
	cmp r0, r2
	bgt _0221CE26
	add r3, r3, #1
	add r1, r1, #4
	cmp r3, #4
	blt _0221CE18
_0221CE26:
	cmp r3, #4
	bne _0221CE36
	mov r0, #0xd7
	mov r1, #2
	lsl r0, r0, #2
	add sp, #0x38
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221CE36:
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	add sp, #0x38
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221CE42:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r6, r0]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CE50: .word 0x00000356
_0221CE54: .word ov10_0222B098
_0221CE58: .word 0x0000FFFF
_0221CE5C: .word ov10_0222B080
_0221CE60: .word 0x000003E1
_0221CE64: .word 0x000003CF
_0221CE68: .word 0x00002DB8
_0221CE6C: .word 0x00000355
	thumb_func_end ov10_0221CD34

