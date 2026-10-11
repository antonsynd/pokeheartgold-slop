	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221428
	.public ov13_02221454
	.public ov13_022214AC
	.public ov13_022214B8
	.public ov13_022214C4
	.extern _0224CF98
	.extern ov13_022208F8
	.extern ov13_022216BC
	.extern ov13_02222968
	.extern ov13_02222978
	.extern ov13_02222A9C
	.extern ov13_0224CFB8
	.extern ov13_0224CFBC
	.extern ov13_0224D660
	.extern ov13_0224D790
	.extern ov13_0224D8C0
	.extern ov13_0224D930
	.extern ov13_0224DCF8

	.text

	.text
	thumb_func_start ov13_02221428
ov13_02221428: ; 0x02221428
	push {r3, lr}
	ldr r0, _02221450 ; =_0224CF98
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _0222143C
	bl ov13_022208F8
	ldr r0, _02221450 ; =_0224CF98
	mov r1, #0
	str r1, [r0, #0xc]
_0222143C:
	ldr r0, _02221450 ; =_0224CF98
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0222144E
	bl ov13_022208F8
	ldr r0, _02221450 ; =_0224CF98
	mov r1, #0
	str r1, [r0, #4]
_0222144E:
	pop {r3, pc}
	.balign 4, 0
_02221450: .word _0224CF98
	thumb_func_end ov13_02221428

	thumb_func_start ov13_02221454
ov13_02221454: ; 0x02221454
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02221498 ; =ov13_0224DCF8
	mov r1, #0
	mov r2, #8
	bl ov13_02222978
	ldr r0, _0222149C ; =_0224CF98
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, _022214A0 ; =ov13_0224CFBC
	mov r1, #0
	mov r2, #0x1c
	bl ov13_02222978
	ldr r1, _0222149C ; =_0224CF98
	add r0, r4, #6
	str r0, [r1, #0x24]
	ldrh r0, [r4, #4]
	mov r3, #0
	str r0, [r1, #0x28]
	ldrh r2, [r4]
	mov r0, #0xf
	and r0, r2
	str r0, [r1, #0x2c]
	ldrb r2, [r4, #2]
	ldr r0, _022214A4 ; =ov13_0224CFB8
	strb r2, [r0, #0x1d]
	ldr r2, _022214A8 ; =0xC0A80B01
	str r3, [r1, #0x30]
	str r2, [r1, #0x34]
	strb r3, [r0, #0x1c]
	pop {r4, pc}
	nop
_02221498: .word ov13_0224DCF8
_0222149C: .word _0224CF98
_022214A0: .word ov13_0224CFBC
_022214A4: .word ov13_0224CFB8
_022214A8: .word 0xC0A80B01
	thumb_func_end ov13_02221454

	thumb_func_start ov13_022214AC
ov13_022214AC: ; 0x022214AC
	ldr r1, _022214B4 ; =_0224CF98
	str r0, [r1, #0x10]
	bx lr
	nop
_022214B4: .word _0224CF98
	thumb_func_end ov13_022214AC

	thumb_func_start ov13_022214B8
ov13_022214B8: ; 0x022214B8
	ldr r0, _022214C0 ; =_0224CF98
	ldr r0, [r0, #0x10]
	bx lr
	nop
_022214C0: .word _0224CF98
	thumb_func_end ov13_022214B8

	thumb_func_start ov13_022214C4
ov13_022214C4: ; 0x022214C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _0222169C ; =ov13_0224D8C0
	ldr r2, _022216A0 ; =0x00000117
	str r0, [sp, #4]
	ldr r0, _022216A4 ; =ov13_0224D930
	add r4, r7, r2
	ldr r6, _022216A8 ; =ov13_0224D660
	ldr r5, _022216AC ; =ov13_0224D790
	str r0, [sp]
	bne _022214E4
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022214E4:
	ldr r1, _022216B0 ; =_0224CF98
	add r2, #0x3d
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x30]
	and r0, r1
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #0
	bl ov13_02222978
	ldrh r1, [r7]
	mov r0, #1
	tst r0, r1
	beq _02221562
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #0
	add r1, #0x30
	bl ov13_02222968
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #6
	add r1, #0x70
	bl ov13_02222968
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0xc
	add r1, #0xb0
	bl ov13_02222968
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0x12
	add r1, #0xf0
	bl ov13_02222968
	add r0, r6, #0
	add r0, #8
	bl ov13_02222A9C
	add r1, r0, #0
	add r0, r6, #0
	add r0, #8
	bl ov13_022216BC
	cmp r0, #0
	beq _0222154C
	b _02221688
_0222154C:
	add r0, r6, #0
	add r0, #8
	bl ov13_02222A9C
	add r2, r0, #0
	add r0, r4, #0
	add r6, #8
	add r0, #0x18
	add r1, r6, #0
	bl ov13_02222968
_02221562:
	ldrh r1, [r7]
	mov r0, #2
	tst r0, r1
	beq _022215CE
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x39
	add r1, #0x30
	bl ov13_02222968
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x47
	add r1, #0x70
	bl ov13_02222968
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x55
	add r1, #0xb0
	bl ov13_02222968
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x63
	add r1, #0xf0
	bl ov13_02222968
	add r0, r5, #0
	add r0, #8
	bl ov13_02222A9C
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl ov13_022216BC
	cmp r0, #0
	bne _02221688
	add r0, r5, #0
	add r0, #8
	bl ov13_02222A9C
	add r2, r0, #0
	add r0, r4, #0
	add r5, #8
	add r0, #0x71
	add r1, r5, #0
	bl ov13_02222968
_022215CE:
	ldrh r1, [r7]
	mov r0, #4
	tst r0, r1
	beq _02221626
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	add r0, #0x30
	sub r1, r1, #1
	bl ov13_022216BC
	cmp r0, #0
	bne _02221688
	ldr r2, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0x92
	add r1, #0x30
	bl ov13_02222968
	ldr r0, [sp, #4]
	add r0, #8
	bl ov13_02222A9C
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r0, #8
	bl ov13_022216BC
	cmp r0, #0
	bne _02221688
	ldr r0, [sp, #4]
	add r0, #8
	bl ov13_02222A9C
	ldr r1, [sp, #4]
	add r2, r0, #0
	add r0, r4, #0
	add r1, #8
	add r0, #0xd2
	str r1, [sp, #4]
	bl ov13_02222968
_02221626:
	ldrh r1, [r7]
	mov r0, #8
	tst r0, r1
	beq _0222167E
	ldr r1, [sp]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	add r0, #0x30
	sub r1, r1, #1
	bl ov13_022216BC
	cmp r0, #0
	bne _02221688
	ldr r2, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0xf3
	add r1, #0x30
	bl ov13_02222968
	ldr r0, [sp]
	add r0, #8
	bl ov13_02222A9C
	add r1, r0, #0
	ldr r0, [sp]
	add r0, #8
	bl ov13_022216BC
	cmp r0, #0
	bne _02221688
	ldr r0, [sp]
	add r0, #8
	bl ov13_02222A9C
	add r2, r0, #0
	ldr r0, _022216B4 ; =0x00000133
	ldr r1, [sp]
	add r0, r4, r0
	add r1, #8
	str r1, [sp]
	bl ov13_02222968
_0222167E:
	ldr r1, _022216B8 ; =0x00000116
	mov r0, #0
	add sp, #8
	strb r0, [r7, r1]
	pop {r3, r4, r5, r6, r7, pc}
_02221688:
	mov r2, #0x55
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl ov13_02222978
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222169C: .word ov13_0224D8C0
_022216A0: .word 0x00000117
_022216A4: .word ov13_0224D930
_022216A8: .word ov13_0224D660
_022216AC: .word ov13_0224D790
_022216B0: .word _0224CF98
_022216B4: .word 0x00000133
_022216B8: .word 0x00000116
	thumb_func_end ov13_022214C4

