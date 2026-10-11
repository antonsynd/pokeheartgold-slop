	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015394
	.extern _021D10A0

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015394
sub_02015394: ; 0x02015394
	push {r4, lr}
	add r4, r0, #0
	bne _0201539E
	bl GF_AssertFail
_0201539E:
	ldr r0, _020153D4 ; =_021D10A0
	ldr r0, [r0]
	cmp r0, #0
	bne _020153AA
	bl GF_AssertFail
_020153AA:
	ldr r0, _020153D4 ; =_021D10A0
	mov r1, #0
	ldr r3, [r0]
	add r2, r3, #0
_020153B2:
	add r0, r2, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _020153C6
	lsl r0, r1, #2
	add r0, r3, r0
	add r0, #0x98
	str r4, [r0]
	pop {r4, pc}
_020153C6:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _020153B2
	bl GF_AssertFail
	pop {r4, pc}
	.balign 4, 0
_020153D4: .word _021D10A0
	thumb_func_end sub_02015394

