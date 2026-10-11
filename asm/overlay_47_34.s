	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02259404
	.extern _02259E38

	.text

	.text
	thumb_func_start ov47_02259404
ov47_02259404: ; 0x02259404
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02259418
	bl GF_AssertFail
_02259418:
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, _0225942C ; =_02259E38
	mov r2, #0x1f
	mov r3, #6
	bl Std_CreateYesNoMenu
	str r0, [r5, #0x20]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0225942C: .word _02259E38
	thumb_func_end ov47_02259404

