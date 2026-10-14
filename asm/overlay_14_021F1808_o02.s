#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F19F0
	.extern ov14_021F1F24

    .text

	.text
	thumb_func_start ov14_021F19F0
ov14_021F19F0: ; 0x021F19F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x21
	strb r1, [r2]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	ldr r2, [r4, #0x34]
	ldr r1, _021F1B38 ; =0x000088C8
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F6408
	ldr r1, [r4, #0x34]
	ldr r0, _021F1B38 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021F1A78
	ldr r0, [r1, #0x2c]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F1A4E
	add sp, #4
	mov r0, #0x82
	pop {r3, r4, pc}
_021F1A4E:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F1A6A
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
_021F1A6A:
	ldr r1, _021F1B3C ; =ov14_021E99A0
	add r0, r4, #0
	mov r2, #0x82
	bl ov14_021F0234
	add sp, #4
	pop {r3, r4, pc}
_021F1A78:
	ldr r0, _021F1B40 ; =0x000005EB
	bl PlaySE
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #2
	bl ov14_021F396C
	ldr r0, [r4, #0x34]
	ldr r1, _021F1B38 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r4, #0x34]
	bl ov14_021F39D0
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	ldr r1, [r4, #0x34]
	bne _021F1ADE
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
	b _021F1AF8
_021F1ADE:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F1AF8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F1AF8:
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	mov r3, #2
	bl ov14_021F2F88
	add r2, sp, #0
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldr r1, [r4, #0x34]
	ldr r0, _021F1B44 ; =0x000040B8
	add r3, #8
	str r3, [r1, r0]
	mov r1, #0
	ldrsh r2, [r2, r1]
	ldr r1, [r4, #0x34]
	add r0, r0, #4
	add r2, #8
	str r2, [r1, r0]
	add r0, r4, #0
	bl ov14_021F1F24
	ldr r1, _021F1B48 ; =ov14_021EA778
	add r0, r4, #0
	mov r2, #0x84
	bl ov14_021F0234
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021F1B38: .word 0x000088C8
_021F1B3C: .word ov14_021E99A0
_021F1B40: .word 0x000005EB
_021F1B44: .word 0x000040B8
_021F1B48: .word ov14_021EA778
	thumb_func_end ov14_021F19F0

