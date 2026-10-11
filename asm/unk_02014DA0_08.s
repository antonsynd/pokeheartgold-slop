	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015354
	.extern _021D10A0

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015354
sub_02015354: ; 0x02015354
	push {r4, lr}
	add r4, r0, #0
	bne _0201535E
	bl GF_AssertFail
_0201535E:
	ldr r0, _02015390 ; =_021D10A0
	ldr r0, [r0]
	cmp r0, #0
	bne _0201536A
	bl GF_AssertFail
_0201536A:
	ldr r0, _02015390 ; =_021D10A0
	mov r1, #0
	ldr r3, [r0]
	add r2, r3, #0
_02015372:
	ldr r0, [r2, #0x58]
	cmp r0, #0
	bne _02015380
	lsl r0, r1, #2
	add r0, r3, r0
	str r4, [r0, #0x58]
	pop {r4, pc}
_02015380:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _02015372
	bl GF_AssertFail
	pop {r4, pc}
	nop
_02015390: .word _021D10A0
	thumb_func_end sub_02015354

