	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02057314
	.public sub_02057358
	.public sub_02057384
	.public sub_020573AC
	.extern _021D41C4
	.extern sub_0205776C
	.extern sub_02057818
	.extern sub_02057C5C

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

	thumb_func_start sub_02057358
sub_02057358: ; 0x02057358
	push {r3, lr}
	ldr r1, _02057380 ; =_021D41C4
	ldr r2, [r1]
	cmp r2, #0
	beq _0205737C
	add r1, r2, #0
	add r1, #0xed
	ldrb r1, [r1]
	cmp r1, r0
	beq _02057370
	add r2, #0xed
	strb r0, [r2]
_02057370:
	ldr r1, _02057380 ; =_021D41C4
	mov r0, #0x3e
	ldr r1, [r1]
	add r1, #0xed
	bl sub_020376E0
_0205737C:
	pop {r3, pc}
	nop
_02057380: .word _021D41C4
	thumb_func_end sub_02057358

	thumb_func_start sub_02057384
sub_02057384: ; 0x02057384
	push {r3, lr}
	ldr r2, _020573A8 ; =_021D41C4
	ldr r3, [r2]
	cmp r3, #0
	beq _020573A6
	add r1, r3, #0
	add r1, #0xed
	ldrb r1, [r1]
	cmp r1, r0
	beq _020573A6
	add r3, #0xed
	strb r0, [r3]
	ldr r1, [r2]
	mov r0, #0x3e
	add r1, #0xed
	bl sub_020376E0
_020573A6:
	pop {r3, pc}
	.balign 4, 0
_020573A8: .word _021D41C4
	thumb_func_end sub_02057384

	thumb_func_start sub_020573AC
sub_020573AC: ; 0x020573AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020573EC ; =_021D41C4
	add r4, r2, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _020573E8
	cmp r1, #1
	beq _020573C2
	bl GF_AssertFail
_020573C2:
	cmp r5, #8
	blt _020573CA
	bl GF_AssertFail
_020573CA:
	ldrb r0, [r4]
	mov r1, #1
	cmp r0, #1
	beq _020573D8
	cmp r0, #0
	beq _020573D8
	mov r1, #0
_020573D8:
	cmp r1, #0
	bne _020573E0
	bl GF_AssertFail
_020573E0:
	ldrb r1, [r4]
	add r0, r5, #0
	bl sub_02057C5C
_020573E8:
	pop {r3, r4, r5, pc}
	nop
_020573EC: .word _021D41C4
	thumb_func_end sub_020573AC

