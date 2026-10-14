	.include "asm/macros.inc"
	.include "nitrocrypto.inc"
	.include "global.inc"
	.public CRYPTO_SetAllocator
	.extern CRYPTOi_MyAllocFunc
	.extern CRYPTOi_MyFreeFunc

	; rc4s-arm4cw.o

	.text

	.text
	arm_func_start CRYPTO_SetAllocator
CRYPTO_SetAllocator: ; 0x0223B214
	ldr r3, _0223B228 ; =CRYPTOi_MyAllocFunc
	ldr r2, _0223B22C ; =CRYPTOi_MyFreeFunc
	str r0, [r3]
	str r1, [r2]
	bx lr
	.balign 4, 0
_0223B228: .word CRYPTOi_MyAllocFunc
_0223B22C: .word CRYPTOi_MyFreeFunc
	arm_func_end CRYPTO_SetAllocator

