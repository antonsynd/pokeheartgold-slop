	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public sub_020210BC
	.extern _021D2198

	.text
	thumb_func_start sub_020210BC
sub_020210BC: ; 0x020210BC
	push {r3, lr}
	ldr r0, _020210D4 ; =_021D2198 + 0x40
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _020210CA
	bl GF_AssertFail
_020210CA:
	ldr r0, _020210D4 ; =_021D2198 + 0x40
	mov r1, #0
	strh r1, [r0, #0x18]
	pop {r3, pc}
	nop
_020210D4: .word _021D2198 + 0x40
	thumb_func_end sub_020210BC

