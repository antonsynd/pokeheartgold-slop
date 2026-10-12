	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B440
	.extern ov43_0222A318
	.extern ov43_0222F0CC

	.text

	.text
	thumb_func_start ov43_0222B440
ov43_0222B440: ; 0x0222B440
	add r2, r0, #0
	add r0, r1, #0
	ldr r2, [r2]
	ldr r1, _0222B450 ; =ov43_0222F0CC
	ldr r3, _0222B454 ; =ov43_0222A318
	ldrb r1, [r1, r2]
	mov r2, #0
	bx r3
	.balign 4, 0
_0222B450: .word ov43_0222F0CC
_0222B454: .word ov43_0222A318
	thumb_func_end ov43_0222B440

