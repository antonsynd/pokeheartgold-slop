#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6E8C
	.public ov14_021F6F08
	.extern ov14_021F6B28

    .text

	.text
	thumb_func_start ov14_021F6E8C
ov14_021F6E8C: ; 0x021F6E8C
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
	cmp r4, #0x27
	ldr r1, [r5, #0x34]
	bhs _021F6EE4
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F6ED8
	cmp r4, #0x22
	blo _021F6EE0
	cmp r4, #0x26
	bhi _021F6EE0
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
_021F6ED8:
	cmp r4, #0x21
	bne _021F6EE0
	mov r0, #0x26
	pop {r4, r5, r6, pc}
_021F6EE0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021F6EE4:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F6F02
	cmp r4, #0x21
	beq _021F6EFE
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _021F6F02
_021F6EFE:
	mov r0, #0x26
	pop {r4, r5, r6, pc}
_021F6F02:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F6E8C

	thumb_func_start ov14_021F6F08
ov14_021F6F08: ; 0x021F6F08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r2, r0
	beq _021F6F5A
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F6F4C
	add r0, r4, #0
	sub r0, #0x1f
	cmp r0, #1
	bhi _021F6F32
	mov r4, #0x1e
	b _021F6F5A
_021F6F32:
	cmp r4, #0x1e
	beq _021F6F5A
	cmp r4, #0x21
	beq _021F6F5A
	add r0, r5, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0xff
	beq _021F6F48
	cmp r4, #0x1e
	blo _021F6F5A
_021F6F48:
	mov r4, #0
	b _021F6F5A
_021F6F4C:
	cmp r4, #0x23
	beq _021F6F5A
	cmp r4, #0x24
	beq _021F6F5A
	cmp r4, #0x25
	beq _021F6F5A
	mov r4, #0x22
_021F6F5A:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F6B28
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F6F08

