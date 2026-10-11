#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7398
	.extern ov112_021E5B98
	.extern ov112_021E5E18
	.extern ov112_021FFB08
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7398
ov112_021E7398: ; 0x021E7398
	push {r4, r5, r6, lr}
	ldr r5, _021E73C4 ; =ov112_021FFB08
	mov r4, #2
	mov r6, #4
_021E73A0:
	add r0, r5, #0
	bl OS_LockMutex
	bl ov112_021E5B98
	cmp r0, #1
	bne _021E73B4
	add r0, r4, #0
	bl ov112_021E5E18
_021E73B4:
	add r0, r5, #0
	bl OS_UnlockMutex
	add r0, r6, #0
	bl OS_Sleep
	b _021E73A0
	nop
_021E73C4: .word ov112_021FFB08
	thumb_func_end ov112_021E7398

