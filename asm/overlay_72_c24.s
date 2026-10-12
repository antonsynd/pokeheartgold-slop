	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022386F4
	.extern ov72_02238688
	.extern ov72_0223B3A4
	.extern ov72_0223B3A6

	.text

	.text
	thumb_func_start ov72_022386F4
ov72_022386F4: ; 0x022386F4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02238728 ; =ov72_0223B3A4
	lsl r3, r4, #2
	ldr r2, _0223872C ; =ov72_0223B3A6
	ldrh r1, [r1, r3]
	ldrh r3, [r2, r3]
	mov r2, #1
	lsl r2, r2, #8
	add r2, r3, r2
	add r5, r0, #0
	bl ov72_02238688
	cmp r4, #0xa
	bge _0223871C
	add r0, r5, #0
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
_0223871C:
	add r0, r5, #0
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
	nop
_02238728: .word ov72_0223B3A4
_0223872C: .word ov72_0223B3A6
	thumb_func_end ov72_022386F4

