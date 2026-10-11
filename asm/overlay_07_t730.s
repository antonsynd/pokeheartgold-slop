	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02234718
	.extern ov07_02237784

	.text

	.text
	thumb_func_start ov07_02234718
ov07_02234718: ; 0x02234718
	push {r3, r4, r5, lr}
	sub sp, #0x58
	ldr r4, _02234748 ; =ov07_02237784
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #0xb
_02234724:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234724
	sub r0, r5, #5
	cmp r0, #0x16
	blo _0223473C
	bl GF_AssertFail
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223473C:
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x58
	pop {r3, r4, r5, pc}
	nop
_02234748: .word ov07_02237784
	thumb_func_end ov07_02234718

