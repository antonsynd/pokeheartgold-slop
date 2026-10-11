#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EC23C

    .text

	thumb_func_start ov14_021EC23C
ov14_021EC23C: ; 0x021EC23C
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F08F0
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EC254
	add r0, r4, #0
	bl ov14_021F57B8
_021EC254:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E7588
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	sub r1, #0x1e
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021EC29E
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	mov r0, #0x5b
	pop {r4, pc}
_021EC29E:
	mov r0, #0x24
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021EC23C

