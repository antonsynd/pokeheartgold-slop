	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237CB0
	.extern _0223B820
	.extern ov72_02237D50
	.extern ov72_0223B5C4
	.extern ov72_0223B834
	.extern ov72_0223B923

	.text

	.text
	thumb_func_start ov72_02237CB0
ov72_02237CB0: ; 0x02237CB0
	push {r3, lr}
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	ldr r0, _02237CE4 ; =ov72_0223B5C4
	ldr r1, _02237CE8 ; =ov72_0223B834
	ldr r3, _02237CEC ; =ov72_0223B923
	mov r2, #0
	bl ov72_02237D50
	cmp r0, #0
	beq _02237CD2
	ldr r0, _02237CF0 ; =_0223B820
	mov r1, #8
	str r1, [r0]
	pop {r3, pc}
_02237CD2:
	ldr r0, _02237CF0 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	nop
_02237CE4: .word ov72_0223B5C4
_02237CE8: .word ov72_0223B834
_02237CEC: .word ov72_0223B923
_02237CF0: .word _0223B820
	thumb_func_end ov72_02237CB0

