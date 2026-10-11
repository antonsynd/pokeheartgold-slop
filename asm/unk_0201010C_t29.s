	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_40
	.public FadeFunc_41
	.public FadeFunc_42
	.extern _020F5D98
	.extern _020F5DB0
	.extern _020F5E74
	.extern _0210F64C
	.extern _0210F69C
	.extern _0210F6B4
	.extern sub_02012B1C
	.extern sub_02012B80

	.text
	thumb_func_start FadeFunc_40
FadeFunc_40: ; 0x0201091C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010944
	ldr r1, _0201094C ; =_020F5D98
	ldr r0, _02010950 ; =_0210F64C
	str r1, [r0, #0x5c]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010954 ; =_0210F69C
	add r0, r4, #0
	bl sub_02012B1C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010944:
	bl sub_02012B80
	pop {r4, pc}
	nop
_0201094C: .word _020F5D98
_02010950: .word _0210F64C
_02010954: .word _0210F69C
	thumb_func_end FadeFunc_40

	thumb_func_start FadeFunc_41
FadeFunc_41: ; 0x02010958
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201097E
	ldr r1, _02010984 ; =_020F5DB0
	ldr r0, _02010988 ; =_0210F64C
	str r1, [r0, #0x74]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201098C ; =_0210F6B4
	add r0, r4, #0
	bl sub_02012B1C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201097E:
	bl sub_02012B80
	pop {r4, pc}
	.balign 4, 0
_02010984: .word _020F5DB0
_02010988: .word _0210F64C
_0201098C: .word _0210F6B4
	thumb_func_end FadeFunc_41

	thumb_func_start FadeFunc_42
FadeFunc_42: ; 0x02010990
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020109B2
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020109B8 ; =_020F5E74
	add r0, r4, #0
	bl sub_02012DD8
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020109B2:
	bl sub_02012E10
	pop {r4, pc}
	.balign 4, 0
_020109B8: .word _020F5E74
	thumb_func_end FadeFunc_42

