	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A9E4
	.public ov59_0223AA6C
	.public ov59_0223AABC
	.public ov59_0223AB00
	.public ov59_0223AB3C
	.public ov59_0223AB90
	.public ov59_0223ACD0
	.public ov59_0223AD20
	.public ov59_0223AD58
	.public ov59_0223AD84
	.public ov59_0223AE20
	.public ov59_0223AE88

	.text

	thumb_func_start ov59_0223A9E4
ov59_0223A9E4: ; 0x0223A9E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	bl MenuInputStateMgr_GetState
	str r0, [r5, #0x44]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x18]
	str r0, [r5, #8]
	bl Save_PlayerData_GetOptionsAddr
	add r4, r0, #0
	bl Options_GetTextFrameDelay
	add r1, r5, #0
	add r1, #0x4b
	strb r0, [r1]
	add r0, r4, #0
	bl Options_GetFrame
	add r1, r5, #0
	add r1, #0x4c
	strb r0, [r1]
	ldr r0, [r5, #8]
	bl Save_ApricornBox_Get
	str r0, [r5, #0x14]
	ldr r1, [r5, #4]
	add r2, r5, #0
	ldr r1, [r1, #0x14]
	add r2, #0x18
	bl sub_02031CEC
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x18
	add r1, #0x20
	bl sub_02031DA0
	add r0, r5, #0
	bl ov59_0223AE20
	add r0, r5, #0
	add r0, #0x49
	ldrb r4, [r0]
	mov r1, #0
	cmp r4, #0
	ble _0223AA68
	ldr r0, [r5, #4]
	add r2, r5, #0
	ldrb r3, [r0, #0x1c]
_0223AA50:
	add r0, r2, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r3, r0
	bne _0223AA60
	add r5, #0x4a
	strb r1, [r5]
	pop {r3, r4, r5, pc}
_0223AA60:
	add r1, r1, #1
	add r2, #0x34
	cmp r1, r4
	blt _0223AA50
_0223AA68:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov59_0223A9E4

	thumb_func_start ov59_0223AA6C
ov59_0223AA6C: ; 0x0223AA6C
	push {r4, lr}
	add r4, r0, #0
	bl ov59_0223AE88
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x44]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	bl MenuInputStateMgr_SetState
	add r0, r4, #0
	add r0, #0x4a
	ldrb r1, [r0]
	mov r0, #0x34
	mul r0, r1
	add r0, r4, r0
	add r0, #0x84
	ldrb r1, [r0]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x1c]
	add r0, r4, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223AAA2
	mov r1, #1
	b _0223AAA4
_0223AAA2:
	mov r1, #3
_0223AAA4:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x18]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0223AAB8
	add r4, #0x48
	ldrb r0, [r4]
	strh r0, [r1]
_0223AAB8:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223AA6C

	thumb_func_start ov59_0223AABC
ov59_0223AABC: ; 0x0223AABC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x40
	ldrh r1, [r1]
	cmp r1, #0
	beq _0223AAD0
	cmp r1, #1
	beq _0223AAE2
	b _0223AAFA
_0223AAD0:
	bl ov59_0223AD20
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r4, #0x40
	add r0, r0, #1
	strh r0, [r4]
	b _0223AAFA
_0223AAE2:
	bl ov59_0223AD84
	bl sub_020210BC
	mov r0, #1
	bl sub_02021148
	mov r0, #0
	add r4, #0x40
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0223AAFA:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223AABC

	thumb_func_start ov59_0223AB00
ov59_0223AB00: ; 0x0223AB00
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _0223AB10
	cmp r0, #1
	b _0223AB28
_0223AB10:
	bl sub_02021238
	add r0, r4, #0
	bl ov59_0223AD58
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r4, #0x40
	add r0, r0, #1
	strh r0, [r4]
	b _0223AB36
_0223AB28:
	bl ov59_0223ACD0
	mov r0, #0
	add r4, #0x40
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0223AB36:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223AB00

	thumb_func_start ov59_0223AB3C
ov59_0223AB3C: ; 0x0223AB3C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _0223AB50
	cmp r0, #1
	beq _0223AB74
	b _0223AB88
_0223AB50:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r4, #0x40
	add r0, r0, #1
	strh r0, [r4]
	b _0223AB88
_0223AB74:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223AB88
	mov r0, #0
	add r4, #0x40
	strh r0, [r4]
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, pc}
_0223AB88:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223AB3C

	thumb_func_start ov59_0223AB90
ov59_0223AB90: ; 0x0223AB90
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _0223ABA4
	cmp r0, #1
	beq _0223ABCA
	b _0223ABDE
_0223ABA4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r4, #0x40
	add r0, r0, #1
	strh r0, [r4]
	b _0223ABDE
_0223ABCA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223ABDE
	mov r0, #0
	add r4, #0x40
	strh r0, [r4]
	add sp, #0xc
	mov r0, #8
	pop {r3, r4, pc}
_0223ABDE:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov59_0223AB90

