	.include "macros.inc"
	.include "nitrocrypto.inc"
	.include "global.inc"
	.public CRYPTO_RC4Encrypt

	; rc4s-arm4cw.o

	.text

	.text
	arm_func_start CRYPTO_RC4Encrypt
CRYPTO_RC4Encrypt: ; 0x0223706C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	add r0, r0, #4
	mov lr, #0x1000000
	add r7, lr, r7, lsl #24
	mov r6, r6, lsl #0x18
	ldrb sb, [r0, r7, lsr #24]
	subs r2, r2, #1
	bmi _022370CC
_02237094:
	add r6, r6, sb, lsl #24
	subs r2, r2, #1
	ldrb r8, [r0, r6, lsr #24]
	ldrb r5, [r1], #1
	strb r8, [r0, r7, lsr #24]
	strb sb, [r0, r6, lsr #24]
	add r4, sb, r8
	and r4, r4, #0xff
	add r7, r7, lr
	ldrb r4, [r0, r4]
	ldrb sb, [r0, r7, lsr #24]
	eor r5, r5, r4
	strb r5, [r3], #1
	bge _02237094
_022370CC:
	sub r7, r7, lr
	mov r7, r7, lsr #0x18
	mov r6, r6, lsr #0x18
	strb r7, [r0, #-4]
	strb r6, [r0, #-3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end CRYPTO_RC4Encrypt

	; sign.o

