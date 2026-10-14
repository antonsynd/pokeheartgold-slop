#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7184
	.extern ov14_021F7AC4

    .text

	.text
	thumb_func_start ov14_021F7184
ov14_021F7184: ; 0x021F7184
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021F72FC ; =0x0000044B
	add r6, r2, #0
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021F71B0
	cmp r4, #0x25
	blt _021F71A8
	cmp r4, #0x2a
	bgt _021F71A8
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	b _021F71B0
_021F71A8:
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021F71B0:
	cmp r4, #0x25
	bne _021F71EE
	cmp r6, #0
	blt _021F71BC
	cmp r6, #5
	ble _021F71D0
_021F71BC:
	cmp r6, #0x18
	blt _021F71C4
	cmp r6, #0x1d
	ble _021F71D0
_021F71C4:
	cmp r6, #0x1e
	blt _021F71CC
	cmp r6, #0x1f
	ble _021F71D0
_021F71CC:
	cmp r6, #0x24
	bne _021F71EE
_021F71D0:
	ldr r1, [r5, #0x34]
	ldr r0, _021F7300 ; =0x0000043C
	ldr r4, [r1, r0]
	ldr r0, [r1, #0x2c]
	bl GridInputHandler_GetUnk0F
	add r3, r0, #0
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl GridInputHandler_SetNextLastUnk0FInputs
_021F71EE:
	cmp r4, #0x25
	blt _021F71FC
	cmp r4, #0x2a
	bgt _021F71FC
	ldr r1, [r5, #0x34]
	ldr r0, _021F7300 ; =0x0000043C
	str r4, [r1, r0]
_021F71FC:
	cmp r4, #0x25
	bne _021F7258
	cmp r6, #0x2a
	bne _021F7258
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r0, r0, #1
	cmp r0, #0x12
	blt _021F7214
	mov r1, #0
	b _021F721C
_021F7214:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r1, r0, #1
_021F721C:
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F49E0
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7304 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F7258:
	cmp r4, #0x2a
	bne _021F72B2
	cmp r6, #0x25
	bne _021F72B2
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	sub r0, r0, #1
	bpl _021F726E
	mov r1, #0x11
	b _021F7276
_021F726E:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	sub r1, r0, #1
_021F7276:
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F49E0
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7304 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F72B2:
	cmp r4, #0x25
	blt _021F72E8
	cmp r4, #0x2a
	bgt _021F72E8
	cmp r6, #0x25
	blt _021F72E8
	cmp r6, #0x2a
	bgt _021F72E8
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r1, r4, r1
	add r0, r5, #0
	sub r1, #0x25
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
_021F72E8:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7304 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F72FC: .word 0x0000044B
_021F7300: .word 0x0000043C
_021F7304: .word ov14_021E9F20
	thumb_func_end ov14_021F7184

