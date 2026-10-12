	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02237B80
	.extern _0223B4E0
	.extern _0223B820
	.extern ov72_02237D50
	.extern ov72_0223B834
	.extern ov72_0223B923

	.text

	.text
	thumb_func_start ov72_02237B80
ov72_02237B80: ; 0x02237B80
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov38_0221BE84
	ldr r0, _02237BC0 ; =_0223B820
	sub r1, r4, #1
	strb r1, [r0, #0x14]
	mov r0, #2
	str r0, [sp]
	ldr r0, _02237BC4 ; =_0223B4E0
	ldr r1, _02237BC8 ; =ov72_0223B834
	ldr r3, _02237BCC ; =ov72_0223B923
	mov r2, #1
	bl ov72_02237D50
	cmp r0, #0
	beq _02237BAE
	ldr r0, _02237BC0 ; =_0223B820
	mov r1, #2
	str r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
_02237BAE:
	ldr r0, _02237BC0 ; =_0223B820
	mov r1, #0xc
	str r1, [r0]
	sub r1, #0x11
	str r1, [r0, #4]
	bl ov38_0221BFEC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02237BC0: .word _0223B820
_02237BC4: .word _0223B4E0
_02237BC8: .word ov72_0223B834
_02237BCC: .word ov72_0223B923
	thumb_func_end ov72_02237B80

