#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5A44

	.text

	.text
	thumb_func_start ov106_021E5A44
ov106_021E5A44: ; 0x021E5A44
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	add r6, r5, #0
	mov r7, #4
_021E5A4E:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r7]
	add r0, r4, #0
	bl NNS_G3dGlbLightVector
	ldrh r1, [r6, #0x18]
	add r0, r4, #0
	bl NNS_G3dGlbLightColor
	add r4, r4, #1
	add r5, r5, #6
	add r6, r6, #2
	cmp r4, #4
	blo _021E5A4E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov106_021E5A44

