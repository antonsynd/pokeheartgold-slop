#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E61B8
	.extern ov106_021E5954
	.extern ov106_021E59FC
	.extern ov106_021E5AA8
	.extern ov106_021E5BBC
	.extern ov106_021E6E2C
	.extern ov106_021E6E9C

	.text

	.text
	thumb_func_start ov106_021E61B8
ov106_021E61B8: ; 0x021E61B8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov106_021E5BBC
	ldr r1, _021E61F0 ; =ov106_021E6E9C
	add r0, r4, #0
	bl ov106_021E59FC
	ldr r3, [r4]
	ldr r2, _021E61F4 ; =ov106_021E6E2C
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
	mov r3, #5
	bl ov106_021E5954
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E61F0: .word ov106_021E6E9C
_021E61F4: .word ov106_021E6E2C
	thumb_func_end ov106_021E61B8

