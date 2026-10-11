#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E66F0
	.public ov73_021E6F1C
	.public ov73_021E71E4
	.public ov73_021E756C
	.public ov73_021E75FC
	.public ov73_021E781C

	.text

	thumb_func_start ov73_021E6F1C
ov73_021E6F1C: ; 0x021E6F1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E6F34
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ov73_021E71E4
_021E6F34:
	mov r1, #0
	ldr r0, _021E6FA4 ; =0x00004A38
	mvn r1, r1
	str r1, [r5, r0]
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov73_021E71E4
	ldr r0, [r5]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r5, #0x4c]
	cmp r0, #0xff
	beq _021E6F66
	bl ov73_021E75FC
	cmp r0, #0
	bne _021E6F66
	ldr r0, [r5, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_021E6F66:
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #1
	bl ov73_021E756C
	mov r0, #0xc6
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _021E6F88
	add r0, r5, #0
	mov r1, #0
	bl ov73_021E781C
_021E6F88:
	bl sub_02037454
	ldr r1, _021E6FA8 ; =0x00004A2C
	str r0, [r5, r1]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r1, #8
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6FA4: .word 0x00004A38
_021E6FA8: .word 0x00004A2C
	thumb_func_end ov73_021E6F1C

