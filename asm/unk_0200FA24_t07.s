	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FC20
	.extern SetMasterBrightness
	.extern _021D1034

	.text
	thumb_func_start sub_0200FC20
sub_0200FC20: ; 0x0200FC20
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0200FC54 ; =0x0000FFFF
	cmp r4, r0
	bne _0200FC2E
	ldr r0, _0200FC58 ; =_021D1034
	ldrh r4, [r0, #0x10]
_0200FC2E:
	ldr r0, _0200FC5C ; =0x00007FFF
	cmp r4, r0
	bne _0200FC38
	mov r5, #0x10
	b _0200FC3C
_0200FC38:
	mov r5, #0xf
	mvn r5, r5
_0200FC3C:
	mov r0, #0
	add r1, r5, #0
	bl SetMasterBrightness
	mov r0, #1
	add r1, r5, #0
	bl SetMasterBrightness
	ldr r0, _0200FC58 ; =_021D1034
	strh r4, [r0, #0x10]
	pop {r3, r4, r5, pc}
	nop
_0200FC54: .word 0x0000FFFF
_0200FC58: .word _021D1034
_0200FC5C: .word 0x00007FFF
	thumb_func_end sub_0200FC20

