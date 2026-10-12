	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237BD0
	.extern _0223B820
	.extern ov72_02237D50
	.extern ov72_0223B52C
	.extern ov72_0223B834
	.extern ov72_0223B920

	.text

	.text
	thumb_func_start ov72_02237BD0
ov72_02237BD0: ; 0x02237BD0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02237C1C ; =ov72_0223B920
	add r6, r2, #0
	add r4, r1, #0
	str r6, [r0, #8]
	bl ov38_0221BE84
	ldr r0, _02237C20 ; =_0223B820
	sub r1, r5, #1
	strb r1, [r0, #0x14]
	sub r1, r4, #1
	strb r1, [r0, #0x15]
	ldr r0, _02237C24 ; =0x00000A38
	ldr r1, _02237C28 ; =ov72_0223B834
	str r0, [sp]
	ldr r0, _02237C2C ; =ov72_0223B52C
	mov r2, #2
	add r3, r6, #0
	bl ov72_02237D50
	cmp r0, #0
	beq _02237C0A
	ldr r0, _02237C20 ; =_0223B820
	mov r1, #4
	str r1, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02237C0A:
	ldr r0, _02237C20 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov38_0221BFEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02237C1C: .word ov72_0223B920
_02237C20: .word _0223B820
_02237C24: .word 0x00000A38
_02237C28: .word ov72_0223B834
_02237C2C: .word ov72_0223B52C
	thumb_func_end ov72_02237BD0

