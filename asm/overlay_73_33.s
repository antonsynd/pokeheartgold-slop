#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E66F0
	.public ov73_021E6830
	.public ov73_021E6D54
	.public ov73_021E746C
	.public ov73_021E781C

	.text

	thumb_func_start ov73_021E6D54
ov73_021E6D54: ; 0x021E6D54
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov73_021E746C
	ldr r1, _021E6DEC ; =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E6D6E
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021E6D88
_021E6D6E:
	ldr r0, _021E6DF0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E6D7E
	ldr r0, _021E6DF4 ; =0x000005F2
	bl PlaySE
_021E6D7E:
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021E6D88:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #0
	beq _021E6DE0
	cmp r0, #2
	bne _021E6DB8
	mov r1, #0
	mov r0, #0xc6
	str r1, [sp]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_02037030
	add r0, r5, #0
	mov r1, #1
	bl ov73_021E781C
	b _021E6DDA
_021E6DB8:
	mov r0, #0xc6
	mov r1, #0xd
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	mov r0, #0x71
	add r2, r1, #0
	bl sub_02037030
	mov r0, #0
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferPlayersName
_021E6DDA:
	add r0, r5, #0
	bl ov73_021E6830
_021E6DE0:
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6DEC: .word 0x00004A1C
_021E6DF0: .word gSystem
_021E6DF4: .word 0x000005F2
	thumb_func_end ov73_021E6D54

