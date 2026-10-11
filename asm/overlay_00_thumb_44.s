	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7080
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E7080
ov00_021E7080: ; 0x021E7080
	ldr r0, _021E7094 ; =_0221A680
	ldr r1, [r0]
	cmp r1, #0
	beq _021E708E
	ldr r0, _021E7098 ; =0x0000109C
	ldr r0, [r1, r0]
	bx lr
_021E708E:
	mov r0, #0
	bx lr
	nop
_021E7094: .word _0221A680
_021E7098: .word 0x0000109C
	thumb_func_end ov00_021E7080

