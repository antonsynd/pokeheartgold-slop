	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FBF4
	.extern SetMasterBrightness
	.extern _021D1034

	.text
	thumb_func_start sub_0200FBF4
sub_0200FBF4: ; 0x0200FBF4
	ldr r2, _0200FC10 ; =0x0000FFFF
	cmp r1, r2
	bne _0200FBFE
	ldr r1, _0200FC14 ; =_021D1034
	ldrh r1, [r1, #0x10]
_0200FBFE:
	ldr r2, _0200FC18 ; =0x00007FFF
	cmp r1, r2
	bne _0200FC08
	mov r1, #0x10
	b _0200FC0C
_0200FC08:
	mov r1, #0xf
	mvn r1, r1
_0200FC0C:
	ldr r3, _0200FC1C ; =SetMasterBrightness
	bx r3
	.balign 4, 0
_0200FC10: .word 0x0000FFFF
_0200FC14: .word _021D1034
_0200FC18: .word 0x00007FFF
_0200FC1C: .word SetMasterBrightness
	thumb_func_end sub_0200FBF4

