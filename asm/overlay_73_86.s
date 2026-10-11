#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E83EC
	.public ov73_021E9144
	.public ov73_021E91F4
	.public ov73_021E9FF8
	.public ov73_021EA180

	.text

	thumb_func_start ov73_021E9144
ov73_021E9144: ; 0x021E9144
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E91D6
	bl ov72_02237B74
	ldr r1, _021E91F0 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #6
	bhi _021E91C0
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E916C: ; jump table
	.short _021E91A2 - _021E916C - 2 ; case 0
	.short _021E9198 - _021E916C - 2 ; case 1
	.short _021E91AC - _021E916C - 2 ; case 2
	.short _021E91A2 - _021E916C - 2 ; case 3
	.short _021E918E - _021E916C - 2 ; case 4
	.short _021E9184 - _021E916C - 2 ; case 5
	.short _021E917A - _021E916C - 2 ; case 6
_021E917A:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E9184:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E918E:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E9198:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E91A2:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _021E91CE
_021E91AC:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E91CE
_021E91C0:
	cmp r0, #0
	ble _021E91CE
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_021E91CE:
	add r0, r4, #0
	bl ov73_021EA180
	b _021E91EC
_021E91D6:
	ldr r0, _021E91F0 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E91EC
	bl sub_020399EC
_021E91EC:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_021E91F0: .word 0x00000F94
	thumb_func_end ov73_021E9144

	thumb_func_start ov73_021E91F4
ov73_021E91F4: ; 0x021E91F4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E921C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9220 ; =0x00000BD4
	mov r2, #0
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0xe
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E921C: .word 0x00000F0F
_021E9220: .word 0x00000BD4
	thumb_func_end ov73_021E91F4

