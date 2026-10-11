	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_0205776C
	.extern _021D41C4
	.extern sub_0205724C

	.text
	thumb_func_start sub_0205776C
sub_0205776C: ; 0x0205776C
	push {r4, lr}
	ldr r0, _02057794 ; =_021D41C4
	ldrb r4, [r2]
	ldr r0, [r0]
	cmp r0, #0
	beq _02057790
	bl sub_0203769C
	cmp r4, r0
	beq _02057790
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0205724C
	add r0, r4, #0
	bl sub_020346E8
_02057790:
	pop {r4, pc}
	nop
_02057794: .word _021D41C4
	thumb_func_end sub_0205776C

