#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E7A08
	.public ov14_021E7AD4
	.public ov14_021E7AE4
	.public ov14_021E7B04

    .text

	.text
	thumb_func_start ov14_021E7A08
ov14_021E7A08: ; 0x021E7A08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, [r0, #0x34]
	mov r0, #0xca
	lsl r0, r0, #2
	add r5, r2, #0
	ldr r4, [r1, #0xc]
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r1, #2
	add r2, sp, #4
	add r6, r3, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0
	add r3, r6, #0
	bl ov14_021F2F88
	ldr r0, [sp, #0x20]
	add r1, sp, #0
	cmp r0, #1
	bne _021E7A4C
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #8
	strh r0, [r1, #2]
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r0, #8
	b _021E7A52
_021E7A4C:
	mov r0, #0
	ldrsh r0, [r1, r0]
	add r0, r0, #4
_021E7A52:
	strh r0, [r1]
	strh r5, [r4]
	strh r7, [r4, #2]
	ldr r2, [r4, #0x18]
	mov r0, #3
	and r0, r2
	str r0, [r4, #0x18]
	str r6, [r4, #4]
	add r3, sp, #0
	mov r0, #2
	mov r2, #6
	add r1, r4, #0
	ldrsh r0, [r3, r0]
	ldrsh r2, [r3, r2]
	add r1, #0x18
	cmp r2, r0
	ldr r5, [r1]
	ble _021E7A84
	mov r3, #1
	bic r5, r3
	mov r3, #1
	orr r3, r5
	str r3, [r1]
	sub r0, r2, r0
	b _021E7A8C
_021E7A84:
	mov r3, #1
	bic r5, r3
	str r5, [r1]
	sub r0, r0, r2
_021E7A8C:
	lsl r1, r0, #8
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	add r3, sp, #0
	mov r0, #0
	mov r1, #4
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	cmp r1, r0
	ldr r5, [r4, #0x18]
	ble _021E7AB2
	mov r3, #2
	orr r3, r5
	str r3, [r4, #0x18]
	sub r0, r1, r0
	b _021E7ABA
_021E7AB2:
	mov r3, #2
	bic r5, r3
	str r5, [r4, #0x18]
	sub r0, r0, r1
_021E7ABA:
	lsl r3, r0, #8
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	lsl r0, r2, #8
	str r0, [r4, #8]
	lsl r0, r1, #8
	str r0, [r4, #0xc]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7A08

	thumb_func_start ov14_021E7AD4
ov14_021E7AD4: ; 0x021E7AD4
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov14_021E7A08
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021E7AD4

	thumb_func_start ov14_021E7AE4
ov14_021E7AE4: ; 0x021E7AE4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	mov r1, #0
	str r1, [sp]
	add r3, r2, #0
	ldr r2, [r0, #0x34]
	ldr r1, _021E7B00 ; =0x0000044C
	ldrb r1, [r2, r1]
	add r2, r4, #0
	bl ov14_021E7A08
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E7B00: .word 0x0000044C
	thumb_func_end ov14_021E7AE4

	thumb_func_start ov14_021E7B04
ov14_021E7B04: ; 0x021E7B04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	ldr r2, [r4, #0x18]
	lsr r3, r2, #2
	cmp r3, #8
	bne _021E7B32
	cmp r1, #1
	ldrh r1, [r4]
	bne _021E7B22
	ldr r2, [r4, #4]
	bl ov14_021F396C
	b _021E7B28
_021E7B22:
	ldr r2, [r4, #4]
	bl ov14_021F39A0
_021E7B28:
	ldr r0, [r5, #0x34]
	bl ov14_021F3B5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7B32:
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	ldr r1, [r4, #8]
	bne _021E7B40
	ldr r0, [r4, #0x10]
	add r0, r1, r0
	b _021E7B44
_021E7B40:
	ldr r0, [r4, #0x10]
	sub r0, r1, r0
_021E7B44:
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E7B56
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	b _021E7B5A
_021E7B56:
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
_021E7B5A:
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r2, r2, #8
	ldr r0, [r5, #0x34]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	ldr r0, [r5, #0x34]
	bl ov14_021F3B5C
	ldr r1, [r4, #0x18]
	mov r0, #3
	add r2, r1, #0
	and r2, r0
	lsr r0, r1, #2
	add r0, r0, #1
	lsl r0, r0, #2
	orr r0, r2
	str r0, [r4, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021E7B04

