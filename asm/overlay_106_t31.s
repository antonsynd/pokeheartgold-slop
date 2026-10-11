#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E63E0
	.extern ov106_021E6A34

	.text

	.text
	thumb_func_start ov106_021E63E0
ov106_021E63E0: ; 0x021E63E0
	push {r4, lr}
	add r4, r0, #0
	bl ov106_021E6A34
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	bl SpriteSystem_TransferOam
	ldr r3, _021E6400 ; =0x027E0000
	ldr r1, _021E6404 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E6400: .word 0x027E0000
_021E6404: .word 0x00003FF8
	thumb_func_end ov106_021E63E0

