#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7388
	.extern ov14_021F6B28

    .text

	.text
	thumb_func_start ov14_021F7388
ov14_021F7388: ; 0x021F7388
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F73D0
	cmp r4, #8
	blo _021F73E0
	cmp r4, #0xc
	bhi _021F73E0
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021F6B28
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021F73D0:
	cmp r4, #7
	beq _021F73DC
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _021F73E0
_021F73DC:
	mov r0, #0xd
	pop {r4, r5, r6, pc}
_021F73E0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021F7388

