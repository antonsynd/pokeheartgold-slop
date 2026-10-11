	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02014FA4
	.public sub_02014FD0
	.public sub_02014FFC
	.public sub_02015028
	.public sub_02015054
	.public sub_02015080
	.public sub_020150AC
	.public sub_020150D8
	.public sub_02015104
	.public sub_02015130
	.public sub_0201515C
	.public sub_02015188
	.public sub_020151B4
	.public sub_020151E0
	.public sub_0201520C
	.public sub_02015238
	.extern _021D10A0

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02014FA4
sub_02014FA4: ; 0x02014FA4
	push {r4, lr}
	ldr r1, _02014FCC ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #8]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014FBC
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014FBC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014FC8
	bl GF_AssertFail
_02014FC8:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02014FCC: .word _021D10A0
	thumb_func_end sub_02014FA4

	thumb_func_start sub_02014FD0
sub_02014FD0: ; 0x02014FD0
	push {r4, lr}
	ldr r1, _02014FF8 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0xc]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02014FE8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02014FE8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02014FF4
	bl GF_AssertFail
_02014FF4:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02014FF8: .word _021D10A0
	thumb_func_end sub_02014FD0

	thumb_func_start sub_02014FFC
sub_02014FFC: ; 0x02014FFC
	push {r4, lr}
	ldr r1, _02015024 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x10]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015014
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015014:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015020
	bl GF_AssertFail
_02015020:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015024: .word _021D10A0
	thumb_func_end sub_02014FFC

	thumb_func_start sub_02015028
sub_02015028: ; 0x02015028
	push {r4, lr}
	ldr r1, _02015050 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x14]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015040
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015040:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201504C
	bl GF_AssertFail
_0201504C:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015050: .word _021D10A0
	thumb_func_end sub_02015028

	thumb_func_start sub_02015054
sub_02015054: ; 0x02015054
	push {r4, lr}
	ldr r1, _0201507C ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x18]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201506C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201506C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015078
	bl GF_AssertFail
_02015078:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_0201507C: .word _021D10A0
	thumb_func_end sub_02015054

	thumb_func_start sub_02015080
sub_02015080: ; 0x02015080
	push {r4, lr}
	ldr r1, _020150A8 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x1c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015098
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015098:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020150A4
	bl GF_AssertFail
_020150A4:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_020150A8: .word _021D10A0
	thumb_func_end sub_02015080

	thumb_func_start sub_020150AC
sub_020150AC: ; 0x020150AC
	push {r4, lr}
	ldr r1, _020150D4 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x20]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020150C4
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020150C4:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020150D0
	bl GF_AssertFail
_020150D0:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_020150D4: .word _021D10A0
	thumb_func_end sub_020150AC

	thumb_func_start sub_020150D8
sub_020150D8: ; 0x020150D8
	push {r4, lr}
	ldr r1, _02015100 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x24]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020150F0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020150F0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020150FC
	bl GF_AssertFail
_020150FC:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015100: .word _021D10A0
	thumb_func_end sub_020150D8

	thumb_func_start sub_02015104
sub_02015104: ; 0x02015104
	push {r4, lr}
	ldr r1, _0201512C ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x28]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _0201511C
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_0201511C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015128
	bl GF_AssertFail
_02015128:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_0201512C: .word _021D10A0
	thumb_func_end sub_02015104

	thumb_func_start sub_02015130
sub_02015130: ; 0x02015130
	push {r4, lr}
	ldr r1, _02015158 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x2c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015148
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015148:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015154
	bl GF_AssertFail
_02015154:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015158: .word _021D10A0
	thumb_func_end sub_02015130

	thumb_func_start sub_0201515C
sub_0201515C: ; 0x0201515C
	push {r4, lr}
	ldr r1, _02015184 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x30]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015174
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015174:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015180
	bl GF_AssertFail
_02015180:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015184: .word _021D10A0
	thumb_func_end sub_0201515C

	thumb_func_start sub_02015188
sub_02015188: ; 0x02015188
	push {r4, lr}
	ldr r1, _020151B0 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x34]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020151A0
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020151A0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020151AC
	bl GF_AssertFail
_020151AC:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_020151B0: .word _021D10A0
	thumb_func_end sub_02015188

	thumb_func_start sub_020151B4
sub_020151B4: ; 0x020151B4
	push {r4, lr}
	ldr r1, _020151DC ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x38]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020151CC
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020151CC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020151D8
	bl GF_AssertFail
_020151D8:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_020151DC: .word _021D10A0
	thumb_func_end sub_020151B4

	thumb_func_start sub_020151E0
sub_020151E0: ; 0x020151E0
	push {r4, lr}
	ldr r1, _02015208 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x3c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _020151F8
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_020151F8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015204
	bl GF_AssertFail
_02015204:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015208: .word _021D10A0
	thumb_func_end sub_020151E0

	thumb_func_start sub_0201520C
sub_0201520C: ; 0x0201520C
	push {r4, lr}
	ldr r1, _02015234 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x40]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015224
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015224:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02015230
	bl GF_AssertFail
_02015230:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015234: .word _021D10A0
	thumb_func_end sub_0201520C

	thumb_func_start sub_02015238
sub_02015238: ; 0x02015238
	push {r4, lr}
	ldr r1, _02015260 ; =_021D10A0
	mov r2, #3
	ldr r1, [r1, #0x44]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0
	and r3, r2
	beq _02015250
	mov r2, #4
	sub r2, r2, r3
	add r0, r0, r2
_02015250:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201525C
	bl GF_AssertFail
_0201525C:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
_02015260: .word _021D10A0
	thumb_func_end sub_02015238

