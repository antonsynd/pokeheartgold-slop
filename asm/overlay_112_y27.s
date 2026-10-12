#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7464
	.extern ov112_021FFB08
	.extern ov112_021FFBD8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7464
ov112_021E7464: ; 0x021E7464
	push {r3, lr}
	ldr r0, _021E747C ; =ov112_021FFB08
	bl OS_LockMutex
	ldr r0, _021E7480 ; =ov112_021FFBD8
	mov r1, #0
	bl OS_KillThread
	ldr r0, _021E747C ; =ov112_021FFB08
	bl OS_UnlockMutex
	pop {r3, pc}
	.balign 4, 0
_021E747C: .word ov112_021FFB08
_021E7480: .word ov112_021FFBD8
	thumb_func_end ov112_021E7464

