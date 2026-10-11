	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_30
	.public FadeFunc_31
	.public FadeFunc_32
	.public FadeFunc_33
	.public FadeFunc_34
	.public FadeFunc_35
	.public FadeFunc_36
	.public FadeFunc_37
	.public FadeFunc_38
	.public FadeFunc_39
	.public FadeFunc_40
	.public FadeFunc_41
	.public FadeFunc_42
	.extern _020F5D58
	.extern _020F5D98
	.extern _020F5DB0
	.extern _020F5DF0
	.extern _020F5DFC
	.extern _020F5E50
	.extern _020F5E74
	.extern _020F5E98
	.extern _020F5EBC
	.extern _020F5EE0
	.extern _0210F64C
	.extern _0210F664
	.extern _0210F67C
	.extern _0210F69C
	.extern _0210F6B4
	.extern sub_0201164C
	.extern sub_0201169C
	.extern sub_02011884
	.extern sub_020118BC
	.extern sub_020122B8
	.extern sub_020122F8
	.extern sub_020125EC
	.extern sub_0201262C
	.extern sub_0201289C
	.extern sub_020128E0
	.extern sub_02012B1C
	.extern sub_02012B80

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

	thumb_func_start FadeFunc_36
FadeFunc_36: ; 0x0201086C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201088E
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010894 ; =_020F5E98
	add r0, r4, #0
	bl sub_02011884
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201088E:
	bl sub_020118BC
	pop {r4, pc}
	.balign 4, 0
_02010894: .word _020F5E98
	thumb_func_end FadeFunc_36

	thumb_func_start FadeFunc_37
FadeFunc_37: ; 0x02010898
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020108B8
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020108C0 ; =_020F5EE0
	add r0, r4, #0
	bl sub_02011884
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020108B8:
	bl sub_020118BC
	pop {r4, pc}
	nop
_020108C0: .word _020F5EE0
	thumb_func_end FadeFunc_37

	thumb_func_start FadeFunc_38
FadeFunc_38: ; 0x020108C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020108E6
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020108EC ; =_020F5DFC
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020108E6:
	bl sub_0201169C
	pop {r4, pc}
	.balign 4, 0
_020108EC: .word _020F5DFC
	thumb_func_end FadeFunc_38

	thumb_func_start FadeFunc_39
FadeFunc_39: ; 0x020108F0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010910
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010918 ; =_020F5E50
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010910:
	bl sub_0201169C
	pop {r4, pc}
	nop
_02010918: .word _020F5E50
	thumb_func_end FadeFunc_39

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

