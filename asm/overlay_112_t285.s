#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EF15C
	.extern ov112_021FF0FC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EF15C
ov112_021EF15C: ; 0x021EF15C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021EF178 ; =ov112_021FF0FC
	add r3, sp, #0
	mov r2, #5
_021EF166:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EF166
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021EF178: .word ov112_021FF0FC
	thumb_func_end ov112_021EF15C

