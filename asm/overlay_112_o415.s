#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0C8C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0C8C
ov112_021F0C8C: ; 0x021F0C8C
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #6]
	mov r3, #2
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	ldrh r1, [r5, #4]
	ldrb r2, [r5, #8]
	add r0, sp, #0x14
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldr r0, [r5]
	mov r3, #0x6e
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r5, #4]
	add r1, sp, #0x10
	lsl r3, r3, #2
	str r0, [sp, #0xc]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	ldr r2, [r4]
	ldr r3, [r4, r3]
	bl sub_02014540
	add r1, sp, #0x10
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #8]
	ldr r2, [r4]
	bl AllocAndReadWholeNarcMemberByIdPair
	add r1, sp, #0x10
	add r5, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #1
	beq _021F0CEA
	bl GF_AssertFail
_021F0CEA:
	ldr r0, [sp, #0x10]
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r0, [r0, #0xc]
	add r1, r4, r1
	mov r2, #0x20
	bl MIi_CpuCopy16
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x24
	pop {r4, r5, pc}
	thumb_func_end ov112_021F0C8C

