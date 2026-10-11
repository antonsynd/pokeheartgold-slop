#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3210
	.public ov14_021F32E0
	.extern ov14_021F2E78
	.extern ov14_021F34DC
	.extern ov14_021F808C

    .text

	.text
	thumb_func_start ov14_021F3210
ov14_021F3210: ; 0x021F3210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #0
	blt _021F3228
	mov r0, #0xb0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	sub r0, #0xb8
	str r0, [sp, #0xc]
	b _021F3232
_021F3228:
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #8]
	mov r0, #0xb0
	str r0, [sp, #0xc]
_021F3232:
	mov r4, #0
	add r7, sp, #0x14
_021F3236:
	ldr r0, [r5, #0x34]
	ldr r1, _021F32D0 ; =0x00004094
	add r2, r0, r4
	ldrb r1, [r2, r1]
	add r2, sp, #0x14
	str r1, [sp, #4]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x14
	add r1, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	add r0, r1, r0
	strh r0, [r7, #2]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021F32AA
	ldr r0, [sp, #0xc]
	ldr r1, _021F32D4 ; =0x00000458
	strh r0, [r7, #2]
	ldr r0, [r5, #0x34]
	ldr r3, _021F32D8 ; =0x00004076
	add r6, r0, r4
	add r2, r0, r1
	lsl r1, r4, #9
	add r1, r2, r1
	ldrb r3, [r6, r3]
	ldr r2, [sp, #4]
	bl ov14_021F2E78
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #0x10]
	add r2, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r2, r1, r4
	ldr r1, _021F32DC ; =0x00004058
	ldrb r1, [r2, r1]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021F32AA
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F34DC
_021F32AA:
	ldr r1, [r5, #0x34]
	ldr r0, [sp, #0x10]
	mov r2, #0
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1e
	blo _021F3236
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F32D0: .word 0x00004094
_021F32D4: .word 0x00000458
_021F32D8: .word 0x00004076
_021F32DC: .word 0x00004058
	thumb_func_end ov14_021F3210

	thumb_func_start ov14_021F32E0
ov14_021F32E0: ; 0x021F32E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r1, [r0, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #1
	add r2, #1
	add r3, sp, #4
	bl sub_02019B1C
	mov r4, #0
	add r1, sp, #4
	ldrsb r0, [r1, r4]
	lsl r0, r0, #0x13
	asr r7, r0, #0x10
	mov r0, #1
	ldrsb r0, [r1, r0]
	lsl r0, r0, #0x13
	asr r5, r0, #0x10
_021F330C:
	ldr r0, _021F334C ; =ov14_021F808C
	lsl r1, r4, #1
	add r2, r0, r1
	ldr r0, [sp]
	ldrb r2, [r2, #1]
	ldr r6, [r0, #0x34]
	ldr r0, _021F3350 ; =0x000040B2
	add r3, r6, r4
	ldrb r0, [r3, r0]
	add r2, r7, r2
	lsl r2, r2, #0x10
	lsl r0, r0, #2
	add r3, r6, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r3, _021F334C ; =ov14_021F808C
	asr r2, r2, #0x10
	ldrb r1, [r3, r1]
	add r1, r5, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021F330C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F334C: .word ov14_021F808C
_021F3350: .word 0x000040B2
	thumb_func_end ov14_021F32E0

