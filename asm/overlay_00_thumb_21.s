	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E644C
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E644C
ov00_021E644C: ; 0x021E644C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203993C
	bl sub_02034084
	cmp r0, #0
	bne _021E647A
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _021E6470
	ldr r0, _021E647C ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E6480 ; =0x000010D0
	str r2, [r1, r0]
	pop {r4, pc}
_021E6470:
	ldr r0, _021E647C ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E6480 ; =0x000010D0
	str r2, [r1, r0]
_021E647A:
	pop {r4, pc}
	.balign 4, 0
_021E647C: .word _0221A680
_021E6480: .word 0x000010D0
	thumb_func_end ov00_021E644C

