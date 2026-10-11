	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_0203690C
	.public sub_020369CC
	.public sub_02036AA0
	.public sub_02036ABC
	.public sub_02036AD8
	.public sub_02036BE4
	.public sub_02036D14
	.public sub_02036DA0
	.public sub_02036E60
	.public sub_02036F30
	.public sub_02036FA8
	.public sub_02036FD8
	.public sub_02037030
	.public sub_02037088
	.public sub_02037108
	.extern _0210F900
	.extern _021D4140
	.extern sub_02035FF0
	.extern sub_020373B4
	.extern sub_0203751C
	.extern sub_0203769C
	.extern sub_0203772C
	.extern sub_02037974

	.text
	thumb_func_start sub_0203690C
sub_0203690C: ; 0x0203690C
	push {r4, r5, r6, lr}
	ldr r3, _020369BC ; =_021D4140
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _020369C0 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _020369BA
	ldr r0, [r3, #8]
	add r2, #0x32
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _0203693A
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _020369BA
_0203693A:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02035FF0
	cmp r0, #1
	bne _02036992
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203772C
	add r6, r0, #0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033FC4
	ldrb r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _02036982
	ldr r0, _020369BC ; =_021D4140
	mov r3, #0x4b
	ldr r0, [r0, #8]
	lsl r3, r3, #4
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #0
	add r2, r6, #0
	add r3, #0xf5
	bl sub_02033AF0
_02036982:
	ldr r0, _020369BC ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _020369C4 ; =0x00000696
	add r1, r1, r0
	ldrb r0, [r1, r5]
	add r0, r0, #1
	strb r0, [r1, r5]
	pop {r4, r5, r6, pc}
_02036992:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02036D14
	ldrb r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _020369BA
	ldr r0, _020369BC ; =_021D4140
	ldr r3, _020369C8 ; =0x0000051C
	ldr r0, [r0, #8]
	mov r2, #0xb
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	add r3, #0x92
	bl sub_02033AF0
_020369BA:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_020369BC: .word _021D4140
_020369C0: .word 0x0000066C
_020369C4: .word 0x00000696
_020369C8: .word 0x0000051C
	thumb_func_end sub_0203690C

	thumb_func_start sub_020369CC
sub_020369CC: ; 0x020369CC
	push {r4, r5, r6, lr}
	ldr r3, _02036A8C ; =_021D4140
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _02036A90 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _02036A88
	ldr r0, [r3, #8]
	add r2, #0x32
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _020369FA
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _02036A88
_020369FA:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02035FF0
	cmp r0, #1
	bne _02036A88
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203772C
	add r6, r0, #0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033FC4
	ldrb r0, [r4]
	ldr r2, _02036A94 ; =0x00000694
	cmp r0, #0xff
	bne _02036A38
	ldr r0, _02036A8C ; =_021D4140
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	mvn r3, r3
	and r0, r3
	b _02036A44
_02036A38:
	ldr r0, _02036A8C ; =_021D4140
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	orr r0, r3
_02036A44:
	strh r0, [r1, r2]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _02036A88
	cmp r0, #2
	beq _02036A88
	cmp r0, #0xe
	beq _02036A88
	ldr r1, _02036A8C ; =_021D4140
	ldr r2, _02036A98 ; =0x0000069E
	ldr r1, [r1, #8]
	add r3, r1, r5
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _02036A68
	mov r2, #1
	tst r0, r2
	bne _02036A88
_02036A68:
	ldr r3, _02036A9C ; =0x0000051C
	mov r0, #0xc
	add r1, r1, r3
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	sub r2, r6, #1
	add r3, #0xcb
	bl sub_02033AF0
	ldr r0, _02036A8C ; =_021D4140
	mov r2, #0
	ldr r0, [r0, #8]
	add r1, r0, r5
	ldr r0, _02036A98 ; =0x0000069E
	strb r2, [r1, r0]
_02036A88:
	pop {r4, r5, r6, pc}
	nop
_02036A8C: .word _021D4140
_02036A90: .word 0x0000066C
_02036A94: .word 0x00000694
_02036A98: .word 0x0000069E
_02036A9C: .word 0x0000051C
	thumb_func_end sub_020369CC

	thumb_func_start sub_02036AA0
sub_02036AA0: ; 0x02036AA0
	push {r3, lr}
	cmp r0, #0
	beq _02036AB0
	ldr r0, _02036AB8 ; =_0210F900
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	pop {r3, pc}
_02036AB0:
	bl GF_AssertFail
	pop {r3, pc}
	nop
_02036AB8: .word _0210F900
	thumb_func_end sub_02036AA0

	thumb_func_start sub_02036ABC
sub_02036ABC: ; 0x02036ABC
	push {r3, lr}
	cmp r0, #0
	beq _02036ACC
	ldr r0, _02036AD4 ; =_0210F900
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	pop {r3, pc}
_02036ACC:
	bl GF_AssertFail
	pop {r3, pc}
	nop
_02036AD4: .word _0210F900
	thumb_func_end sub_02036ABC

	thumb_func_start sub_02036AD8
sub_02036AD8: ; 0x02036AD8
	push {r4, lr}
	ldr r0, _02036BD0 ; =_021D4140
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02036BCE
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	bne _02036BCE
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203772C
	add r4, r0, #0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033FC4
	bl sub_02033298
	cmp r0, #4
	bne _02036BCE
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	bne _02036B22
	bl sub_0203769C
	pop {r4, pc}
_02036B22:
	ldr r0, _02036BD4 ; =_0210F900
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _02036B30
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02036BCE
_02036B30:
	bl sub_0203769C
	cmp r0, #0
	beq _02036B84
	ldr r0, _02036BD4 ; =_0210F900
	ldr r3, _02036BD8 ; =sub_02036AA0
	ldrb r1, [r0, #1]
	mov r2, #0xe
	add r1, r1, #1
	strb r1, [r0, #1]
	ldr r0, _02036BD0 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02036BDC ; =0x000006AF
	ldrb r0, [r1, r0]
	lsl r0, r0, #6
	add r0, r1, r0
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_02033800
	cmp r0, #0
	bne _02036B66
	ldr r0, _02036BD4 ; =_0210F900
	ldrb r1, [r0, #1]
	sub r1, r1, #1
	strb r1, [r0, #1]
	pop {r4, pc}
_02036B66:
	ldr r2, _02036BD0 ; =_021D4140
	ldr r1, _02036BDC ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r4, pc}
_02036B84:
	bl sub_02033250
	ldr r1, _02036BE0 ; =0x0000FFFE
	tst r0, r1
	beq _02036BCE
	ldr r0, _02036BD4 ; =_0210F900
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	mov r0, #1
	bl sub_02036AA0
	ldr r0, _02036BD0 ; =_021D4140
	ldr r1, _02036BDC ; =0x000006AF
	ldr r2, [r0, #8]
	mov r0, #0
	ldrb r1, [r2, r1]
	lsl r1, r1, #6
	add r1, r2, r1
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	bl sub_0203690C
	ldr r2, _02036BD0 ; =_021D4140
	ldr r1, _02036BDC ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
_02036BCE:
	pop {r4, pc}
	.balign 4, 0
_02036BD0: .word _021D4140
_02036BD4: .word _0210F900
_02036BD8: .word sub_02036AA0
_02036BDC: .word 0x000006AF
_02036BE0: .word 0x0000FFFE
	thumb_func_end sub_02036AD8

	thumb_func_start sub_02036BE4
sub_02036BE4: ; 0x02036BE4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02036D08 ; =_021D4140
	mov r2, #0x66
	ldr r5, [r7, #8]
	lsl r2, r2, #4
	ldrb r0, [r5, r2]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	beq _02036C02
	sub r1, r2, #4
	ldrh r1, [r5, r1]
	mov r3, #0xf0
	tst r3, r1
	bne _02036C04
_02036C02:
	b _02036D06
_02036C04:
	cmp r0, #2
	bne _02036C42
	mov r0, #0x20
	tst r0, r1
	beq _02036C16
	mov r0, #0x10
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02036C16:
	mov r0, #0x10
	tst r0, r1
	beq _02036C24
	mov r0, #0x20
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02036C24:
	mov r0, #0x40
	tst r0, r1
	beq _02036C32
	mov r0, #0x80
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02036C32:
	mov r0, #0x80
	tst r0, r1
	beq _02036CF0
	mov r0, #0x40
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02036CF0
_02036C42:
	add r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _02036C64
	add r4, r0, #0
	add r0, r2, #1
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	add r0, r2, #1
	strb r1, [r5, r0]
	ldr r1, [r7, #8]
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _02036CF0
	add r0, r2, #2
	strh r6, [r1, r0]
	b _02036CF0
_02036C64:
	add r0, r2, #0
	sub r0, #0x34
	add r6, r5, r0
	sub r2, #0x34
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r6, #4]
	bl _ll_mul
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	add r0, r0, r3
	adc r1, r2
	ldr r2, _02036D0C ; =0x0000062C
	str r0, [r5, r2]
	mov r2, #0
	str r1, [r6, #4]
	lsr r0, r1, #0x1e
	lsl r1, r2, #2
	orr r1, r0
	cmp r1, #3
	bhi _02036CB8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02036CA2: ; jump table
	.short _02036CAA - _02036CA2 - 2 ; case 0
	.short _02036CAE - _02036CA2 - 2 ; case 1
	.short _02036CB2 - _02036CA2 - 2 ; case 2
	.short _02036CB6 - _02036CA2 - 2 ; case 3
_02036CAA:
	mov r4, #0x20
	b _02036CB8
_02036CAE:
	mov r4, #0x10
	b _02036CB8
_02036CB2:
	mov r4, #0x40
	b _02036CB8
_02036CB6:
	mov r4, #0x80
_02036CB8:
	ldr r0, _02036D08 ; =_021D4140
	ldr r5, [r0, #8]
	ldr r0, _02036D0C ; =0x0000062C
	add r6, r5, r0
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	bl _ll_mul
	ldr r3, [r6, #0x10]
	ldr r2, [r6, #0x14]
	add r0, r3, r0
	adc r2, r1
	ldr r1, _02036D0C ; =0x0000062C
	mov r3, #0
	str r0, [r5, r1]
	str r2, [r6, #4]
	lsr r0, r2, #0x1c
	lsl r2, r3, #4
	orr r2, r0
	add r0, r1, #0
	add r0, #0x35
	strb r2, [r5, r0]
	ldr r0, _02036D08 ; =_021D4140
	add r1, #0x36
	ldr r0, [r0, #8]
	strh r4, [r0, r1]
_02036CF0:
	ldr r2, _02036D08 ; =_021D4140
	ldr r1, _02036D10 ; =0x0000065C
	ldr r5, [r2, #8]
	mov r0, #0xf0
	ldrh r3, [r5, r1]
	bic r3, r0
	strh r3, [r5, r1]
	ldr r2, [r2, #8]
	ldrh r0, [r2, r1]
	add r0, r0, r4
	strh r0, [r2, r1]
_02036D06:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02036D08: .word _021D4140
_02036D0C: .word 0x0000062C
_02036D10: .word 0x0000065C
	thumb_func_end sub_02036BE4

	thumb_func_start sub_02036D14
sub_02036D14: ; 0x02036D14
	push {r4, r5, r6, r7}
	ldr r4, _02036D94 ; =_021D4140
	lsl r6, r1, #1
	ldr r2, [r4, #8]
	mov r5, #0
	add r3, r2, r6
	ldr r2, _02036D98 ; =0x00000644
	strh r5, [r3, r2]
	ldrb r5, [r0]
	mov r3, #0x10
	add r7, r5, #0
	and r7, r3
	cmp r7, #0x10
	bne _02036D8C
	mov r7, #0xc
	and r5, r7
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	bne _02036D48
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x40
	orr r2, r3
	strh r2, [r4, r6]
	b _02036D7A
_02036D48:
	cmp r5, #4
	bne _02036D5A
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x80
	orr r2, r3
	strh r2, [r4, r6]
	b _02036D7A
_02036D5A:
	cmp r5, #8
	bne _02036D6C
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x20
	orr r2, r3
	strh r2, [r4, r6]
	b _02036D7A
_02036D6C:
	cmp r5, #0xc
	bne _02036D7A
	ldr r4, [r4, #8]
	add r4, r4, r2
	ldrh r2, [r4, r6]
	orr r2, r3
	strh r2, [r4, r6]
_02036D7A:
	ldrb r0, [r0]
	asr r2, r0, #5
	mov r0, #7
	and r2, r0
	ldr r0, _02036D94 ; =_021D4140
	ldr r0, [r0, #8]
	add r1, r0, r1
	ldr r0, _02036D9C ; =0x00000654
	strb r2, [r1, r0]
_02036D8C:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02036D94: .word _021D4140
_02036D98: .word 0x00000644
_02036D9C: .word 0x00000654
	thumb_func_end sub_02036D14

	thumb_func_start sub_02036DA0
sub_02036DA0: ; 0x02036DA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02036E4C ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02036E50 ; =0x0000065E
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02036DB4
	mov r0, #0
	pop {r4, pc}
_02036DB4:
	bl sub_0203751C
	cmp r0, #0
	bne _02036DC0
	mov r0, #0
	pop {r4, pc}
_02036DC0:
	ldr r0, _02036E4C ; =_021D4140
	ldr r2, [r0, #8]
	ldr r0, _02036E54 ; =0x000006B1
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02036DD0
	sub r1, r1, #1
	strb r1, [r2, r0]
_02036DD0:
	ldr r1, _02036E4C ; =_021D4140
	ldr r0, _02036E58 ; =0x0000065C
	ldr r2, [r1, #8]
	mov r3, #0x40
	ldrh r2, [r2, r0]
	tst r3, r2
	beq _02036DF0
	ldrb r3, [r4]
	mov r2, #0x10
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _02036E36
_02036DF0:
	mov r3, #0x80
	tst r3, r2
	beq _02036E08
	ldrb r3, [r4]
	mov r2, #0x14
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _02036E36
_02036E08:
	mov r3, #0x20
	tst r3, r2
	beq _02036E20
	ldrb r3, [r4]
	mov r2, #0x18
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _02036E36
_02036E20:
	mov r3, #0x10
	tst r2, r3
	beq _02036E36
	ldrb r3, [r4]
	mov r2, #0x1c
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
_02036E36:
	ldr r0, _02036E4C ; =_021D4140
	ldrb r2, [r4]
	ldr r1, [r0, #8]
	ldr r0, _02036E5C ; =0x0000065F
	ldrb r0, [r1, r0]
	lsl r0, r0, #5
	orr r0, r2
	strb r0, [r4]
	mov r0, #0
	pop {r4, pc}
	nop
_02036E4C: .word _021D4140
_02036E50: .word 0x0000065E
_02036E54: .word 0x000006B1
_02036E58: .word 0x0000065C
_02036E5C: .word 0x0000065F
	thumb_func_end sub_02036DA0

	thumb_func_start sub_02036E60
sub_02036E60: ; 0x02036E60
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203772C
	add r5, r0, #0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033FC4
	ldr r0, _02036F24 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02036F28 ; =0x000006B4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02036E90
	mov r0, #0
	b _02036E92
_02036E90:
	mov r0, #1
_02036E92:
	strb r0, [r4]
	bl sub_02035FF0
	cmp r0, #0
	bne _02036EA2
	add r0, r4, #0
	bl sub_02036DA0
_02036EA2:
	ldr r1, _02036F24 ; =_021D4140
	ldr r0, _02036F28 ; =0x000006B4
	ldr r2, [r1, #8]
	mov r3, #0
	strb r3, [r2, r0]
	mov r0, #0x16
	ldr r1, [r1, #8]
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_02033C50
	cmp r0, #0
	beq _02036ED0
	ldrb r1, [r4]
	mov r0, #2
	orr r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #2
	bne _02036F1C
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02036ED0:
	sub r0, r5, #1
	str r0, [sp, #4]
	add r0, r4, #1
	str r0, [sp]
	ldr r0, _02036F24 ; =_021D4140
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02033ECC
	cmp r0, #0
	bne _02036EF8
	ldr r0, _02036F24 ; =_021D4140
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02036F28 ; =0x000006B4
	strb r2, [r1, r0]
_02036EF8:
	bl sub_02035FF0
	cmp r0, #1
	bne _02036F1C
	ldr r2, _02036F24 ; =_021D4140
	ldr r1, _02036F2C ; =0x000006AA
	ldr r3, [r2, #8]
	ldrb r0, [r3, r1]
	add r0, r0, #1
	strb r0, [r3, r1]
	ldr r2, [r2, #8]
	ldrb r0, [r4]
	ldrb r1, [r2, r1]
	lsl r2, r1, #4
	mov r1, #0xf0
	and r1, r2
	orr r0, r1
	strb r0, [r4]
_02036F1C:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02036F24: .word _021D4140
_02036F28: .word 0x000006B4
_02036F2C: .word 0x000006AA
	thumb_func_end sub_02036E60

	thumb_func_start sub_02036F30
sub_02036F30: ; 0x02036F30
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xb
	strb r0, [r4]
	ldr r0, _02036FA0 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02036FA4 ; =0x000006B5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02036F4A
	mov r0, #0
	b _02036F4C
_02036F4A:
	mov r0, #1
_02036F4C:
	strb r0, [r4, #1]
	bl sub_02033250
	asr r1, r0, #8
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	mov r0, #0xbb
	str r0, [sp, #4]
	add r0, r4, #5
	str r0, [sp]
	ldr r0, _02036FA0 ; =_021D4140
	mov r2, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02033ECC
	cmp r0, #0
	beq _02036F8C
	ldr r0, _02036FA0 ; =_021D4140
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02036FA4 ; =0x000006B5
	strb r2, [r1, r0]
	ldr r1, [sp, #4]
	mov r0, #0xbb
	sub r0, r0, r1
	add sp, #8
	strb r0, [r4, #4]
	pop {r4, pc}
_02036F8C:
	ldr r0, _02036FA0 ; =_021D4140
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02036FA4 ; =0x000006B5
	strb r2, [r1, r0]
	mov r0, #0xbb
	strb r0, [r4, #4]
	add sp, #8
	pop {r4, pc}
	nop
_02036FA0: .word _021D4140
_02036FA4: .word 0x000006B5
	thumb_func_end sub_02036F30

	thumb_func_start sub_02036FA8
sub_02036FA8: ; 0x02036FA8
	push {r3, lr}
	ldr r0, _02036FD0 ; =_021D4140
	ldr r2, [r0, #8]
	ldr r0, _02036FD4 ; =0x000006BB
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02036FBA
	mov r0, #0
	pop {r3, pc}
_02036FBA:
	add r0, r0, #1
	ldrb r0, [r2, r0]
	bl _s32_div_f
	cmp r1, #0
	bne _02036FCA
	mov r0, #1
	pop {r3, pc}
_02036FCA:
	mov r0, #0
	pop {r3, pc}
	nop
_02036FD0: .word _021D4140
_02036FD4: .word 0x000006BB
	thumb_func_end sub_02036FA8

	thumb_func_start sub_02036FD8
sub_02036FD8: ; 0x02036FD8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	bne _02036FF4
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02036FF4:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0203702C ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _0203701A
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203701A:
	bl sub_0203993C
	cmp r0, #0xa
	bne _02037026
	bl sub_02037974
_02037026:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0203702C: .word _021D4140
	thumb_func_end sub_02036FD8

	thumb_func_start sub_02037030
sub_02037030: ; 0x02037030
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	bne _0203704C
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203704C:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02037084 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _02037070
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02037070:
	bl sub_0203993C
	cmp r0, #0xa
	bne _0203707C
	bl sub_02037974
_0203707C:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02037084: .word _021D4140
	thumb_func_end sub_02037030

	thumb_func_start sub_02037088
sub_02037088: ; 0x02037088
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	cmp r0, #0
	beq _020370A4
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020370A4:
	mov r0, #0
	bl sub_020373B4
	cmp r0, #0
	bne _020370B4
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020370B4:
	bl sub_02035FF0
	cmp r0, #1
	bne _020370CA
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02036FD8
	add sp, #8
	pop {r4, r5, r6, pc}
_020370CA:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02037104 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _020370F0
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_020370F0:
	bl sub_0203993C
	cmp r0, #0xa
	bne _020370FC
	bl sub_02037974
_020370FC:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02037104: .word _021D4140
	thumb_func_end sub_02037088

	thumb_func_start sub_02037108
sub_02037108: ; 0x02037108
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	cmp r0, #0
	beq _02037124
	bl sub_02037974
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02037124:
	mov r0, #0
	bl sub_020373B4
	cmp r0, #0
	bne _02037134
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02037134:
	bl sub_02035FF0
	cmp r0, #1
	bne _0203714A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02037030
	add sp, #8
	pop {r4, r5, r6, pc}
_0203714A:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02037180 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _0203716E
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203716E:
	bl sub_0203993C
	cmp r0, #0xa
	bne _0203717A
	bl sub_02037974
_0203717A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02037180: .word _021D4140
	thumb_func_end sub_02037108

