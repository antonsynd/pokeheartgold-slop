#include "constants/mmodel.h"
#include "constants/species.h"
	.include "macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5EE4

	.text

	.text
	thumb_func_start ov106_021E5EE4
ov106_021E5EE4: ; 0x021E5EE4
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021E5F1C
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021E5F20 ; =0x04000064
	str r1, [r0]
_021E5F1C:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021E5F20: .word 0x04000064
	thumb_func_end ov106_021E5EE4

