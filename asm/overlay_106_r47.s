#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E6A34

	.text

	.text
	thumb_func_start ov106_021E6A34
ov106_021E6A34: ; 0x021E6A34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
	add r4, r5, #0
	add r6, r7, #0
	add r4, #0x34
_021E6A40:
	ldr r0, _021E6A78 ; =0x00002034
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6A62
	bl GX_BeginLoadBGExtPltt
	ldr r2, _021E6A78 ; =0x00002034
	add r0, r4, #0
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldr r0, _021E6A78 ; =0x00002034
	mov r1, #0
	str r1, [r5, r0]
_021E6A62:
	ldr r0, _021E6A7C ; =0x00002004
	add r7, r7, #1
	add r5, r5, r0
	sub r0, r0, #4
	add r6, r6, r0
	ldr r0, _021E6A7C ; =0x00002004
	add r4, r4, r0
	cmp r7, #3
	blo _021E6A40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6A78: .word 0x00002034
_021E6A7C: .word 0x00002004
	thumb_func_end ov106_021E6A34

