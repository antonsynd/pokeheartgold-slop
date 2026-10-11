#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EF17C
	.extern ov112_021FF0DC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EF17C
ov112_021EF17C: ; 0x021EF17C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021EF198 ; =ov112_021FF0DC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EF198: .word ov112_021FF0DC
	thumb_func_end ov112_021EF17C

