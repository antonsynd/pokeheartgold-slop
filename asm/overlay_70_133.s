#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D60
	.public ov70_02238D84
	.public ov70_02238E50
	.public ov70_0223DB94
	.public ov70_0223DE6C
	.public ov70_0223E01C
	.public ov70_0223E490
	.public ov70_0223E49C
	.public ov70_0223E4FC
	.public ov70_0223E538
	.public ov70_0223E59C

	.text

	thumb_func_start ov70_0223DB94
ov70_0223DB94: ; 0x0223DB94
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223DCF8 ; =0x000011D0
	ldr r0, [r5, r0]
	bl TouchscreenListMenu_HandleInput
	cmp r0, #3
	bhi _0223DBB6
	cmp r0, #1
	blo _0223DBB4
	beq _0223DBC2
	cmp r0, #2
	beq _0223DBE0
	cmp r0, #3
	beq _0223DBBE
_0223DBB4:
	b _0223DCF0
_0223DBB6:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0223DBC0
_0223DBBE:
	b _0223DCD4
_0223DBC0:
	b _0223DCF0
_0223DBC2:
	add r0, r5, #0
	bl ov70_02238D60
	ldr r0, _0223DCFC ; =0x000011AC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #8
	mov r2, #6
	bl ov70_02238E50
	b _0223DCF0
_0223DBE0:
	add r0, r5, #0
	bl ov70_02238D60
	ldr r0, _0223DCFC ; =0x000011AC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldr r0, _0223DD00 ; =0x00000F18
	mov r1, #0
	add r0, r5, r0
	bl ClearFrameAndWindow2
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r5]
	ldrh r2, [r5, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r5, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E49C
	add r4, r0, #0
	bl ov70_0223E4FC
	cmp r0, #0
	beq _0223DC34
	ldr r0, _0223DD04 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x25
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
	b _0223DCF0
_0223DC34:
	add r0, r4, #0
	bl ov70_0223E538
	cmp r0, #0
	beq _0223DC72
	cmp r0, #1
	ldr r0, _0223DD04 ; =0x00000F0F
	bne _0223DC56
	str r0, [sp]
	mov r2, #1
	add r0, r5, #0
	mov r1, #0xb1
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	b _0223DC66
_0223DC56:
	str r0, [sp]
	mov r2, #1
	add r0, r5, #0
	mov r1, #0xb2
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
_0223DC66:
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
	b _0223DCF0
_0223DC72:
	add r0, r4, #0
	bl ov70_0223E59C
	cmp r0, #0
	beq _0223DC9A
	ldr r0, _0223DD04 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xb3
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r5, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
	b _0223DCF0
_0223DC9A:
	mov r0, #0x12
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	mov r4, #0
	bl ov70_0223E490
	cmp r0, #0
	beq _0223DCC8
	ldr r1, _0223DD08 ; =0x00000122
	ldr r0, [r5]
	ldrh r1, [r5, r1]
	ldr r0, [r0, #8]
	bl Party_GetMonByIndex
	mov r1, #0xa2
	add r2, r4, #0
	bl GetMonData
	cmp r0, #0
	beq _0223DCC8
	mov r0, #0xb
	mov r4, #1
	str r0, [r5, #0x2c]
_0223DCC8:
	cmp r4, #0
	bne _0223DCF0
	add r0, r5, #0
	bl ov70_0223DE6C
	b _0223DCF0
_0223DCD4:
	add r0, r5, #0
	bl ov70_02238D60
	ldr r0, _0223DCFC ; =0x000011AC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldr r0, _0223DD00 ; =0x00000F18
	mov r1, #0
	add r0, r5, r0
	bl ClearFrameAndWindow2
	mov r0, #0
	str r0, [r5, #0x2c]
_0223DCF0:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DCF8: .word 0x000011D0
_0223DCFC: .word 0x000011AC
_0223DD00: .word 0x00000F18
_0223DD04: .word 0x00000F0F
_0223DD08: .word 0x00000122
	thumb_func_end ov70_0223DB94

