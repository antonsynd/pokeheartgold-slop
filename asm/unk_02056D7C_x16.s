	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057314
	.extern _021D41C4
	.extern sub_0205776C
	.extern sub_02057818

	.text
	thumb_func_start sub_02057314
sub_02057314: ; 0x02057314
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	ldr r4, _02057354 ; =_021D41C4
	add r7, r5, #0
	add r6, sp, #0
_0205731E:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #0
	beq _02057332
	add r0, r5, #0
	bl sub_02057818
	b _0205734C
_02057332:
	ldr r3, [r4]
	add r0, r3, r5
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205734C
	strb r5, [r6]
	ldr r3, [r3, #0x30]
	add r0, r7, #0
	mov r1, #1
	add r2, sp, #0
	bl sub_0205776C
_0205734C:
	add r5, r5, #1
	cmp r5, #8
	blt _0205731E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02057354: .word _021D41C4
	thumb_func_end sub_02057314

