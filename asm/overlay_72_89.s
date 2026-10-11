	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223B2FC
	.public ov72_0223B4C0
	.public ov72_0223B4C2

	.text

	thumb_func_start ov72_0223B2FC
ov72_0223B2FC: ; 0x0223B2FC
	push {lr}
	sub sp, #0xc
	lsl r3, r1, #2
	ldr r1, _0223B328 ; =ov72_0223B4C0
	ldrh r1, [r1, r3]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, _0223B32C ; =ov72_0223B4C2
	ldr r2, [r0, #0x34]
	ldrh r1, [r1, r3]
	add r1, r2, r1
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {pc}
	nop
_0223B328: .word ov72_0223B4C0
_0223B32C: .word ov72_0223B4C2
	thumb_func_end ov72_0223B2FC

