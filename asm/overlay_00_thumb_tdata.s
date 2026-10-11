	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public _0221602C
	.public _02216034
	.public _02216400
	.public _0221640C
	.public _02216414
	.public _0221A680
	.public _0221A684
	.public _0221A688

	.text


























































































	.rodata

_0221602C:
	.byte 0x01, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.balign 4, 0
_02216034:
	.asciz "%s = '%s'"
	.balign 4, 0

	.data

	.balign 4, 0
_02216400:
	.asciz "pokemondpds"
	.balign 4, 0
_0221640C:
	.asciz "1vTlwb"
	.balign 4, 0
_02216414:
	.asciz "ppw_lobby"
	.balign 4, 0

	.bss

_0221A680:
	.space 0x4

_0221A684:
	.space 0x4

_0221A688:
	.space 0xC
