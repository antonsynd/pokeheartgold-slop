#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E60B0
	.extern ov106_021E5900
	.extern ov106_021E59A4
	.extern ov106_021E59FC
	.extern ov106_021E5A44
	.extern ov106_021E5A74
	.extern ov106_021E5AA8
	.extern ov106_021E6E04
	.extern ov106_021E6E50
	.extern ov106_021E6E74

	.text

	.text
	thumb_func_start ov106_021E60B0
ov106_021E60B0: ; 0x021E60B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov106_021E5900
	ldr r0, [r4]
	add r0, r0, #4
	bl ov106_021E5A44
	ldr r0, _021E60F8 ; =ov106_021E6E04
	bl ov106_021E5A74
	ldr r1, _021E60FC ; =ov106_021E6E74
	add r0, r4, #0
	bl ov106_021E59FC
	ldr r3, [r4]
	ldr r2, _021E6100 ; =ov106_021E6E50
	add r3, #0x4e
	ldrh r5, [r3]
	mov r3, #0xc
	add r0, r4, #0
	mul r3, r5
	add r2, r2, r3
	mov r1, #0xf5
	mov r3, #1
	bl ov106_021E5AA8
	add r0, r4, #0
	mov r1, #6
	mov r2, #1
	mov r3, #3
	bl ov106_021E59A4
	mov r0, #2
	pop {r3, r4, r5, pc}
	nop
_021E60F8: .word ov106_021E6E04
_021E60FC: .word ov106_021E6E74
_021E6100: .word ov106_021E6E50
	thumb_func_end ov106_021E60B0

