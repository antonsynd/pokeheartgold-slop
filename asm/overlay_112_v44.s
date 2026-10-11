#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7DC0
	.extern ov112_021F3244
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7DC0
ov112_021E7DC0: ; 0x021E7DC0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xf2
	lsl r1, r1, #8
	ldr r0, [r4, #0x20]
	add r1, r4, r1
	bl ov112_021F3244
	ldr r0, _021E7DF0 ; =0x0000F1D0
	mov r1, #1
	str r1, [r4, r0]
	mov r1, #GAME_VERSION
	add r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, _021E7DF4 ; =0x0001E440
	ldr r0, [r4, r0]
	bl sub_02032728
	ldr r1, _021E7DF8 ; =0x0000F1D8
	mov r2, #0x28
	add r1, r4, r1
	bl MIi_CpuCopyFast
	pop {r4, pc}
	.balign 4, 0
_021E7DF0: .word 0x0000F1D0
_021E7DF4: .word 0x0001E440
_021E7DF8: .word 0x0000F1D8
	thumb_func_end ov112_021E7DC0

