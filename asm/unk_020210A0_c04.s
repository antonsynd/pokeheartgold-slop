	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public sub_020211AC
	.extern _021D2198
	.extern sub_020211E0

	.text
	thumb_func_start sub_020211AC
sub_020211AC: ; 0x020211AC
	push {r4, lr}
	ldr r4, _020211D0 ; =_021D2198 + 0x40
	strh r0, [r4, #0x18]
	ldr r0, _020211D4 ; =gSystem + 0x60
	strb r1, [r0, #8]
	ldr r0, _020211D8 ; =_021D2198
	ldr r1, [sp, #0xc]
	str r2, [r0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	ldr r1, [sp, #8]
	str r1, [r0, #0x54]
	ldr r0, _020211DC ; =_021D2198 + 0xC
	mov r1, #9
	bl sub_020211E0
	pop {r4, pc}
	nop
_020211D0: .word _021D2198 + 0x40
_020211D4: .word gSystem + 0x60
_020211D8: .word _021D2198
_020211DC: .word _021D2198 + 0xC
	thumb_func_end sub_020211AC

