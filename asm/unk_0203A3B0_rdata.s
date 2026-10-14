	.include "macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public _021D4154
	.public _020F6A9C
	.public _020F6AA4
	.public _020F6AAC
	.public _020F6AB4
	.public _020F6ABC
	.public _0210F91C
	.public _0210F930
	.public _0210F940
	.public _0210F954
	.public _0210F964

	.bss

_021D4154:
	.space 0x4

	.rodata

_020F6A9C:
	.byte 0xFC, 0x01, 0x14, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00
_020F6AA4:
	.byte 0xF8, 0x01, 0x14, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00
_020F6AAC:
	.byte 0xF4, 0x01, 0x14, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00
_020F6AB4:
	.byte 0xF0, 0x01, 0x14, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00
_020F6ABC:
	.byte 0xF0, 0x01, 0x14, 0x00
	.byte 0xF4, 0x01, 0x14, 0x00
	.byte 0xF8, 0x01, 0x14, 0x00
	.byte 0xFC, 0x01, 0x14, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00

	.data

	.balign 4, 0
_0210F91C:
	.word _020F6AB4
	.word _020F6AAC
	.word _020F6AA4
	.word _020F6A9C
	.word _020F6ABC

	.balign 4, 0
_0210F930:
	.asciz "data/pl_wm.NCLR"

	.balign 4, 0
_0210F940:
	.asciz "data/pl_wifi.NCGR"

	.balign 4, 0
_0210F954:
	.asciz "data/pl_wm.NCGR"

	.balign 4, 0
_0210F964:
	.asciz "data/wm256k.NCGR"

	.text




















