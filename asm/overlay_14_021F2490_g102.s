#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F40E8
	.extern ov14_021F2A74

    .text

	.text
	thumb_func_start ov14_021F40E8
ov14_021F40E8: ; 0x021F40E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	cmp r7, #1
	bne _021F40F6
	mov r7, #1
	b _021F40F8
_021F40F6:
	mov r7, #0
_021F40F8:
	mov r6, #0
	add r4, r6, #0
_021F40FC:
	ldr r0, [r5, #0x34]
	add r1, r0, r4
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F4164
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	cmp r7, #1
	bne _021F4164
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _021F4164
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021F4170 ; =0x00004094
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	str r1, [sp]
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetDrawPriority
	add r2, r0, #0
	add r1, r6, #0
	ldr r0, [r5, #0x34]
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	ldr r1, [r5, #0x34]
	ldr r0, [sp]
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetPriority
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	add r2, r0, r4
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl ManagedSprite_SetPriority
_021F4164:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blo _021F40FC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4170: .word 0x00004094
	thumb_func_end ov14_021F40E8

