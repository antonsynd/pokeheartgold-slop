#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E59AC
	.extern ov14_021E5A14

    .text

	.text
	thumb_func_start ov14_021E59AC
ov14_021E59AC: ; 0x021E59AC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x34]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021E59C6
	add r0, r4, #0
	blx r1
	cmp r0, #0
	bne _021E59C6
	ldr r0, [r4, #0x34]
	mov r1, #0
	str r1, [r0, #4]
_021E59C6:
	add r0, r4, #0
	bl ov14_021E5A14
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x18]
	bl PaletteData_PushTransparentBuffers
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl DoScheduledBgGpuUpdates
	ldr r0, [r4, #0x34]
	bl ov14_021F29C4
	ldr r1, [r4, #0x34]
	ldr r0, _021E5A08 ; =0x000088D2
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021E59FA
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl SpriteSystem_DrawSprites
	bl SpriteSystem_TransferOam
_021E59FA:
	ldr r3, _021E5A0C ; =0x027E0000
	ldr r1, _021E5A10 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5A08: .word 0x000088D2
_021E5A0C: .word 0x027E0000
_021E5A10: .word 0x00003FF8
	thumb_func_end ov14_021E59AC

