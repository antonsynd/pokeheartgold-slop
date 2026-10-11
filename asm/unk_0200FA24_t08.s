	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FC60
	.extern _021D0F80
	.extern _021D1034

	.text
	thumb_func_start sub_0200FC60
sub_0200FC60: ; 0x0200FC60
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	add r4, r0, #0
	ldr r0, _0200FCD0 ; =0x0000FFFF
	cmp r2, r0
	bne _0200FC78
	ldr r0, _0200FCD4 ; =_021D1034
	ldrh r0, [r0, #0x10]
	strh r0, [r1, #4]
_0200FC78:
	cmp r4, #0
	add r0, sp, #0x1c
	bne _0200FC88
	mov r1, #0
	mov r2, #2
	bl GX_LoadBGPltt
	b _0200FC90
_0200FC88:
	mov r1, #0
	mov r2, #2
	bl GXS_LoadBGPltt
_0200FC90:
	ldr r0, _0200FCD8 ; =_021D0F80
	mov r1, #1
	add r2, r4, #0
	bl sub_02013424
	mov r2, #0
	ldr r0, _0200FCD8 ; =_021D0F80
	mov r1, #0x3f
	add r3, r2, #0
	str r4, [sp]
	bl sub_02013440
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _0200FCD8 ; =_021D0F80
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_02013488
	ldr r0, _0200FCD8 ; =_021D0F80
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02013468
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
_0200FCD0: .word 0x0000FFFF
_0200FCD4: .word _021D1034
_0200FCD8: .word _021D0F80
	thumb_func_end sub_0200FC60

