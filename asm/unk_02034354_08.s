	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020346E8
	.extern _021D4130

	.text
	thumb_func_start sub_020346E8
sub_020346E8: ; 0x020346E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02034710 ; =_021D4130
	ldr r1, [r0]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl PlayerProfile_Init
	ldr r0, _02034710 ; =_021D4130
	mov r2, #0
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r4, pc}
	nop
_02034710: .word _021D4130
	thumb_func_end sub_020346E8

