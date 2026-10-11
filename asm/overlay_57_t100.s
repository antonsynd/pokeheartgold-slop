	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B858

	.text

	.text
	thumb_func_start ov57_0223B858
ov57_0223B858: ; 0x0223B858
	push {r3, lr}
	cmp r1, #3
	bhi _0223B88A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B86A: ; jump table
	.short _0223B872 - _0223B86A - 2 ; case 0
	.short _0223B882 - _0223B86A - 2 ; case 1
	.short _0223B87A - _0223B86A - 2 ; case 2
	.short _0223B882 - _0223B86A - 2 ; case 3
_0223B872:
	mov r1, #1
	bl ManagedSprite_SetAnimationFrame
	pop {r3, pc}
_0223B87A:
	mov r1, #2
	bl ManagedSprite_SetAnimationFrame
	pop {r3, pc}
_0223B882:
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	pop {r3, pc}
_0223B88A:
	bl GF_AssertFail
	pop {r3, pc}
	thumb_func_end ov57_0223B858

