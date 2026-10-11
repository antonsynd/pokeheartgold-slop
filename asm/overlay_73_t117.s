#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8FE4
	.extern ov73_021E83EC
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E8FE4
ov73_021E8FE4: ; 0x021E8FE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	bne _021E8FF2
	b _021E90FA
_021E8FF2:
	bl ov72_02237B74
	add r5, r0, #0
	ldr r0, _021E9114 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	add r1, r5, #7
	cmp r1, #9
	bhi _021E90EE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E9010: ; jump table
	.short _021E90CE - _021E9010 - 2 ; case 0
	.short _021E90DE - _021E9010 - 2 ; case 1
	.short _021E90EE - _021E9010 - 2 ; case 2
	.short _021E90CE - _021E9010 - 2 ; case 3
	.short _021E90EE - _021E9010 - 2 ; case 4
	.short _021E90DE - _021E9010 - 2 ; case 5
	.short _021E90BE - _021E9010 - 2 ; case 6
	.short _021E9024 - _021E9010 - 2 ; case 7
	.short _021E90AE - _021E9010 - 2 ; case 8
	.short _021E90BE - _021E9010 - 2 ; case 9
_021E9024:
	add r0, r4, #0
	bl ov73_021EA180
	ldr r0, _021E9118 ; =0x00000F88
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E903C
	cmp r1, #1
	beq _021E9092
	cmp r1, #2
	beq _021E9092
	b _021E90A2
_021E903C:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #3
	bhi _021E9110
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E9050: ; jump table
	.short _021E9058 - _021E9050 - 2 ; case 0
	.short _021E9082 - _021E9050 - 2 ; case 1
	.short _021E9082 - _021E9050 - 2 ; case 2
	.short _021E9082 - _021E9050 - 2 ; case 3
_021E9058:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021E906A
	cmp r0, #1
	beq _021E9076
	cmp r0, #2
	beq _021E907C
	b _021E9110
_021E906A:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xd
	bl ov73_021E83EC
	b _021E9110
_021E9076:
	mov r0, #0x19
	str r0, [r4, #0x1c]
	b _021E9110
_021E907C:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _021E9110
_021E9082:
	sub r0, #0x6c
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E9092:
	ldr r0, _021E911C ; =0x00000F1C
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90A2:
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E9110
_021E90AE:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90BE:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90CE:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90DE:
	sub r0, #0x78
	str r5, [r4, r0]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9110
_021E90EE:
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E9110
_021E90FA:
	ldr r0, _021E9114 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E9110
	bl sub_020399EC
_021E9110:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9114: .word 0x00000F94
_021E9118: .word 0x00000F88
_021E911C: .word 0x00000F1C
	thumb_func_end ov73_021E8FE4

