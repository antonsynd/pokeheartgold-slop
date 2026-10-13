	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247424
	.extern _0224C040
	.extern ov71_0224C044

	.text

	.text
	thumb_func_start ov71_02247424
ov71_02247424: ; 0x02247424
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02247444 ; =_0224C040
	ldr r0, [r0]
	cmp r0, #0x20
	blt _02247434
	bl GF_AssertFail
_02247434:
	ldr r0, _02247444 ; =_0224C040
	ldr r2, [r0]
	add r1, r2, #1
	str r1, [r0]
	ldr r0, _02247448 ; =ov71_0224C044
	lsl r1, r2, #2
	str r4, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_02247444: .word _0224C040
_02247448: .word ov71_0224C044
	thumb_func_end ov71_02247424

