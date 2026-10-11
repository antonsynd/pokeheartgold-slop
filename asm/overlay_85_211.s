	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E993C
	.extern ov85_021E943C
	.extern ov85_021EA8D8

	.text

	.text
	thumb_func_start ov85_021E993C
ov85_021E993C: ; 0x021E993C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x66
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021E9968 ; =ov85_021EA8D8
	mov r2, #0x1f
	mov r3, #0xb
	bl Std_CreateYesNoMenu
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xc
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov85_021E943C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9968: .word ov85_021EA8D8
	thumb_func_end ov85_021E993C

