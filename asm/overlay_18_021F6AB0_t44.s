	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F7DCC
	.extern ov18_021FB7C0
	.extern ov18_021FB7E0

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F7DCC
ov18_021F7DCC: ; 0x021F7DCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7DF8
	ldr r0, _021F7E60 ; =ov18_021FB7E0
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7DEC
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021F7DEC:
	mov r1, #1
	str r1, [r4]
	lsl r1, r0, #2
	ldr r0, _021F7E64 ; =ov18_021FB7C0
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021F7DF8:
	mov r0, #0
	ldr r2, _021F7E68 ; =gSystem
	str r0, [r4]
	ldr r3, [r2, #0x4c]
	mov r1, #0x40
	tst r1, r3
	beq _021F7E14
	ldr r1, _021F7E6C ; =0x000018C7
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	beq _021F7E5C
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F7E14:
	mov r0, #0x80
	tst r0, r3
	beq _021F7E2C
	ldr r0, _021F7E6C ; =0x000018C7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bne _021F7E28
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F7E28:
	mov r0, #3
	pop {r3, r4, r5, pc}
_021F7E2C:
	ldr r2, [r2, #0x48]
	mov r0, #0x20
	tst r0, r2
	beq _021F7E38
	mov r0, #6
	pop {r3, r4, r5, pc}
_021F7E38:
	mov r0, #0x10
	add r1, r2, #0
	tst r1, r0
	beq _021F7E44
	mov r0, #7
	pop {r3, r4, r5, pc}
_021F7E44:
	lsl r0, r0, #6
	tst r0, r2
	beq _021F7E4E
	mov r0, #4
	pop {r3, r4, r5, pc}
_021F7E4E:
	mov r0, #3
	add r1, r2, #0
	tst r1, r0
	beq _021F7E5A
	mov r0, #5
	pop {r3, r4, r5, pc}
_021F7E5A:
	sub r0, r0, #4
_021F7E5C:
	pop {r3, r4, r5, pc}
	nop
_021F7E60: .word ov18_021FB7E0
_021F7E64: .word ov18_021FB7C0
_021F7E68: .word gSystem
_021F7E6C: .word 0x000018C7
	thumb_func_end ov18_021F7DCC

