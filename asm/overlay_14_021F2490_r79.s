#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3D70
	.extern ov14_021F3D0C

    .text

	.text
	thumb_func_start ov14_021F3D70
ov14_021F3D70: ; 0x021F3D70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021F3D98
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
_021F3D98:
	ldrb r1, [r4, #0xc]
	ldr r3, _021F3DE0 ; =0x0000C121
	mov r2, #0xd
	bl ov14_021F3D0C
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	beq _021F3DD2
	ldrb r0, [r4, #0xc]
	cmp r0, r1
	beq _021F3DD2
	ldr r3, _021F3DE4 ; =0x0000C122
	add r0, r5, #0
	mov r2, #0xe
	bl ov14_021F3D0C
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
_021F3DD2:
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F3DE0: .word 0x0000C121
_021F3DE4: .word 0x0000C122
	thumb_func_end ov14_021F3D70

