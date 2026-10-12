	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221428
	.public ov13_02221454
	.extern _0224CF98
	.extern ov13_022208F8
	.extern ov13_02222978
	.extern ov13_0224CFB8
	.extern ov13_0224CFBC
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

