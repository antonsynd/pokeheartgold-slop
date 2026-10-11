#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E6280
	.extern ov106_021E5900
	.extern ov106_021E5954
	.extern ov106_021E59FC
	.extern ov106_021E5A44
	.extern ov106_021E5A74
	.extern ov106_021E5AA8
	.extern ov106_021E6EC4
	.extern ov106_021E6EE4
	.extern ov106_021E6EFC

	.text

	.text
	thumb_func_start ov106_021E6280
ov106_021E6280: ; 0x021E6280
	push {r4, lr}
	add r4, r0, #0
	bl ov106_021E5900
	ldr r1, _021E62BC ; =ov106_021E6EFC
	add r0, r4, #0
	bl ov106_021E59FC
	ldr r0, [r4]
	add r0, r0, #4
	bl ov106_021E5A44
	ldr r0, _021E62C0 ; =ov106_021E6EC4
	bl ov106_021E5A74
	ldr r2, _021E62C4 ; =ov106_021E6EE4
	add r0, r4, #0
	mov r1, #0xf6
	mov r3, #2
	bl ov106_021E5AA8
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	mov r3, #3
	bl ov106_021E5954
	mov r0, #2
	pop {r4, pc}
	nop
_021E62BC: .word ov106_021E6EFC
_021E62C0: .word ov106_021E6EC4
_021E62C4: .word ov106_021E6EE4
	thumb_func_end ov106_021E6280

