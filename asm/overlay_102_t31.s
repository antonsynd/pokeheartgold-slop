	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E87B4
	.public ov102_021E8820
	.public ov102_021E896C
	.public ov102_021E8A34
	.extern ov102_021E7A4C
	.extern ov102_021E7AA4
	.extern ov102_021E8240
	.extern ov102_021E839C
	.extern ov102_021E8B18
	.extern ov102_021E8B40
	.extern ov102_021E8C3C
	.extern ov102_021E8C64
	.extern ov102_021E8CA4
	.extern ov102_021E940C
	.extern ov102_021E9464
	.extern ov102_021E947C
	.extern ov102_021EC5F4

	.text

	.text
	thumb_func_start ov102_021E87B4
ov102_021E87B4: ; 0x021E87B4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r2, [r5]
	add r4, r0, #0
	cmp r2, #3
	bhi _021E881C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E87CC: ; jump table
	.short _021E87D4 - _021E87CC - 2 ; case 0
	.short _021E87DA - _021E87CC - 2 ; case 1
	.short _021E87EC - _021E87CC - 2 ; case 2
	.short _021E8806 - _021E87CC - 2 ; case 3
_021E87D4:
	bl ov102_021E8B18
	b _021E881C
_021E87DA:
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov102_021E947C
	cmp r0, #0
	beq _021E881C
	mov r0, #0
	str r0, [r5]
	b _021E881C
_021E87EC:
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov102_021E947C
	cmp r0, #0
	beq _021E881C
	ldr r0, [r4, #0x14]
	mov r1, #0x12
	bl ov102_021E940C
	mov r0, #0
	str r0, [r5]
	b _021E881C
_021E8806:
	ldr r0, [r4, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E881C
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov102_021E7A4C
	mov r0, #0
	str r0, [r5]
_021E881C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E87B4

	thumb_func_start ov102_021E8820
ov102_021E8820: ; 0x021E8820
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r1, #0
	cmp r0, #0
	bne _021E8836
	add r1, r5, #0
	add r1, #0x6b
	ldrb r1, [r1]
	cmp r1, #0
	bne _021E884C
_021E8836:
	cmp r0, #1
	bne _021E8844
	add r1, r5, #0
	add r1, #0x6b
	ldrb r1, [r1]
	cmp r1, #1
	bne _021E884C
_021E8844:
	ldrh r2, [r5, #0x30]
	mov r1, #4
	tst r1, r2
	beq _021E8880
_021E884C:
	ldr r0, _021E8958 ; =0x000005E4
	bl PlaySE
	mov r0, #4
	str r0, [r5, #0x38]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x6b
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x6b
	strb r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl ov102_021E940C
	ldr r0, _021E895C ; =ov102_021E8240
	str r0, [r5, #0x24]
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8880:
	cmp r0, #2
	bne _021E888E
	add r0, r5, #0
	add r0, #0x54
	bl ov102_021E8C3C
	b _021E88A6
_021E888E:
	cmp r0, #3
	bne _021E889C
	add r0, r5, #0
	add r0, #0x54
	bl ov102_021E8C64
	b _021E88A6
_021E889C:
	ldrh r1, [r5, #0x34]
	add r0, r5, #0
	add r0, #0x54
	bl ov102_021E8B40
_021E88A6:
	cmp r0, #1
	beq _021E88B4
	cmp r0, #2
	beq _021E88C4
	cmp r0, #3
	beq _021E88D8
	b _021E88EC
_021E88B4:
	ldr r0, _021E8960 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0x12
	bl ov102_021E940C
	pop {r3, r4, r5, pc}
_021E88C4:
	ldr r0, _021E8960 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0x13
	bl ov102_021E940C
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E88D8:
	ldr r0, _021E8960 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0x13
	bl ov102_021E940C
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E88EC:
	ldrh r1, [r5, #0x30]
	mov r0, #2
	tst r0, r1
	beq _021E890C
	ldr r0, _021E8960 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl ov102_021E940C
	ldr r0, _021E895C ; =ov102_021E8240
	str r0, [r5, #0x24]
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E890C:
	mov r0, #1
	tst r0, r1
	beq _021E8956
	add r0, r5, #0
	add r0, #0x60
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, _021E8960 ; =0x000005DC
	beq _021E8934
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl ov102_021E940C
	ldr r0, _021E895C ; =ov102_021E8240
	str r0, [r5, #0x24]
	mov r0, #3
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8934:
	bl PlaySE
	add r0, r5, #0
	ldr r1, _021E8964 ; =0x0000FFFF
	add r0, #0x62
	strh r1, [r0]
	add r0, r5, #0
	bl ov102_021E8CA4
	ldr r0, _021E8968 ; =ov102_021E7AA4
	mov r1, #0xd
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x14]
	bl ov102_021E940C
	mov r0, #3
	str r0, [r4]
_021E8956:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8958: .word 0x000005E4
_021E895C: .word ov102_021E8240
_021E8960: .word 0x000005DC
_021E8964: .word 0x0000FFFF
_021E8968: .word ov102_021E7AA4
	thumb_func_end ov102_021E8820

	thumb_func_start ov102_021E896C
ov102_021E896C: ; 0x021E896C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E8980
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E8980:
	ldr r0, _021E8A2C ; =ov102_021EC5F4
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	beq _021E8990
	cmp r0, #1
	beq _021E899C
	b _021E89A8
_021E8990:
	add r7, #0x54
	add r0, r7, #0
	bl ov102_021E8C3C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E899C:
	add r7, #0x54
	add r0, r7, #0
	bl ov102_021E8C64
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E89A8:
	add r0, r7, #0
	add r0, #0x54
	ldrh r0, [r0]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x10
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x30
	str r0, [sp]
_021E89BC:
	ldr r1, [sp]
	add r0, sp, #0xc
	strb r1, [r0]
	ldrb r1, [r0]
	mov r6, #0
	mov r5, #0x20
	add r1, #0x10
	strb r1, [r0, #1]
_021E89CC:
	add r0, sp, #0xc
	strb r5, [r0, #2]
	ldrb r1, [r0, #2]
	ldr r2, _021E8A30 ; =gSystem + 0x40
	add r1, #0x48
	strb r1, [r0, #3]
	ldr r1, _021E8A30 ; =gSystem + 0x40
	ldrh r2, [r2, #0x22]
	ldrh r1, [r1, #0x20]
	add r0, sp, #0xc
	bl TouchscreenHitbox_PointIsIn
	cmp r0, #0
	beq _021E89F2
	add r7, #0x62
	add sp, #0x10
	strh r4, [r7]
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_021E89F2:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	add r0, #0x58
	ldrh r0, [r0]
	cmp r4, r0
	blo _021E8A08
	mov r0, #1
	str r0, [sp, #4]
	b _021E8A10
_021E8A08:
	add r6, r6, #1
	add r5, #0x68
	cmp r6, #2
	blt _021E89CC
_021E8A10:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021E8A26
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _021E89BC
_021E8A26:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8A2C: .word ov102_021EC5F4
_021E8A30: .word gSystem + 0x40
	thumb_func_end ov102_021E896C

	thumb_func_start ov102_021E8A34
ov102_021E8A34: ; 0x021E8A34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov102_021E839C
	cmp r0, #1
	beq _021E8A48
	cmp r0, #2
	beq _021E8A60
	b _021E8A90
_021E8A48:
	ldr r0, _021E8B08 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl ov102_021E940C
	ldr r0, _021E8B0C ; =ov102_021E8240
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8A60:
	ldr r0, _021E8B10 ; =0x000005E4
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x6b
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x6b
	strb r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl ov102_021E940C
	ldr r0, _021E8B0C ; =ov102_021E8240
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8A90:
	add r0, r4, #0
	bl ov102_021E896C
	cmp r0, #5
	bhi _021E8B06
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8AA6: ; jump table
	.short _021E8B06 - _021E8AA6 - 2 ; case 0
	.short _021E8AD0 - _021E8AA6 - 2 ; case 1
	.short _021E8AE0 - _021E8AA6 - 2 ; case 2
	.short _021E8AF4 - _021E8AA6 - 2 ; case 3
	.short _021E8B06 - _021E8AA6 - 2 ; case 4
	.short _021E8AB2 - _021E8AA6 - 2 ; case 5
_021E8AB2:
	ldr r0, _021E8B08 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov102_021E8CA4
	ldr r0, _021E8B14 ; =ov102_021E7AA4
	mov r1, #0xd
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	bl ov102_021E940C
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8AD0:
	ldr r0, _021E8B08 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #0x12
	bl ov102_021E940C
	pop {r3, r4, r5, pc}
_021E8AE0:
	ldr r0, _021E8B08 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov102_021E940C
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8AF4:
	ldr r0, _021E8B08 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov102_021E940C
	mov r0, #2
	str r0, [r5]
_021E8B06:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8B08: .word 0x000005DC
_021E8B0C: .word ov102_021E8240
_021E8B10: .word 0x000005E4
_021E8B14: .word ov102_021E7AA4
	thumb_func_end ov102_021E8A34

