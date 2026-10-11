#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F47B8
	.public ov14_021F4848
	.public ov14_021F48B4
	.public ov14_021F4940
	.extern ov14_021F2A18
	.extern ov14_021F46F4
	.extern ov14_021F8068

    .text

	.text
	thumb_func_start ov14_021F47B8
ov14_021F47B8: ; 0x021F47B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #4
	mov r4, #0x10
_021F47C2:
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r2, r2, r7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	bls _021F47C2
	ldr r0, [r5, #0x34]
	bl ov14_021F46F4
	mov r6, #0
	add r4, r6, #0
_021F4808:
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #0x34]
	add r2, sp, #0
	add r1, r0, r4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r2, r2, r7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blo _021F4808
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021F47B8

	thumb_func_start ov14_021F4848
ov14_021F4848: ; 0x021F4848
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	add r4, r0, #0
	ldrb r0, [r5, #0x1f]
	mov r1, #6
	bl _s32_div_f
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _021F4870
	mov r1, #6
	mov r2, #1
	bl ov14_021F2A18
	b _021F4878
_021F4870:
	mov r1, #6
	mov r2, #0
	bl ov14_021F2A18
_021F4878:
	ldrb r0, [r5, #0x1f]
	mov r1, #6
	bl _s32_div_f
	add r4, r1, #0
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0x22
	mul r1, r4
	add r1, #0x2b
	lsl r1, r1, #0x10
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021F4848

	thumb_func_start ov14_021F48B4
ov14_021F48B4: ; 0x021F48B4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	mov r0, #0xc6
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc6
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021F493C ; =ov14_021F8068
	add r3, sp, #0
	mov r2, #2
	ldrb r1, [r1, r4]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	add r4, #0xf
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc7
	add r2, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc7
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	bl ov14_021F46F4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F493C: .word ov14_021F8068
	thumb_func_end ov14_021F48B4

	thumb_func_start ov14_021F4940
ov14_021F4940: ; 0x021F4940
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _021F4954 ; =ManagedSprite_GetPositionXY
	bx r3
	nop
_021F4954: .word ManagedSprite_GetPositionXY
	thumb_func_end ov14_021F4940

