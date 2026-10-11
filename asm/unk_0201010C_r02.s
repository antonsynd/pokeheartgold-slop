	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_02
	.public FadeFunc_03
	.public FadeFunc_04
	.public FadeFunc_05
	.extern _020F5D58
	.extern _020F5D5C
	.extern _020F5D60
	.extern _020F5D64
	.extern _0210F64C
	.extern _0210F65C
	.extern _0210F66C
	.extern _0210F674
	.extern sub_0201289C
	.extern sub_020128E0

	.text
	thumb_func_start FadeFunc_02
FadeFunc_02: ; 0x02010148
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010170
	ldr r1, _02010178 ; =_020F5D60
	ldr r0, _0201017C ; =_0210F64C
	str r1, [r0]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010180 ; =_0210F64C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010170:
	bl sub_020128E0
	pop {r4, pc}
	nop
_02010178: .word _020F5D60
_0201017C: .word _0210F64C
_02010180: .word _0210F64C
	thumb_func_end FadeFunc_02

	thumb_func_start FadeFunc_03
FadeFunc_03: ; 0x02010184
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020101AA
	ldr r1, _020101B0 ; =_020F5D5C
	ldr r0, _020101B4 ; =_0210F64C
	str r1, [r0, #0x10]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020101B8 ; =_0210F65C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020101AA:
	bl sub_020128E0
	pop {r4, pc}
	.balign 4, 0
_020101B0: .word _020F5D5C
_020101B4: .word _0210F64C
_020101B8: .word _0210F65C
	thumb_func_end FadeFunc_03

	thumb_func_start FadeFunc_04
FadeFunc_04: ; 0x020101BC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020101E4
	ldr r1, _020101EC ; =_020F5D64
	ldr r0, _020101F0 ; =_0210F64C
	str r1, [r0, #0x20]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020101F4 ; =_0210F66C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020101E4:
	bl sub_020128E0
	pop {r4, pc}
	nop
_020101EC: .word _020F5D64
_020101F0: .word _0210F64C
_020101F4: .word _0210F66C
	thumb_func_end FadeFunc_04

	thumb_func_start FadeFunc_05
FadeFunc_05: ; 0x020101F8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201021E
	ldr r1, _02010224 ; =_020F5D58
	ldr r0, _02010228 ; =_0210F64C
	str r1, [r0, #0x28]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201022C ; =_0210F674
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201021E:
	bl sub_020128E0
	pop {r4, pc}
	.balign 4, 0
_02010224: .word _020F5D58
_02010228: .word _0210F64C
_0201022C: .word _0210F674
	thumb_func_end FadeFunc_05

