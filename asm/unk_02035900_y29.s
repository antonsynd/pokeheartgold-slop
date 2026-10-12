	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_020374C0
	.public sub_020374E4
	.extern _021D4140

	.text
	thumb_func_start sub_020374C0
sub_020374C0: ; 0x020374C0
	ldr r1, _020374DC ; =_021D4140
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _020374CC
	mov r0, #0
	bx lr
_020374CC:
	ldr r1, _020374E0 ; =0x00000644
	add r3, r2, r1
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	mov r1, #0
	strh r1, [r3, r2]
	bx lr
	nop
_020374DC: .word _021D4140
_020374E0: .word 0x00000644
	thumb_func_end sub_020374C0

	thumb_func_start sub_020374E4
sub_020374E4: ; 0x020374E4
	ldr r0, _020374FC ; =_021D4140
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _020374F8
	ldr r1, _02037500 ; =0x0000065C
	mov r0, #2
	ldrh r2, [r3, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	strh r0, [r3, r1]
_020374F8:
	bx lr
	nop
_020374FC: .word _021D4140
_02037500: .word 0x0000065C
	thumb_func_end sub_020374E4

