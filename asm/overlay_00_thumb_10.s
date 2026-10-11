	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6240
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6240
ov00_021E6240: ; 0x021E6240
	push {r3, lr}
	ldr r0, _021E6268 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E626C ; =0x000010A8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021E6266
	bl ov00_021EE278
	ldr r1, _021E6268 ; =_0221A680
	mov r3, #0
	ldr r2, [r1]
	ldr r0, _021E6270 ; =0x00001098
	mvn r3, r3
	str r3, [r2, r0]
	ldr r1, [r1]
	mov r2, #0x12
	sub r0, #0x28
	str r2, [r1, r0]
_021E6266:
	pop {r3, pc}
	.balign 4, 0
_021E6268: .word _0221A680
_021E626C: .word 0x000010A8
_021E6270: .word 0x00001098
	thumb_func_end ov00_021E6240

