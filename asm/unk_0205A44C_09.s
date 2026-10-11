	.include "asm/macros.inc"
	.include "unk_0205A44C.inc"
	.include "global.inc"
	.public sub_0205A51C
	.public sub_0205A544
	.extern _020FC7FC
	.extern _020FC804
	.extern _020FC814
	.extern _020FC824
	.extern _020FC8B4
	.extern _020FC8D4
	.extern _020FC8F4
	.extern _020FC914

	.text
	thumb_func_start sub_0205A51C
sub_0205A51C: ; 0x0205A51C
	ldr r3, _0205A540 ; =_020FC824
	mov r2, #0
_0205A520:
	ldrh r1, [r3]
	cmp r1, r0
	bgt _0205A530
	add r1, r1, #4
	cmp r1, r0
	ble _0205A530
	add r0, r2, #0
	bx lr
_0205A530:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xa
	blt _0205A520
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_0205A540: .word _020FC824
	thumb_func_end sub_0205A51C

	thumb_func_start sub_0205A544
sub_0205A544: ; 0x0205A544
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	cmp r4, #9
	ble _0205A564
	add r0, r4, #0
	bl sub_0205A51C
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0205A566
	bl GF_AssertFail
	b _0205A566
_0205A564:
	add r5, r4, #0
_0205A566:
	mov r0, #0x11
	lsl r0, r0, #4
	add r6, r6, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	cmp r0, #0
	bne _0205A578
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0205A578:
	add r0, r5, #0
	bl sub_02035798
	ldr r5, [r6, r7]
	add r5, #0x50
	add r5, #0x30
	cmp r0, #0
	bne _0205A58C
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0205A58C:
	cmp r4, #9
	ble _0205A5A6
	sub r4, #0xa
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	add r0, r5, r0
	ldrb r0, [r0, #0x18]
	asr r4, r0, #7
	b _0205A5AC
_0205A5A6:
	bl PlayerProfile_GetTrainerGender
	add r4, r0, #0
_0205A5AC:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0xd
	bhi _0205A68A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205A5BE: ; jump table
	.short _0205A68A - _0205A5BE - 2 ; case 0
	.short _0205A636 - _0205A5BE - 2 ; case 1
	.short _0205A652 - _0205A5BE - 2 ; case 2
	.short _0205A66E - _0205A5BE - 2 ; case 3
	.short _0205A5DA - _0205A5BE - 2 ; case 4
	.short _0205A5E2 - _0205A5BE - 2 ; case 5
	.short _0205A5FE - _0205A5BE - 2 ; case 6
	.short _0205A61A - _0205A5BE - 2 ; case 7
	.short _0205A636 - _0205A5BE - 2 ; case 8
	.short _0205A652 - _0205A5BE - 2 ; case 9
	.short _0205A66E - _0205A5BE - 2 ; case 10
	.short _0205A5DA - _0205A5BE - 2 ; case 11
	.short _0205A66E - _0205A5BE - 2 ; case 12
	.short _0205A66E - _0205A5BE - 2 ; case 13
_0205A5DA:
	ldr r0, _0205A690 ; =_020FC7FC
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0205A5E2:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205A694 ; =_020FC814
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205A5FE:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205A698 ; =_020FC8D4
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205A61A:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205A69C ; =_020FC804
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205A636:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205A6A0 ; =_020FC8B4
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205A652:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205A6A4 ; =_020FC8F4
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205A66E:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r2, r0, #3
	ldr r0, _0205A6A8 ; =_020FC914
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205A68A:
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205A690: .word _020FC7FC
_0205A694: .word _020FC814
_0205A698: .word _020FC8D4
_0205A69C: .word _020FC804
_0205A6A0: .word _020FC8B4
_0205A6A4: .word _020FC8F4
_0205A6A8: .word _020FC914
	thumb_func_end sub_0205A544

