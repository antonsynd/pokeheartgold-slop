	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223EE0
	.public ov13_02223F84
	.extern ov13_02223C48
	.extern ov13_02223D24
	.extern ov13_02223E44
	.extern ov13_02223E6C
	.extern ov13_02223EA4
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02223EE0
ov13_02223EE0: ; 0x02223EE0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02223F74 ; =ov13_0224DF30
	mov r4, #1
	str r6, [r0, #0x70]
	bl ov13_02223E44
	mov r0, #0xd0
	add r7, r6, #0
	mul r7, r0
	ldr r0, _02223F78 ; =0x000024D0
	add r1, r7, r0
	mov r0, #0xc0
	mul r0, r6
	add r0, r1, r0
	ldr r1, _02223F74 ; =ov13_0224DF30
	ldr r1, [r1, #4]
	blx r1
	ldr r6, _02223F74 ; =ov13_0224DF30
	cmp r0, #0
	str r0, [r6, #0x54]
	bne _02223F10
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_02223F10:
	mov r1, #0x1f
	add r2, r0, r1
	add r0, r1, #0
	sub r0, #0x3f
	add r3, r2, #0
	and r3, r0
	ldr r0, _02223F7C ; =0x00002490
	str r3, [r6, #0x40]
	add r2, r7, r0
	add r0, r3, r2
	add r0, r0, r1
	sub r1, #0x3f
	and r0, r1
	str r0, [r6, #0x5c]
	ldr r0, _02223F80 ; =ov13_02223EA4
	add r1, r3, #0
	bl ov13_02223D24
	cmp r0, #0
	bne _02223F3C
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_02223F3C:
	mov r6, #0
	add r7, r4, #0
_02223F40:
	mov r0, #0xa
	bl OS_Sleep
	bl ov13_02223E6C
	cmp r0, #0
	beq _02223F6C
_02223F4E:
	cmp r0, #4
	beq _02223F64
	cmp r0, #5
	beq _02223F64
	cmp r0, #6
	bne _02223F60
	add r4, r6, #0
	add r5, r7, #0
	b _02223F64
_02223F60:
	mov r4, #0
	sub r5, r4, #2
_02223F64:
	bl ov13_02223E6C
	cmp r0, #0
	bne _02223F4E
_02223F6C:
	cmp r4, #0
	bne _02223F40
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02223F74: .word ov13_0224DF30
_02223F78: .word 0x000024D0
_02223F7C: .word 0x00002490
_02223F80: .word ov13_02223EA4
	thumb_func_end ov13_02223EE0

	thumb_func_start ov13_02223F84
ov13_02223F84: ; 0x02223F84
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	bl ov13_02223C48
	cmp r0, #0
	beq _02223FC2
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_02223F96:
	add r0, r7, #0
	bl OS_Sleep
	bl ov13_02223E6C
	cmp r0, #0
	beq _02223FBE
_02223FA4:
	cmp r0, #4
	beq _02223FB6
	cmp r0, #5
	beq _02223FB6
	cmp r0, #0x14
	bne _02223FB4
	add r5, r4, #0
	b _02223FB6
_02223FB4:
	add r5, r6, #0
_02223FB6:
	bl ov13_02223E6C
	cmp r0, #0
	bne _02223FA4
_02223FBE:
	cmp r5, #0
	bne _02223F96
_02223FC2:
	ldr r1, _02223FD8 ; =ov13_0224DF30
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02223FD4
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02223FD8 ; =ov13_0224DF30
	mov r1, #0
	str r1, [r0, #0x54]
_02223FD4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02223FD8: .word ov13_0224DF30
	thumb_func_end ov13_02223F84

