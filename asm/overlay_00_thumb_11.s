	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6274
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6274
ov00_021E6274: ; 0x021E6274
	cmp r0, #0
	bne _021E6284
	ldr r0, _021E6290 ; =_0221A680
	mov r2, #4
	ldr r1, [r0]
	ldr r0, _021E6294 ; =0x00001070
	str r2, [r1, r0]
	bx lr
_021E6284:
	ldr r0, _021E6290 ; =_0221A680
	mov r2, #0xc
	ldr r1, [r0]
	ldr r0, _021E6294 ; =0x00001070
	str r2, [r1, r0]
	bx lr
	.balign 4, 0
_021E6290: .word _0221A680
_021E6294: .word 0x00001070
	thumb_func_end ov00_021E6274

