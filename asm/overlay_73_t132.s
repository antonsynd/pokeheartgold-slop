#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9A6C
	.public ov73_021E9B58
	.extern ov73_021E83EC
	.extern ov73_021E9FF8
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E9A6C
ov73_021E9A6C: ; 0x021E9A6C
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E9B34
	bl ov72_02237B74
	ldr r1, _021E9B50 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _021E9B4A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E9A94: ; jump table
	.short _021E9B10 - _021E9A94 - 2 ; case 0
	.short _021E9B00 - _021E9A94 - 2 ; case 1
	.short _021E9B20 - _021E9A94 - 2 ; case 2
	.short _021E9B10 - _021E9A94 - 2 ; case 3
	.short _021E9AF0 - _021E9A94 - 2 ; case 4
	.short _021E9AE0 - _021E9A94 - 2 ; case 5
	.short _021E9AD0 - _021E9A94 - 2 ; case 6
	.short _021E9AA4 - _021E9A94 - 2 ; case 7
_021E9AA4:
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0x94
	add r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	ldr r1, _021E9B54 ; =0x000006DC
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	add r1, r4, r1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202D8A4
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x26
	bl ov73_021E83EC
	b _021E9B4A
_021E9AD0:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9AE0:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9AF0:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0xb
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9B00:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9B10:
	mov r2, #0xb
	str r2, [r4, #0x1c]
	sub r1, #0x78
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9B4A
_021E9B20:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E9B4A
_021E9B34:
	ldr r0, _021E9B50 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E9B4A
	bl sub_020399EC
_021E9B4A:
	mov r0, #3
	pop {r4, pc}
	nop
_021E9B50: .word 0x00000F94
_021E9B54: .word 0x000006DC
	thumb_func_end ov73_021E9A6C

	thumb_func_start ov73_021E9B58
ov73_021E9B58: ; 0x021E9B58
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E9B8C ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E9B90 ; =0x00000BD4
	mov r2, #3
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x2d
	bl ov73_021E83EC
	add r0, r4, #0
	bl ov73_021EA180
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9B8C: .word 0x00000F0F
_021E9B90: .word 0x00000BD4
	thumb_func_end ov73_021E9B58

