	.include "macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_08
	.public FadeFunc_09
	.public FadeFunc_10
	.public FadeFunc_11
	.extern _020F5D68
	.extern _020F5D80
	.extern _020F5D90
	.extern _020F5DB8
	.extern _0210F64C
	.extern _0210F654
	.extern _0210F684
	.extern _0210F68C
	.extern _0210F694
	.extern sub_0201289C
	.extern sub_020128E0

	.text
	thumb_func_start FadeFunc_08
FadeFunc_08: ; 0x02010288
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020102B0
	ldr r1, _020102B8 ; =_020F5D90
	ldr r0, _020102BC ; =_0210F64C
	str r1, [r0, #8]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020102C0 ; =_0210F654
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020102B0:
	bl sub_020128E0
	pop {r4, pc}
	nop
_020102B8: .word _020F5D90
_020102BC: .word _0210F64C
_020102C0: .word _0210F654
	thumb_func_end FadeFunc_08

	thumb_func_start FadeFunc_09
FadeFunc_09: ; 0x020102C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020102EA
	ldr r1, _020102F0 ; =_020F5D68
	ldr r0, _020102F4 ; =_0210F64C
	str r1, [r0, #0x38]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020102F8 ; =_0210F684
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020102EA:
	bl sub_020128E0
	pop {r4, pc}
	.balign 4, 0
_020102F0: .word _020F5D68
_020102F4: .word _0210F64C
_020102F8: .word _0210F684
	thumb_func_end FadeFunc_09

	thumb_func_start FadeFunc_10
FadeFunc_10: ; 0x020102FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010324
	ldr r1, _0201032C ; =_020F5D80
	ldr r0, _02010330 ; =_0210F64C
	str r1, [r0, #0x48]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010334 ; =_0210F694
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010324:
	bl sub_020128E0
	pop {r4, pc}
	nop
_0201032C: .word _020F5D80
_02010330: .word _0210F64C
_02010334: .word _0210F694
	thumb_func_end FadeFunc_10

	thumb_func_start FadeFunc_11
FadeFunc_11: ; 0x02010338
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201035E
	ldr r1, _02010364 ; =_020F5DB8
	ldr r0, _02010368 ; =_0210F64C
	str r1, [r0, #0x40]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201036C ; =_0210F68C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201035E:
	bl sub_020128E0
	pop {r4, pc}
	.balign 4, 0
_02010364: .word _020F5DB8
_02010368: .word _0210F64C
_0201036C: .word _0210F68C
	thumb_func_end FadeFunc_11

