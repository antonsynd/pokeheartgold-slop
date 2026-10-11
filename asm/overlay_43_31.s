	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AC18

	.text

	thumb_func_start ov43_0222AC18
ov43_0222AC18: ; 0x0222AC18
	ldr r3, _0222AC24 ; =BufferWiFiPlazaActivityName
	add r2, r1, #0
	ldr r0, [r0, #0x50]
	mov r1, #0
	bx r3
	nop
_0222AC24: .word BufferWiFiPlazaActivityName
	thumb_func_end ov43_0222AC18

