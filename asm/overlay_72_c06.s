	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237C30
	.extern _0223B820
	.extern ov72_02237D50
	.extern ov72_0223B578
	.extern ov72_0223B82C
	.extern ov72_0223B834
	.extern ov72_0223B900
	.extern ov72_0223B91B
	.extern ov72_0223B923

	.text

	.text
	thumb_func_start ov72_02237C30
ov72_02237C30: ; 0x02237C30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov38_0221BE84
	ldr r0, _02237C94 ; =ov72_0223B834
	add r1, r4, #0
	mov r2, #0xe4
	bl memcpy
	ldr r0, _02237C98 ; =ov72_0223B900
	sub r1, r5, #1
	strb r1, [r0, #0x18]
	sub r1, r6, #1
	strb r1, [r0, #0x19]
	ldr r3, _02237C9C ; =ov72_0223B91B
	ldr r2, _02237CA0 ; =ov72_0223B82C
	strb r7, [r0, #0x1a]
	mov r1, #8
_02237C5A:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02237C5A
	mov r0, #2
	str r0, [sp]
	ldr r0, _02237CA4 ; =ov72_0223B578
	ldr r1, _02237C94 ; =ov72_0223B834
	ldr r3, _02237CA8 ; =ov72_0223B923
	mov r2, #0xef
	bl ov72_02237D50
	cmp r0, #0
	beq _02237C82
	ldr r0, _02237CAC ; =_0223B820
	mov r1, #6
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_02237C82:
	ldr r0, _02237CAC ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237C94: .word ov72_0223B834
_02237C98: .word ov72_0223B900
_02237C9C: .word ov72_0223B91B
_02237CA0: .word ov72_0223B82C
_02237CA4: .word ov72_0223B578
_02237CA8: .word ov72_0223B923
_02237CAC: .word _0223B820
	thumb_func_end ov72_02237C30

