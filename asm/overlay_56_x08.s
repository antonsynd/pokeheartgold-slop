	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E5DA4
	.public ov56_021E5DDC
	.public ov56_021E5EFC
	.extern ov56_021E5CE0
	.extern ov56_021E6E20

	.text

	.text
	thumb_func_start ov56_021E5DA4
ov56_021E5DA4: ; 0x021E5DA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E5DD4 ; =gSystem
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _021E5DB6
	mov r0, #0
	strb r0, [r4, #0xa]
	b _021E5DC8
_021E5DB6:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _021E5DC4
	mov r0, #1
	strb r0, [r4, #0xa]
	b _021E5DC8
_021E5DC4:
	mov r0, #0
	pop {r4, pc}
_021E5DC8:
	ldr r0, _021E5DD8 ; =0x000005E3
	bl PlaySE
	mov r0, #1
	pop {r4, pc}
	nop
_021E5DD4: .word gSystem
_021E5DD8: .word 0x000005E3
	thumb_func_end ov56_021E5DA4

	thumb_func_start ov56_021E5DDC
ov56_021E5DDC: ; 0x021E5DDC
	push {r3, r4, r5, lr}
	ldr r1, _021E5EEC ; =gSystem
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	add r5, r2, #0
	mov r3, #0
	tst r5, r1
	beq _021E5E52
	ldrb r1, [r4, #0x11]
	cmp r1, #3
	bne _021E5E38
	ldrb r1, [r4, #0x12]
	cmp r1, #0
	bne _021E5E2A
	bl ov56_021E5CE0
	cmp r0, #0
	beq _021E5E10
	ldr r0, _021E5EF0 ; =0x000005DD
	bl PlaySE
	mov r0, #2
	strb r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5E10:
	ldr r0, [r4, #0x1c]
	mov r1, #3
	strh r1, [r0]
	ldr r0, _021E5EF4 ; =0x000005E3
	bl PlaySE
	ldr r0, [r4, #0x1c]
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #3]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5E2A:
	ldr r0, _021E5EF0 ; =0x000005DD
	bl PlaySE
	mov r0, #3
	strb r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5E38:
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #2]
	ldr r1, [r4, #0x1c]
	ldrb r0, [r1, #2]
	strh r0, [r1]
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #3]
	ldr r0, _021E5EF0 ; =0x000005DD
	bl PlaySE
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5E52:
	mov r0, #2
	tst r0, r2
	beq _021E5E66
	ldr r0, _021E5EF0 ; =0x000005DD
	bl PlaySE
	mov r0, #3
	strb r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5E66:
	mov r0, #8
	tst r0, r2
	beq _021E5E76
	mov r0, #3
	strb r0, [r4, #0x11]
	strb r3, [r4, #0x12]
	add r3, r1, #0
	b _021E5EC8
_021E5E76:
	mov r0, #0x80
	tst r0, r2
	beq _021E5E92
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r0, r3, r2
	strb r0, [r4, #0x11]
	add r3, r1, #0
	b _021E5EC8
_021E5E92:
	mov r0, #0x40
	tst r0, r2
	beq _021E5EAE
	ldrb r0, [r4, #0x11]
	add r0, r0, #3
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r0, r3, r2
	strb r0, [r4, #0x11]
	add r3, r1, #0
	b _021E5EC8
_021E5EAE:
	mov r0, #0x30
	tst r0, r2
	beq _021E5EC4
	ldrb r0, [r4, #0x11]
	cmp r0, #3
	bne _021E5EC8
	ldrb r0, [r4, #0x12]
	add r3, r1, #0
	eor r0, r1
	strb r0, [r4, #0x12]
	b _021E5EC8
_021E5EC4:
	add r0, r3, #0
	pop {r3, r4, r5, pc}
_021E5EC8:
	cmp r3, #0
	bne _021E5ED0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5ED0:
	ldr r0, _021E5EF8 ; =0x000005DC
	bl PlaySE
	ldrb r1, [r4, #0x11]
	cmp r1, #3
	bne _021E5EE4
	ldrb r0, [r4, #0x12]
	add r0, r1, r0
	strb r0, [r4, #0x16]
	b _021E5EE6
_021E5EE4:
	strb r1, [r4, #0x16]
_021E5EE6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E5EEC: .word gSystem
_021E5EF0: .word 0x000005DD
_021E5EF4: .word 0x000005E3
_021E5EF8: .word 0x000005DC
	thumb_func_end ov56_021E5DDC

	thumb_func_start ov56_021E5EFC
ov56_021E5EFC: ; 0x021E5EFC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021E5FA4 ; =ov56_021E6E20
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021E5F18
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5F18:
	mov r1, #1
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _021E5FA8 ; =gSystem + 0x40
	ldr r0, [r5, #0x18]
	ldrh r2, [r3, #0x20]
	ldrh r3, [r3, #0x22]
	mov r1, #2
	bl DoesPixelAtScreenXYMatchPtrVal
	cmp r0, #1
	bne _021E5F3A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5F3A:
	cmp r4, #3
	bne _021E5F4E
	ldr r0, _021E5FAC ; =0x000005DD
	bl PlaySE
	mov r0, #3
	strb r0, [r5, #0xc]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5F4E:
	bge _021E5F6C
	ldr r0, [r5, #0x1c]
	strb r4, [r0, #2]
	ldr r1, [r5, #0x1c]
	ldrb r0, [r1, #2]
	strh r0, [r1]
	ldrb r1, [r5, #0x12]
	ldr r0, [r5, #0x1c]
	strb r1, [r0, #3]
	ldr r0, _021E5FAC ; =0x000005DD
	bl PlaySE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5F6C:
	add r0, r5, #0
	bl ov56_021E5CE0
	cmp r0, #0
	beq _021E5F86
	ldr r0, _021E5FAC ; =0x000005DD
	bl PlaySE
	mov r0, #2
	strb r0, [r5, #0xc]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5F86:
	ldr r0, [r5, #0x1c]
	mov r1, #3
	strh r1, [r0]
	ldr r0, _021E5FB0 ; =0x000005E3
	bl PlaySE
	ldr r0, [r5, #0x1c]
	mov r1, #0
	strb r1, [r0, #2]
	ldr r0, [r5, #0x1c]
	strb r1, [r0, #3]
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021E5FA4: .word ov56_021E6E20
_021E5FA8: .word gSystem + 0x40
_021E5FAC: .word 0x000005DD
_021E5FB0: .word 0x000005E3
	thumb_func_end ov56_021E5EFC

