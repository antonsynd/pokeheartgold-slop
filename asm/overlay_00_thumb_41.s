	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6FBC
	.extern _0221A680
	.extern ov00_021E6388

	.text

	.text
	thumb_func_start ov00_021E6FBC
ov00_021E6FBC: ; 0x021E6FBC
	push {r4, lr}
	ldr r2, _021E6FD8 ; =_0221A680
	mov r4, #0
	ldr r3, [r2]
	ldr r2, _021E6FDC ; =0x000010A0
	cmp r0, #0
	str r4, [r3, r2]
	bne _021E6FD6
	cmp r1, #0
	bne _021E6FD6
	ldr r0, [sp, #8]
	bl ov00_021E6388
_021E6FD6:
	pop {r4, pc}
	.balign 4, 0
_021E6FD8: .word _0221A680
_021E6FDC: .word 0x000010A0
	thumb_func_end ov00_021E6FBC

