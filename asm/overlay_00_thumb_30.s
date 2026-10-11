	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6A4C
	.extern _0221A680
	.extern ov00_021E7A30

	.text

	.text
	thumb_func_start ov00_021E6A4C
ov00_021E6A4C: ; 0x021E6A4C
	push {r3, lr}
	bl ov00_021E7A30
	ldr r1, _021E6A68 ; =_0221A680
	ldr r3, [r1]
	cmp r3, #0
	beq _021E6A66
	ldr r0, _021E6A6C ; =0x00001090
	mov r2, #0
	str r2, [r3, r0]
	ldr r1, [r1]
	sub r0, #0x10
	str r2, [r1, r0]
_021E6A66:
	pop {r3, pc}
	.balign 4, 0
_021E6A68: .word _0221A680
_021E6A6C: .word 0x00001090
	thumb_func_end ov00_021E6A4C

