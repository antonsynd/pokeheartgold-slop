	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A0B8

	.text

	.text
	thumb_func_start ov71_0224A0B8
ov71_0224A0B8: ; 0x0224A0B8
	push {r4, r5, r6, lr}
	ldr r3, _0224A0EC ; =0x000001FF
	add r4, r1, #0
	add r6, r2, #0
	and r4, r3
	add r5, r0, #0
	mov r1, #2
	mov r2, #3
	and r3, r6
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	add r3, r4, #0
	bl BgSetPosTextAndCommit
	add r4, #0xc0
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	add r3, r4, #0
	bl BgSetPosTextAndCommit
	pop {r4, r5, r6, pc}
	nop
_0224A0EC: .word 0x000001FF
	thumb_func_end ov71_0224A0B8

