#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EE26C.inc"
	.include "global.inc"
	.public ov14_021EE5E8

    .text

	.text
	thumb_func_start ov14_021EE5E8
ov14_021EE5E8: ; 0x021EE5E8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x25
	ldrb r2, [r4, #0x1f]
	ldrb r1, [r1]
	strb r1, [r4, #0x1f]
	add r1, r4, #0
	add r1, #0x25
	ldrb r1, [r1]
	cmp r2, r1
	bne _021EE604
	mov r0, #0x6a
	pop {r4, pc}
_021EE604:
	cmp r2, r1
	ldrb r1, [r4, #0x1f]
	bls _021EE62E
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov14_021E783C
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r1, _021EE65C ; =ov14_021E92AC
	b _021EE650
_021EE62E:
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov14_021E783C
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r1, _021EE660 ; =ov14_021E9370
_021EE650:
	add r0, r4, #0
	mov r2, #0x6a
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021EE65C: .word ov14_021E92AC
_021EE660: .word ov14_021E9370
	thumb_func_end ov14_021EE5E8

