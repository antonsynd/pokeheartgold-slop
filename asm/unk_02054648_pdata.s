	.include "macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public _020FC5FC
	.public _020FC604
	.public _020FC60C
	.public _020FC614
	.public sub_02054774
	.public sub_020547A4
	.public sub_020547D8
	.public sub_02054824

	.rodata

_020FC5FC:
	.short 0x00D0
	.short 0x00D2
	.short 0x00D3
	.short 0x0000
_020FC604:
	.word sub_02054774
	.word sub_020547D8
_020FC60C:
	.short 0x00D0
	.short 0x00D1
	.short 0x00D2
	.short 0x00D3
_020FC614:
	.word sub_020547A4
	.word sub_02054824

	.text


























