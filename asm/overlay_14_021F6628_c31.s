#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6BC0
	.extern ov14_021F6B28

    .text

	.text
	thumb_func_start ov14_021F6BC0
ov14_021F6BC0: ; 0x021F6BC0
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
	cmp r4, #0xc
	ldr r1, [r5, #0x34]
	bhs _021F6C18
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F6C0C
	cmp r4, #7
	blo _021F6C14
	cmp r4, #0xb
	bhi _021F6C14
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
_021F6C0C:
	cmp r4, #6
	bne _021F6C14
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021F6C14:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021F6C18:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F6C36
	cmp r4, #6
	beq _021F6C32
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _021F6C36
_021F6C32:
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021F6C36:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F6BC0

