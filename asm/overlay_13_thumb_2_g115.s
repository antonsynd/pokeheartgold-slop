	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02226370
	.public ov13_022263C4
	.extern ov13_022262F8
	.extern ov13_02226C0C
	.extern ov13_02226C38
	.extern ov13_02226C7C
	.extern ov13_02245AD8

	.text

	.text
	thumb_func_start ov13_02226370
ov13_02226370: ; 0x02226370
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, #0x10
	mov r2, #8
	bl ov13_02226C0C
	ldr r0, [r4, #0x10]
	lsr r1, r0, #3
	mov r0, #0x3f
	and r1, r0
	cmp r1, #0x38
	bhs _02226392
	mov r0, #0x38
	b _02226394
_02226392:
	mov r0, #0x78
_02226394:
	sub r2, r0, r1
	ldr r1, _022263C0 ; =ov13_02245AD8
	add r0, r4, #0
	bl ov13_022262F8
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #8
	bl ov13_022262F8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl ov13_02226C0C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	bl ov13_02226C7C
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022263C0: .word ov13_02245AD8
	thumb_func_end ov13_02226370

	thumb_func_start ov13_022263C4
ov13_022263C4: ; 0x022263C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	ldr r0, [r7]
	mov r2, #0x40
	str r0, [sp]
	add r0, sp, #0x44
	ldr r4, [r7, #4]
	ldr r5, [r7, #8]
	ldr r6, [r7, #0xc]
	bl ov13_02226C38
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	str r0, [sp, #4]
	mvn r0, r4
	and r1, r5
	and r0, r6
	orr r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _0222679C ; =0x28955B88
	sub r1, r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	lsl r1, r0, #7
	lsr r0, r0, #0x19
	orr r0, r1
	add r3, r0, r4
	ldr r0, [sp, #0x48]
	mvn r1, r3
	str r0, [sp, #8]
	add r0, r3, #0
	and r0, r4
	and r1, r5
	orr r1, r0
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, _022267A0 ; =0x173848AA
	sub r0, r1, r0
	add r0, r6, r0
	lsl r1, r0, #0xc
	lsr r0, r0, #0x14
	orr r0, r1
	add r2, r0, r3
	ldr r0, [sp, #0x4c]
	mvn r1, r2
	str r0, [sp, #0xc]
	add r0, r2, #0
	and r0, r3
	and r1, r4
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, _022267A4 ; =0x242070DB
	add r0, r1, r0
	add r0, r5, r0
	lsl r1, r0, #0x11
	lsr r0, r0, #0xf
	orr r0, r1
	add r1, r0, r2
	ldr r0, [sp, #0x50]
	mvn r5, r1
	str r0, [sp, #0x10]
	add r0, r1, #0
	and r0, r2
	and r5, r3
	orr r5, r0
	ldr r0, [sp, #0x10]
	add r5, r0, r5
	ldr r0, _022267A8 ; =0x3E423112
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x54]
	add r0, r0, r1
	str r4, [sp, #0x14]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x14]
	add r5, r4, r5
	ldr r4, _022267AC ; =0x0A83F051
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x58]
	add r3, r3, r0
	str r4, [sp, #0x18]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _022267B0 ; =0x4787C62A
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x5c]
	add r2, r2, r3
	str r4, [sp, #0x1c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _022267B4 ; =0x57CFB9ED
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x60]
	add r1, r1, r2
	str r4, [sp, #0x20]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x20]
	add r5, r4, r5
	ldr r4, _022267B8 ; =0x02B96AFF
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x64]
	add r0, r0, r1
	str r4, [sp, #0x24]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x24]
	add r5, r4, r5
	ldr r4, _022267BC ; =0x698098D8
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x68]
	add r3, r3, r0
	str r4, [sp, #0x28]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x28]
	add r5, r4, r5
	ldr r4, _022267C0 ; =0x74BB0851
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x6c]
	add r2, r2, r3
	str r4, [sp, #0x2c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x2c]
	add r5, r4, r5
	ldr r4, _022267C4 ; =0x0000A44F
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x70]
	add r1, r1, r2
	str r4, [sp, #0x30]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _022267C8 ; =0x76A32842
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	add r0, r0, r1
	ldr r4, [sp, #0x74]
	mvn r5, r0
	str r4, [sp, #0x34]
	add r4, r0, #0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x34]
	add r5, r4, r5
	ldr r4, _022267CC ; =0x6B901122
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	add r4, r3, r0
	ldr r3, [sp, #0x78]
	mvn r5, r4
	str r3, [sp, #0x38]
	add r3, r4, #0
	and r3, r0
	and r5, r1
	orr r5, r3
	ldr r3, [sp, #0x38]
	add r5, r3, r5
	ldr r3, _022267D0 ; =0x02678E6D
	sub r3, r5, r3
	add r2, r2, r3
	lsl r3, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r3
	add r3, r2, r4
	mvn r2, r3
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x7c]
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0x40]
	add r2, r3, #0
	and r2, r4
	and r5, r0
	orr r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _022267D4 ; =0x5986BC72
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r2
	add r2, r1, r3
	ldr r1, [sp, #0x80]
	add r5, r2, #0
	mvn r6, r2
	mov ip, r1
	add r1, r6, #0
	and r5, r3
	and r1, r4
	orr r5, r1
	mov r1, ip
	add r5, r1, r5
	ldr r1, _022267D8 ; =0x49B40821
	add r1, r5, r1
	add r0, r0, r1
	lsl r1, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r1
	add r1, r0, r2
	ldr r5, [sp, #0x3c]
	add r0, r1, #0
	and r0, r3
	and r5, r2
	orr r5, r0
	ldr r0, [sp, #8]
	add r5, r0, r5
	ldr r0, _022267DC ; =0x09E1DA9E
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r0, r0, r1
	add r4, r0, #0
	add r5, r1, #0
	and r4, r2
	bic r5, r2
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _022267E0 ; =0x3FBF4CC0
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #9
	lsr r3, r3, #0x17
	orr r3, r4
	add r3, r3, r0
	add r4, r3, #0
	mvn r5, r1
	and r4, r1
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _022267E4 ; =0x265E5A51
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xe
	lsr r2, r2, #0x12
	orr r2, r4
	add r2, r2, r3
	add r4, r2, #0
	mvn r5, r0
	and r4, r0
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #4]
	add r5, r4, r5
	ldr r4, _022267E8 ; =0x16493856
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r4
	add r1, r1, r2
	add r4, r1, #0
	mvn r5, r3
	and r4, r3
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _022267EC ; =0x29D0EFA3
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r4, r0, r1
	add r0, r4, #0
	mvn r5, r2
	and r0, r2
	and r5, r1
	orr r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r0, r5
	ldr r0, _022267F0 ; =0x02441453
	add r0, r5, r0
	add r0, r3, r0
	lsl r3, r0, #9
	lsr r0, r0, #0x17
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	mov r0, ip
	add r5, r0, r5
	ldr r0, _022267F4 ; =0x275E197F
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0x14]
	add r5, r2, r5
	ldr r2, _022267F8 ; =0x182C0438
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x28]
	add r2, r1, r2
	ldr r1, _022267FC ; =0x21E1CDE6
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #5
	lsr r1, r1, #0x1b
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x40]
	add r4, r1, r4
	ldr r1, _02226800 ; =0x3CC8F82A
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #9
	lsr r1, r1, #0x17
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	mvn r4, r5
	and r3, r5
	and r4, r2
	orr r4, r3
	ldr r3, [sp, #0x10]
	add r4, r3, r4
	ldr r3, _02226804 ; =0x0B2AF279
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	mvn r3, r2
	and r0, r2
	and r3, r1
	orr r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _02226808 ; =0x455A14ED
	add r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _0222680C ; =0x561C16FB
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _02226810 ; =0x03105C08
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #9
	lsr r1, r1, #0x17
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldr r1, _02226814 ; =0x676F02D9
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xe
	lsr r1, r1, #0x12
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x34]
	add r4, r1, r4
	ldr r1, _02226818 ; =0x72D5B376
	b _0222681C
	nop
_0222679C: .word 0x28955B88
_022267A0: .word 0x173848AA
_022267A4: .word 0x242070DB
_022267A8: .word 0x3E423112
_022267AC: .word 0x0A83F051
_022267B0: .word 0x4787C62A
_022267B4: .word 0x57CFB9ED
_022267B8: .word 0x02B96AFF
_022267BC: .word 0x698098D8
_022267C0: .word 0x74BB0851
_022267C4: .word 0x0000A44F
_022267C8: .word 0x76A32842
_022267CC: .word 0x6B901122
_022267D0: .word 0x02678E6D
_022267D4: .word 0x5986BC72
_022267D8: .word 0x49B40821
_022267DC: .word 0x09E1DA9E
_022267E0: .word 0x3FBF4CC0
_022267E4: .word 0x265E5A51
_022267E8: .word 0x16493856
_022267EC: .word 0x29D0EFA3
_022267F0: .word 0x02441453
_022267F4: .word 0x275E197F
_022267F8: .word 0x182C0438
_022267FC: .word 0x21E1CDE6
_02226800: .word 0x3CC8F82A
_02226804: .word 0x0B2AF279
_02226808: .word 0x455A14ED
_0222680C: .word 0x561C16FB
_02226810: .word 0x03105C08
_02226814: .word 0x676F02D9
_02226818: .word 0x72D5B376
_0222681C:
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x18]
	add r4, r3, r4
	ldr r3, _02226B8C ; =0x0005C6BE
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _02226B90 ; =0x788E097F
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x30]
	add r5, r0, r5
	ldr r0, _02226B94 ; =0x6D9D6122
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _02226B98 ; =0x021AC7F4
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #8]
	add r2, r1, r2
	ldr r1, _02226B9C ; =0x5B4115BC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #4
	lsr r1, r1, #0x1c
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x14]
	add r4, r1, r4
	ldr r1, _02226BA0 ; =0x4BDECFA9
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	add r4, r3, r4
	ldr r3, _02226BA4 ; =0x0944B4A0
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x2c]
	add r3, r0, r3
	ldr r0, _02226BA8 ; =0x41404390
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x17
	lsr r0, r0, #9
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _02226BAC ; =0x289B7EC6
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #4]
	add r5, r2, r5
	ldr r2, _02226BB0 ; =0x155ED806
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	add r2, r1, r2
	ldr r1, _02226BB4 ; =0x2B10CF7B
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0x10
	lsr r1, r1, #0x10
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x1c]
	add r4, r1, r4
	ldr r1, _02226BB8 ; =0x04881D05
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x17
	lsr r1, r1, #9
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x28]
	add r4, r3, r4
	ldr r3, _02226BBC ; =0x262B2FC7
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x34]
	add r3, r0, r3
	ldr r0, _02226BC0 ; =0x1924661B
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	mov r0, ip
	add r5, r0, r5
	ldr r0, _02226BC4 ; =0x1FA27CF8
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _02226BC8 ; =0x3B53A99B
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, _02226BCC ; =0x0BD6DDBC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #0x20]
	add r4, r1, r4
	ldr r1, _02226BD0 ; =0x432AFF97
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x40]
	add r4, r3, r4
	ldr r3, _02226BD4 ; =0x546BDC59
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r4, r0, r1
	mvn r0, r2
	orr r0, r4
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0x18]
	add r3, r0, r3
	ldr r0, _02226BD8 ; =0x036C5FC7
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r3
	add r3, r0, r4
	mvn r0, r1
	orr r0, r3
	add r5, r4, #0
	eor r5, r0
	ldr r0, [sp, #0x34]
	add r5, r0, r5
	ldr r0, _02226BDC ; =0x655B59C3
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r2
	add r0, r0, r3
	mvn r2, r4
	orr r2, r0
	add r5, r3, #0
	eor r5, r2
	ldr r2, [sp, #0x10]
	add r5, r2, r5
	ldr r2, _02226BE0 ; =0x70F3336E
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #0x2c]
	add r2, r1, r2
	ldr r1, _02226BE4 ; =0x00100B83
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xf
	lsr r1, r1, #0x11
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #8]
	add r4, r1, r4
	ldr r1, _02226BE8 ; =0x7A7BA22F
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x24]
	add r4, r3, r4
	ldr r3, _02226BEC ; =0x6FA87E4F
	add r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r3
	add r3, r0, r1
	mvn r0, r2
	orr r0, r3
	eor r0, r1
	mov r4, ip
	add r4, r4, r0
	ldr r0, _02226BF0 ; =0x01D31920
	sub r0, r4, r0
	add r0, r5, r0
	lsl r4, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r4
	add r0, r0, r3
	mvn r4, r1
	orr r4, r0
	add r5, r3, #0
	eor r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _02226BF4 ; =0x5CFEBCEC
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xf
	lsr r2, r2, #0x11
	orr r2, r4
	add r4, r2, r0
	mvn r2, r3
	orr r2, r4
	add r5, r0, #0
	eor r5, r2
	ldr r2, [sp, #0x38]
	add r5, r2, r5
	ldr r2, _02226BF8 ; =0x4E0811A1
	add r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r2
	add r2, r1, r4
	mvn r1, r0
	orr r1, r2
	add r5, r4, #0
	eor r5, r1
	ldr r1, [sp, #0x14]
	add r5, r1, r5
	ldr r1, _02226BFC ; =0x08AC817E
	sub r1, r5, r1
	add r1, r3, r1
	lsl r3, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r3
	add r1, r1, r2
	mvn r3, r4
	orr r3, r1
	add r5, r2, #0
	eor r5, r3
	ldr r3, [sp, #0x30]
	add r5, r3, r5
	ldr r3, _02226C00 ; =0x42C50DCB
	sub r3, r5, r3
	add r0, r0, r3
	lsl r3, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r3
	add r5, r0, r1
	mvn r0, r2
	orr r0, r5
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0xc]
	add r3, r0, r3
	ldr r0, _02226C04 ; =0x2AD7D2BB
	add r0, r3, r0
	add r0, r4, r0
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r3, r0, r5
	mvn r0, r1
	orr r0, r3
	add r4, r5, #0
	eor r4, r0
	ldr r0, [sp, #0x28]
	add r4, r0, r4
	ldr r0, _02226C08 ; =0x14792C6F
	sub r0, r4, r0
	add r0, r2, r0
	lsl r2, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r2
	ldr r2, [r7]
	add r0, r0, r3
	add r1, r2, r1
	str r1, [r7]
	ldr r1, [r7, #4]
	mov r2, #0x40
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	mov r1, #0
	add r0, r0, r3
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	add r0, r0, r5
	str r0, [r7, #0xc]
	add r0, sp, #0x44
	bl ov13_02226C7C
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02226B8C: .word 0x0005C6BE
_02226B90: .word 0x788E097F
_02226B94: .word 0x6D9D6122
_02226B98: .word 0x021AC7F4
_02226B9C: .word 0x5B4115BC
_02226BA0: .word 0x4BDECFA9
_02226BA4: .word 0x0944B4A0
_02226BA8: .word 0x41404390
_02226BAC: .word 0x289B7EC6
_02226BB0: .word 0x155ED806
_02226BB4: .word 0x2B10CF7B
_02226BB8: .word 0x04881D05
_02226BBC: .word 0x262B2FC7
_02226BC0: .word 0x1924661B
_02226BC4: .word 0x1FA27CF8
_02226BC8: .word 0x3B53A99B
_02226BCC: .word 0x0BD6DDBC
_02226BD0: .word 0x432AFF97
_02226BD4: .word 0x546BDC59
_02226BD8: .word 0x036C5FC7
_02226BDC: .word 0x655B59C3
_02226BE0: .word 0x70F3336E
_02226BE4: .word 0x00100B83
_02226BE8: .word 0x7A7BA22F
_02226BEC: .word 0x6FA87E4F
_02226BF0: .word 0x01D31920
_02226BF4: .word 0x5CFEBCEC
_02226BF8: .word 0x4E0811A1
_02226BFC: .word 0x08AC817E
_02226C00: .word 0x42C50DCB
_02226C04: .word 0x2AD7D2BB
_02226C08: .word 0x14792C6F
	thumb_func_end ov13_022263C4

