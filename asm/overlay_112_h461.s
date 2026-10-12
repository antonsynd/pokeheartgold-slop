#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F24F8
	.extern ov112_021F1EFC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F24F8
ov112_021F24F8: ; 0x021F24F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	lsl r1, r3, #0x1f
	lsr r1, r1, #0x1f
	beq _021F257A
	lsl r2, r3, #0x18
	lsr r1, r2, #0x19
	beq _021F2518
	cmp r1, #1
	beq _021F254C
	cmp r1, #2
	beq _021F257A
	b _021F2576
_021F2518:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	mov r1, #0x18
	bl ManagedSprite_SetAnim
	mov r2, #0x53
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	mov r1, #0xfe
	add r0, r3, #0
	bic r0, r1
	lsl r1, r3, #0x18
	lsr r1, r1, #0x19
	add r1, r1, #1
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, r2]
	pop {r4, pc}
_021F254C:
	lsr r1, r3, #8
	cmp r1, #0x19
	blo _021F256A
	add r0, r4, #0
	add r0, #0xac
	mov r1, #0
	bl ov112_021F1EFC
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [r4, r1]
	pop {r4, pc}
_021F256A:
	add r1, r1, #1
	lsr r2, r2, #0x18
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r4, r0]
	pop {r4, pc}
_021F2576:
	bl GF_AssertFail
_021F257A:
	pop {r4, pc}
	thumb_func_end ov112_021F24F8

