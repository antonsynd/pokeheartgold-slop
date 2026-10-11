#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E928
	.extern ov65_0221F890
	.extern ov65_0221FD3C

	.text

	.text
	thumb_func_start ov65_0221E928
ov65_0221E928: ; 0x0221E928
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x1a
	mov r1, #0
	add r6, r2, #0
	bl TouchscreenListMenuSpawner_Create
	ldr r1, _0221E99C ; =0x000036C4
	mov r2, #0x18
	str r0, [r5, r1]
	add r0, sp, #0xc
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _0221E9A0 ; =ov65_0221FD3C
	add r2, sp, #0xc
	ldrh r3, [r0]
	add r1, sp, #0xc
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh r3, [r0, #4]
	strh r3, [r2, #4]
	ldrh r3, [r0, #6]
	strh r3, [r2, #6]
	ldrh r3, [r0, #8]
	ldrh r0, [r0, #0xa]
	strh r3, [r2, #8]
	strh r0, [r2, #0xa]
	ldr r0, _0221E9A4 ; =0x00000668
	mov r3, #0x11
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	lsl r0, r6, #0x18
	strb r4, [r2, #0x14]
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, _0221E99C ; =0x000036C4
	str r2, [sp, #8]
	ldr r0, [r5, r0]
	bl TouchscreenListMenu_Create
	add r4, r0, #0
	bl ov65_0221F890
	add r0, r4, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_0221E99C: .word 0x000036C4
_0221E9A0: .word ov65_0221FD3C
_0221E9A4: .word 0x00000668
	thumb_func_end ov65_0221E928

