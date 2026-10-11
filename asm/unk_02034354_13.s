	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_02034780
	.extern _021D4130

	.text
	thumb_func_start sub_02034780
sub_02034780: ; 0x02034780
	ldr r1, _0203479C ; =_021D4130
	mov r0, #0
	ldr r3, [r1]
	mov r1, #0xe7
	lsl r1, r1, #2
_0203478A:
	ldrb r2, [r3, r1]
	cmp r2, #1
	beq _0203479A
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, #8
	blt _0203478A
	mov r0, #0xff
_0203479A:
	bx lr
	.balign 4, 0
_0203479C: .word _021D4130
	thumb_func_end sub_02034780

