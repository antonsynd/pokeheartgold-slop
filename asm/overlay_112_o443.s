#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F194C
	.extern ov112_021FF9B8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F194C
ov112_021F194C: ; 0x021F194C
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #8
	blo _021F1958
	bl GF_AssertFail
_021F1958:
	ldr r0, _021F1968 ; =ov112_021FF9B8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl PlayBGM
	pop {r4, pc}
	.balign 4, 0
_021F1968: .word ov112_021FF9B8
	thumb_func_end ov112_021F194C

