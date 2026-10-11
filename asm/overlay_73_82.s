#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E83EC
	.public ov73_021E8ED8
	.public ov73_021EA180

	.text

	thumb_func_start ov73_021E8ED8
ov73_021E8ED8: ; 0x021E8ED8
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E8F90
	bl ov72_02237B74
	ldr r1, _021E8FAC ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #9
	bhi _021E8F84
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E8F00: ; jump table
	.short _021E8F64 - _021E8F00 - 2 ; case 0
	.short _021E8F74 - _021E8F00 - 2 ; case 1
	.short _021E8F84 - _021E8F00 - 2 ; case 2
	.short _021E8F64 - _021E8F00 - 2 ; case 3
	.short _021E8F84 - _021E8F00 - 2 ; case 4
	.short _021E8F74 - _021E8F00 - 2 ; case 5
	.short _021E8F54 - _021E8F00 - 2 ; case 6
	.short _021E8F14 - _021E8F00 - 2 ; case 7
	.short _021E8F44 - _021E8F00 - 2 ; case 8
	.short _021E8F54 - _021E8F00 - 2 ; case 9
_021E8F14:
	add r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _021E8F2C
	cmp r0, #1
	beq _021E8F38
	cmp r0, #2
	beq _021E8F3E
	b _021E8FA6
_021E8F2C:
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xd
	bl ov73_021E83EC
	b _021E8FA6
_021E8F38:
	mov r0, #0x19
	str r0, [r4, #0x1c]
	b _021E8FA6
_021E8F3E:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
	b _021E8FA6
_021E8F44:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F54:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F64:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F74:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E8FA6
_021E8F84:
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E8FA6
_021E8F90:
	ldr r0, _021E8FAC ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E8FA6
	bl sub_020399EC
_021E8FA6:
	mov r0, #3
	pop {r4, pc}
	nop
_021E8FAC: .word 0x00000F94
	thumb_func_end ov73_021E8ED8

