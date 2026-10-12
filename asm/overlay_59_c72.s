	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A58C
	.public ov59_0223A614
	.public ov59_0223A678
	.public ov59_0223A7FC
	.extern ov59_0223A48C
	.extern ov59_0223C908

	.text

	.text
	thumb_func_start ov59_0223A58C
ov59_0223A58C: ; 0x0223A58C
	push {r3, lr}
	ldr r1, _0223A608 ; =gSystem
	ldr r2, [r1, #0x48]
	ldr r1, _0223A60C ; =0x00000CF3
	tst r1, r2
	beq _0223A59C
	mov r1, #0
	str r1, [r0, #0x40]
_0223A59C:
	ldr r1, _0223A608 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #2
	add r3, r2, #0
	tst r3, r1
	beq _0223A5B0
	mov r1, #1
	bl ov59_0223A48C
	pop {r3, pc}
_0223A5B0:
	mov r3, #1
	tst r3, r2
	beq _0223A5BE
	mov r1, #0
	bl ov59_0223A48C
	pop {r3, pc}
_0223A5BE:
	mov r3, #0x40
	tst r3, r2
	beq _0223A5CA
	bl ov59_0223A48C
	pop {r3, pc}
_0223A5CA:
	mov r1, #0x80
	add r3, r2, #0
	and r3, r1
	beq _0223A5DA
	mov r1, #3
	bl ov59_0223A48C
	pop {r3, pc}
_0223A5DA:
	mov r1, #0x10
	tst r1, r2
	beq _0223A5E8
	mov r1, #4
	bl ov59_0223A48C
	pop {r3, pc}
_0223A5E8:
	mov r1, #0x20
	tst r1, r2
	beq _0223A5F6
	mov r1, #5
	bl ov59_0223A48C
	pop {r3, pc}
_0223A5F6:
	cmp r3, #0
	beq _0223A604
	ldr r0, _0223A610 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	pop {r3, pc}
_0223A604:
	mov r0, #6
	pop {r3, pc}
	.balign 4, 0
_0223A608: .word gSystem
_0223A60C: .word 0x00000CF3
_0223A610: .word 0x000005DC
	thumb_func_end ov59_0223A58C

	thumb_func_start ov59_0223A614
ov59_0223A614: ; 0x0223A614
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223A674 ; =ov59_0223C908
	str r1, [sp]
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0223A62E
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0223A62E:
	sub r0, r4, #4
	cmp r0, #1
	bhi _0223A642
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0xa
	bhs _0223A642
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0223A642:
	cmp r4, #2
	blt _0223A660
	mov r0, #0x95
	lsl r0, r0, #2
	add r6, r5, r0
	add r0, r4, #0
	add r0, #9
	lsl r7, r0, #2
	ldr r0, [r6, r7]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r6, r7]
	bl Sprite_ResetAnimCtrlState
_0223A660:
	ldr r0, [sp]
	mov r1, #1
	str r1, [r0]
	str r1, [r5, #0x40]
	add r0, r5, #0
	add r1, r4, #0
	bl ov59_0223A48C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A674: .word ov59_0223C908
	thumb_func_end ov59_0223A614

	thumb_func_start ov59_0223A678
ov59_0223A678: ; 0x0223A678
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x49
	ldrb r1, [r1]
	cmp r1, #3
	bhi _0223A6E4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223A690: ; jump table
	.short _0223A698 - _0223A690 - 2 ; case 0
	.short _0223A6FE - _0223A690 - 2 ; case 1
	.short _0223A78C - _0223A690 - 2 ; case 2
	.short _0223A7DA - _0223A690 - 2 ; case 3
_0223A698:
	ldr r1, _0223A7F8 ; =gSystem
	mov r2, #0x10
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _0223A6AC
	mov r1, #0
	bl ov59_0223A7FC
	mov r0, #1
	pop {r3, pc}
_0223A6AC:
	mov r2, #0x40
	tst r2, r1
	beq _0223A6D4
	add r2, r0, #0
	add r2, #0x4a
	ldrb r2, [r2]
	cmp r2, #0
	beq _0223A6D4
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4c
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r0, #0x4a
	sub r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A6D4:
	mov r2, #0x80
	tst r1, r2
	beq _0223A6E4
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	cmp r1, #3
	blo _0223A6E6
_0223A6E4:
	b _0223A7F4
_0223A6E6:
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4c
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r0, #0x4a
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A6FE:
	ldr r1, _0223A7F8 ; =gSystem
	mov r2, #0x20
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _0223A712
	mov r1, #1
	bl ov59_0223A7FC
	mov r0, #1
	pop {r3, pc}
_0223A712:
	mov r2, #0x10
	tst r2, r1
	beq _0223A73C
	add r1, r0, #0
	add r1, #0x4a
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x4c
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r0, #0x49
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A73C:
	mov r2, #0x40
	tst r2, r1
	beq _0223A764
	add r2, r0, #0
	add r2, #0x4a
	ldrb r2, [r2]
	cmp r2, #0
	beq _0223A764
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r0, #0x4a
	sub r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A764:
	mov r2, #0x80
	tst r1, r2
	beq _0223A7F4
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	cmp r1, #2
	bhs _0223A7F4
	add r1, r0, #0
	mov r2, #0
	add r1, #0x4b
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	add r0, #0x4a
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A78C:
	ldr r1, _0223A7F8 ; =gSystem
	ldr r3, [r1, #0x48]
	mov r1, #0x20
	tst r1, r3
	beq _0223A7B2
	add r1, r0, #0
	add r1, #0x4c
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r0, #0x49
	sub r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A7B2:
	add r1, r0, #0
	add r1, #0x44
	ldrb r2, [r1]
	cmp r2, #2
	bne _0223A7C0
	mov r0, #0
	pop {r3, pc}
_0223A7C0:
	mov r1, #0x90
	tst r1, r3
	beq _0223A7F4
	cmp r2, #0
	beq _0223A7F4
	add r1, r0, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r0, #0x49
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A7DA:
	ldr r1, _0223A7F8 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0x60
	tst r1, r2
	beq _0223A7F4
	add r1, r0, #0
	add r1, #0x49
	ldrb r1, [r1]
	add r0, #0x49
	sub r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223A7F4:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0223A7F8: .word gSystem
	thumb_func_end ov59_0223A678

	thumb_func_start ov59_0223A7FC
ov59_0223A7FC: ; 0x0223A7FC
	cmp r1, #0
	bne _0223A85E
	add r1, r0, #0
	add r1, #0x4a
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	cmp r1, #3
	bhi _0223A856
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0223A82A: ; jump table
	.short _0223A856 - _0223A82A - 2 ; case 0
	.short _0223A832 - _0223A82A - 2 ; case 1
	.short _0223A832 - _0223A82A - 2 ; case 2
	.short _0223A84E - _0223A82A - 2 ; case 3
_0223A832:
	add r3, r0, #0
	add r3, #0x4c
	ldrb r3, [r3]
	cmp r1, r3
	beq _0223A848
	sub r1, r1, #1
	cmp r1, r3
	beq _0223A848
	add r0, #0x4a
	strb r2, [r0]
	bx lr
_0223A848:
	add r0, #0x4a
	strb r3, [r0]
	bx lr
_0223A84E:
	mov r1, #2
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A856:
	mov r1, #0
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A85E:
	add r1, r0, #0
	add r1, #0x4a
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x4c
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	cmp r1, #0
	beq _0223A886
	cmp r1, #1
	beq _0223A89E
	cmp r1, #2
	beq _0223A8C2
	b _0223A8DA
_0223A886:
	add r1, r0, #0
	add r1, #0x4b
	ldrb r1, [r1]
	cmp r1, #1
	bls _0223A898
	mov r1, #1
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A898:
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A89E:
	add r1, r0, #0
	add r1, #0x4b
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223A8B0
	mov r1, #1
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8B0:
	cmp r1, #3
	bne _0223A8BC
	mov r1, #2
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8BC:
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8C2:
	add r1, r0, #0
	add r1, #0x4b
	ldrb r1, [r1]
	cmp r1, #2
	bhs _0223A8D4
	mov r1, #2
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8D4:
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8DA:
	add r0, #0x4a
	strb r2, [r0]
	bx lr
	thumb_func_end ov59_0223A7FC

