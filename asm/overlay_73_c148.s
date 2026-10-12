#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9618
	.extern ov73_021E83EC
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E9618
ov73_021E9618: ; 0x021E9618
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E96CC
	bl ov72_02237B74
	ldr r1, _021E96E8 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _021E96E2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E9640: ; jump table
	.short _021E96A8 - _021E9640 - 2 ; case 0
	.short _021E9698 - _021E9640 - 2 ; case 1
	.short _021E96B8 - _021E9640 - 2 ; case 2
	.short _021E96A8 - _021E9640 - 2 ; case 3
	.short _021E9688 - _021E9640 - 2 ; case 4
	.short _021E9678 - _021E9640 - 2 ; case 5
	.short _021E9668 - _021E9640 - 2 ; case 6
	.short _021E9650 - _021E9640 - 2 ; case 7
_021E9650:
	ldr r0, [r4]
	mov r1, #5
	ldr r0, [r0]
	mov r2, #2
	bl sub_0202D5DC
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x1c
	bl ov73_021E83EC
	b _021E96E2
_021E9668:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9678:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9688:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E9698:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E96A8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E96E2
_021E96B8:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E96E2
_021E96CC:
	ldr r0, _021E96E8 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E96E2
	bl sub_020399EC
_021E96E2:
	mov r0, #3
	pop {r4, pc}
	nop
_021E96E8: .word 0x00000F94
	thumb_func_end ov73_021E9618

