#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223EE10
	.public ov70_0223EEE8
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_0223E8E8
	.extern ov70_0223EDE4
	.extern ov70_0223F3D8
	.extern ov70_0223F960
	.extern ov70_02242144

	.text

	.text
	thumb_func_start ov70_0223EE10
ov70_0223EE10: ; 0x0223EE10
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0223EED0 ; =0x000011A8
	ldr r0, [r4, r0]
	bl ov70_02242144
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223EE2E
	add r1, r1, #1
	cmp r0, r1
	beq _0223EECA
	b _0223EE5E
_0223EE2E:
	ldr r0, _0223EED4 ; =0x00000F18
	mov r1, #0
	add r0, r4, r0
	bl ClearFrameAndWindow2
	mov r1, #5
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223EED8 ; =0x000011C4
	ldr r3, [r4, r0]
	add r0, #0x70
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov70_0223F960
	b _0223EECA
_0223EE5E:
	ldr r1, _0223EEDC ; =0x00000B84
	strh r0, [r4, r1]
	mov r1, #0x12
	bl GetMonBaseStat
	ldr r1, _0223EED8 ; =0x000011C4
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r1, [r4, r1]
	ldr r0, _0223EEDC ; =0x00000B84
	ldr r1, [r1, #0x20]
	add r0, r4, r0
	bl ov70_0223EDE4
	cmp r0, #0
	beq _0223EE88
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _0223EEE0 ; =0x00000B86
	ldrsb r1, [r4, r0]
	b _0223EE8E
_0223EE88:
	mov r0, #7
	str r0, [r4, #0x2c]
	mov r1, #3
_0223EE8E:
	ldr r2, _0223EEDC ; =0x00000B84
	ldr r3, _0223EEE4 ; =0x00001058
	ldrsh r0, [r4, r2]
	add r3, r4, r3
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #4]
	mvn r0, r0
	str r0, [sp, #8]
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0x1c
	add r1, #0x20
	add r2, #0x18
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov70_0223F3D8
	ldr r0, _0223EED8 ; =0x000011C4
	ldr r3, [r4, r0]
	add r0, #0x70
	ldrh r2, [r3, #6]
	ldrh r1, [r3, #4]
	add r0, r4, r0
	add r1, r2, r1
	ldrh r2, [r3, #0xa]
	ldrh r3, [r3, #8]
	bl ov70_0223F960
_0223EECA:
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0223EED0: .word 0x000011A8
_0223EED4: .word 0x00000F18
_0223EED8: .word 0x000011C4
_0223EEDC: .word 0x00000B84
_0223EEE0: .word 0x00000B86
_0223EEE4: .word 0x00001058
	thumb_func_end ov70_0223EE10

	thumb_func_start ov70_0223EEE8
ov70_0223EEE8: ; 0x0223EEE8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223EF0C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl ov70_0223E8E8
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #8
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0223EF0C: .word 0x00000F0F
	thumb_func_end ov70_0223EEE8

