	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7968
	.public ov102_021E79A0
	.public ov102_021E79DC
	.public ov102_021E7A58
	.public ov102_021E7C84
	.public ov102_021E7D0C
	.public ov102_021E7D30
	.public ov102_021E7DBC
	.public ov102_021E7EEC
	.public ov102_021E7F30
	.public ov102_021E7F6C
	.public ov102_021E80BC
	.public ov102_021E940C
	.public ov102_021EA228
	.public ov102_021EA238
	.public ov102_021EA248
	.public ov102_021EC634

	.text

	thumb_func_start ov102_021E7D0C
ov102_021E7D0C: ; 0x021E7D0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #0
	bne _021E7D24
	bl ov102_021E7A58
	cmp r0, #0
	beq _021E7D24
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7D24:
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E7C84
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E7D0C

	thumb_func_start ov102_021E7D30
ov102_021E7D30: ; 0x021E7D30
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #4
	bhi _021E7DB4
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7D44: ; jump table
	.short _021E7D62 - _021E7D44 - 2 ; case 0
	.short _021E7D58 - _021E7D44 - 2 ; case 1
	.short _021E7D4E - _021E7D44 - 2 ; case 2
	.short _021E7D8A - _021E7D44 - 2 ; case 3
	.short _021E7D9A - _021E7D44 - 2 ; case 4
_021E7D4E:
	ldr r0, _021E7DB8 ; =0x000005DC
	bl PlaySE
	mov r0, #4
	pop {r4, pc}
_021E7D58:
	ldr r0, _021E7DB8 ; =0x000005DC
	bl PlaySE
	mov r0, #3
	pop {r4, pc}
_021E7D62:
	ldr r0, [r4, #0x14]
	bl ov102_021EA238
	cmp r0, #0
	bne _021E7D70
	mov r0, #1
	pop {r4, pc}
_021E7D70:
	ldr r0, _021E7DB8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ov102_021E940C
	mov r0, #6
	pop {r4, pc}
_021E7D8A:
	ldr r0, _021E7DB8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	b _021E7DB4
_021E7D9A:
	ldr r0, _021E7DB8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4e
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ov102_021E940C
	mov r0, #2
	pop {r4, pc}
_021E7DB4:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021E7DB8: .word 0x000005DC
	thumb_func_end ov102_021E7D30

	thumb_func_start ov102_021E7DBC
ov102_021E7DBC: ; 0x021E7DBC
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x30]
	mov r1, #2
	add r3, r2, #0
	tst r3, r1
	beq _021E7DE0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #2
	bl ov102_021E7D30
	pop {r4, pc}
_021E7DE0:
	mov r1, #1
	add r3, r2, #0
	tst r3, r1
	beq _021E7DF2
	add r4, #0x4c
	ldrh r1, [r4]
	bl ov102_021E7D30
	pop {r4, pc}
_021E7DF2:
	mov r3, #0x40
	tst r3, r2
	beq _021E7E42
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	beq _021E7E16
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r4, #0x4c
	sub r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E16:
	add r1, r4, #0
	add r1, #0x6a
	ldrb r1, [r1]
	cmp r1, #0
	beq _021E7E3E
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	beq _021E7E3E
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	add r4, #0x4e
	sub r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E3E:
	mov r0, #1
	pop {r4, pc}
_021E7E42:
	mov r3, #0x80
	tst r2, r3
	beq _021E7EAE
	add r2, r4, #0
	add r2, #0x4c
	ldrh r2, [r2]
	cmp r2, #0
	bne _021E7E92
	add r1, r4, #0
	add r1, #0x6a
	ldrb r1, [r1]
	cmp r1, #2
	bne _021E7E7A
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	bne _021E7E7A
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	add r4, #0x4e
	add r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E7A:
	add r0, r4, #0
	add r0, #0x4c
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7E92:
	cmp r2, #1
	bne _021E7EAA
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r4, #0x4c
	add r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7D30
	pop {r4, pc}
_021E7EAA:
	add r0, r1, #0
	pop {r4, pc}
_021E7EAE:
	ldrh r2, [r4, #0x34]
	mov r0, #0x20
	tst r0, r2
	beq _021E7ECC
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E79A0
	add r0, r4, #0
	mov r1, #4
	bl ov102_021E7D30
	pop {r4, pc}
_021E7ECC:
	mov r0, #0x10
	tst r0, r2
	beq _021E7EE8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E7968
	add r0, r4, #0
	mov r1, #4
	bl ov102_021E7D30
	pop {r4, pc}
_021E7EE8:
	add r0, r1, #0
	pop {r4, pc}
	thumb_func_end ov102_021E7DBC

	thumb_func_start ov102_021E7EEC
ov102_021E7EEC: ; 0x021E7EEC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl System_GetTouchHeld
	cmp r0, #0
	bne _021E7EFE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7EFE:
	ldr r0, _021E7F2C ; =gSystem + 0x40
	ldrh r2, [r0, #0x20]
	add r1, r2, #0
	sub r1, #0xa
	cmp r5, r1
	blt _021E7F10
	add r2, #0xa
	cmp r5, r2
	ble _021E7F14
_021E7F10:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7F14:
	ldrh r1, [r0, #0x22]
	add r0, r1, #0
	sub r0, #0xc
	cmp r4, r0
	blt _021E7F24
	add r1, #0xc
	cmp r4, r1
	ble _021E7F28
_021E7F24:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7F28:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7F2C: .word gSystem + 0x40
	thumb_func_end ov102_021E7EEC

	thumb_func_start ov102_021E7F30
ov102_021E7F30: ; 0x021E7F30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl System_GetTouchHeld
	cmp r0, #0
	bne _021E7F42
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7F42:
	cmp r5, #0x12
	blt _021E7F4A
	cmp r5, #0xec
	ble _021E7F4E
_021E7F4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7F4E:
	ldr r0, _021E7F68 ; =gSystem + 0x40
	ldrh r1, [r0, #0x22]
	add r0, r1, #0
	sub r0, #0x18
	cmp r4, r0
	blt _021E7F60
	add r1, #0x18
	cmp r4, r1
	ble _021E7F64
_021E7F60:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E7F64:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7F68: .word gSystem + 0x40
	thumb_func_end ov102_021E7F30

	thumb_func_start ov102_021E7F6C
ov102_021E7F6C: ; 0x021E7F6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl ov102_021EA228
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	add r6, r0, #0
	bl Sprite_GetPositionXY
	add r0, r5, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _021E8020
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, #0
	bl ov102_021E7F30
	cmp r0, #0
	bne _021E7FAE
	mov r0, #0
	add r5, #0x6c
	strb r0, [r5]
	add sp, #8
	sub r0, r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7FAE:
	ldr r1, _021E80B0 ; =gSystem + 0x40
	mov r0, #0x20
	ldrsh r4, [r1, r0]
	cmp r4, #0x1c
	bge _021E7FBC
	mov r4, #0x1c
	b _021E7FC2
_021E7FBC:
	cmp r4, #0xe2
	ble _021E7FC2
	mov r4, #0xe2
_021E7FC2:
	mov r0, #0x6e
	ldrsh r0, [r5, r0]
	sub r0, r4, r0
	bpl _021E7FCC
	neg r0, r0
_021E7FCC:
	cmp r0, #2
	bge _021E7FD8
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E7FD8:
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r0, r6, #0
	add r1, r4, #0
	bl Sprite_SetPositionXY
	add r0, r5, #0
	add r0, #0x6e
	strh r4, [r0]
	sub r4, #0x1c
	add r0, r5, #0
	lsr r2, r4, #0x1f
	add r2, r4, r2
	lsl r2, r2, #0x17
	mov r1, #0
	add r0, #0x4e
	strh r1, [r0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x64
	add r1, #8
	lsr r2, r2, #0x18
	bl ov102_021E79DC
	ldr r0, _021E80B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #3
	bl ov102_021E940C
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E8020:
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E8030
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E8030:
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, #0
	bl ov102_021E7EEC
	cmp r0, #0
	beq _021E8060
	ldr r0, _021E80B0 ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	add r0, r5, #0
	add r0, #0x6e
	strh r1, [r0]
	mov r0, #1
	add r5, #0x6c
	strb r0, [r5]
	ldr r0, _021E80B4 ; =0x000005DC
	bl PlaySE
	add sp, #8
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021E8060:
	ldr r0, _021E80B8 ; =ov102_021EC634
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E80AC
	ldr r0, [r5, #0x14]
	bl ov102_021EA238
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _021E80A8
	add r7, sp, #4
_021E807E:
	lsl r2, r4, #0x18
	ldr r0, [r5, #0x14]
	add r1, r7, #0
	lsr r2, r2, #0x18
	bl ov102_021EA248
	ldr r1, _021E80B0 ; =gSystem + 0x40
	ldr r2, _021E80B0 ; =gSystem + 0x40
	ldrh r1, [r1, #0x20]
	ldrh r2, [r2, #0x22]
	add r0, r7, #0
	bl TouchscreenHitbox_PointIsIn
	cmp r0, #0
	beq _021E80A2
	add sp, #8
	add r0, r4, #4
	pop {r3, r4, r5, r6, r7, pc}
_021E80A2:
	add r4, r4, #1
	cmp r4, r6
	blt _021E807E
_021E80A8:
	mov r0, #0
	mvn r0, r0
_021E80AC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E80B0: .word gSystem + 0x40
_021E80B4: .word 0x000005DC
_021E80B8: .word ov102_021EC634
	thumb_func_end ov102_021E7F6C

	thumb_func_start ov102_021E80BC
ov102_021E80BC: ; 0x021E80BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov102_021E7F6C
	add r5, r0, #0
	cmp r5, #6
	bhi _021E8170
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E80D6: ; jump table
	.short _021E80E4 - _021E80D6 - 2 ; case 0
	.short _021E80E4 - _021E80D6 - 2 ; case 1
	.short _021E8106 - _021E80D6 - 2 ; case 2
	.short _021E8106 - _021E80D6 - 2 ; case 3
	.short _021E813E - _021E80D6 - 2 ; case 4
	.short _021E813E - _021E80D6 - 2 ; case 5
	.short _021E8160 - _021E80D6 - 2 ; case 6
_021E80E4:
	ldr r0, _021E8174 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #1
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	add r4, #0x4c
	ldrh r1, [r4]
	bl ov102_021E7D30
	pop {r3, r4, r5, pc}
_021E8106:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	cmp r5, #2
	bne _021E8128
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E79A0
	b _021E8134
_021E8128:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E7968
_021E8134:
	add r0, r4, #0
	mov r1, #4
	bl ov102_021E7D30
	pop {r3, r4, r5, pc}
_021E813E:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	add r0, r4, #0
	sub r1, r5, #4
	add r0, #0x4e
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #0
	bl ov102_021E7D30
	pop {r3, r4, r5, pc}
_021E8160:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
_021E8170:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8174: .word 0x000005DC
	thumb_func_end ov102_021E80BC

