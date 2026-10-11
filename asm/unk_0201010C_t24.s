	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_30
	.public FadeFunc_31
	.public FadeFunc_32
	.public FadeFunc_33
	.public FadeFunc_34
	.public FadeFunc_35
	.extern _020F5D58
	.extern _020F5D98
	.extern _020F5DF0
	.extern _020F5EBC
	.extern _0210F64C
	.extern _0210F664
	.extern _0210F67C
	.extern sub_020122B8
	.extern sub_020122F8
	.extern sub_020125EC
	.extern sub_0201262C
	.extern sub_0201289C
	.extern sub_020128E0

	.text
	thumb_func_start FadeFunc_30
FadeFunc_30: ; 0x020106E0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010708
	ldr r1, _02010710 ; =_020F5EBC
	ldr r0, _02010714 ; =_0210F64C
	str r1, [r0, #0x30]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010718 ; =_0210F67C
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010708:
	bl sub_020128E0
	pop {r4, pc}
	nop
_02010710: .word _020F5EBC
_02010714: .word _0210F64C
_02010718: .word _0210F67C
	thumb_func_end FadeFunc_30

	thumb_func_start FadeFunc_31
FadeFunc_31: ; 0x0201071C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010742
	ldr r1, _02010748 ; =_020F5DF0
	ldr r0, _0201074C ; =_0210F64C
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010750 ; =_0210F664
	add r0, r4, #0
	bl sub_0201289C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010742:
	bl sub_020128E0
	pop {r4, pc}
	.balign 4, 0
_02010748: .word _020F5DF0
_0201074C: .word _0210F64C
_02010750: .word _0210F664
	thumb_func_end FadeFunc_31

	thumb_func_start FadeFunc_32
FadeFunc_32: ; 0x02010754
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201078E
	ldr r1, _02010798 ; =_020F5D58
	add r0, sp, #0
	ldrh r2, [r1, #0x30]
	strh r2, [r0]
	ldrh r2, [r1, #0x32]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x34]
	ldrh r1, [r1, #0x36]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020122B8
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201078E:
	bl sub_020122F8
	add sp, #8
	pop {r4, pc}
	nop
_02010798: .word _020F5D58
	thumb_func_end FadeFunc_32

	thumb_func_start FadeFunc_33
FadeFunc_33: ; 0x0201079C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020107D4
	ldr r1, _020107DC ; =_020F5D98
	add r0, sp, #0
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	ldrh r1, [r1, #0x2e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020122B8
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020107D4:
	bl sub_020122F8
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_020107DC: .word _020F5D98
	thumb_func_end FadeFunc_33

	thumb_func_start FadeFunc_34
FadeFunc_34: ; 0x020107E0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201081A
	ldr r1, _02010824 ; =_020F5D58
	add r0, sp, #0
	ldrh r2, [r1, #0x20]
	strh r2, [r0]
	ldrh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020125EC
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201081A:
	bl sub_0201262C
	add sp, #8
	pop {r4, pc}
	nop
_02010824: .word _020F5D58
	thumb_func_end FadeFunc_34

	thumb_func_start FadeFunc_35
FadeFunc_35: ; 0x02010828
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010860
	ldr r1, _02010868 ; =_020F5D58
	add r0, sp, #0
	ldrh r2, [r1, #0x18]
	strh r2, [r0]
	ldrh r2, [r1, #0x1a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x1c]
	ldrh r1, [r1, #0x1e]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020125EC
	mov r0, #0
	str r0, [r4, #0x28]
	add sp, #8
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010860:
	bl sub_0201262C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_02010868: .word _020F5D58
	thumb_func_end FadeFunc_35

