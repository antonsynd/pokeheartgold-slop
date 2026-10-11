	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED5B4
	.extern ov103_021EDA98
	.extern ov103_021EDB18
	.extern ov103_021EEA24

	.text

	.text
	thumb_func_start ov103_021ED5B4
ov103_021ED5B4: ; 0x021ED5B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov103_021EEA24
	cmp r0, #0
	beq _021ED5C6
	cmp r0, #1
	beq _021ED5E6
	b _021ED60C
_021ED5C6:
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _021ED5E2
	sub r0, r0, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021ED740 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xb
	bl ov103_021EDB18
	pop {r3, r4, r5, pc}
_021ED5E2:
	mov r0, #9
	pop {r3, r4, r5, pc}
_021ED5E6:
	ldr r1, [r4, #0xc]
	ldr r0, _021ED744 ; =0x000002E2
	ldrh r2, [r4, #0x1c]
	ldrh r0, [r1, r0]
	cmp r2, r0
	beq _021ED608
	add r0, r2, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021ED740 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	bl ov103_021EDB18
	pop {r3, r4, r5, pc}
_021ED608:
	mov r0, #9
	pop {r3, r4, r5, pc}
_021ED60C:
	mov r0, #0x9e
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl GridInputHandler_HandleInput_NoHold
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021ED654
	blo _021ED626
	b _021ED734
_021ED626:
	cmp r5, #0xa
	bhi _021ED64C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ED636: ; jump table
	.short _021ED666 - _021ED636 - 2 ; case 0
	.short _021ED666 - _021ED636 - 2 ; case 1
	.short _021ED666 - _021ED636 - 2 ; case 2
	.short _021ED666 - _021ED636 - 2 ; case 3
	.short _021ED666 - _021ED636 - 2 ; case 4
	.short _021ED666 - _021ED636 - 2 ; case 5
	.short _021ED666 - _021ED636 - 2 ; case 6
	.short _021ED666 - _021ED636 - 2 ; case 7
	.short _021ED666 - _021ED636 - 2 ; case 8
	.short _021ED666 - _021ED636 - 2 ; case 9
	.short _021ED6A0 - _021ED636 - 2 ; case 10
_021ED64C:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	b _021ED73A
_021ED654:
	add r0, r1, #1
	cmp r5, r0
	bhi _021ED65E
	beq _021ED6A0
	b _021ED73A
_021ED65E:
	add r0, r1, #2
	cmp r5, r0
	beq _021ED6B2
	b _021ED73A
_021ED666:
	ldrh r1, [r4, #0x1c]
	ldr r0, [r4, #0xc]
	add r3, r0, r5
	add r2, r1, #0
	mov r0, #0xa
	mul r2, r0
	mov r1, #0xb3
	add r2, r3, r2
	lsl r1, r1, #2
	ldrb r2, [r2, r1]
	cmp r2, #0xff
	beq _021ED73A
	strb r5, [r4, #0x1e]
	ldr r2, [r4, #0xc]
	add r3, r2, r5
	ldrh r2, [r4, #0x1c]
	mul r0, r2
	add r0, r3, r0
	ldrb r0, [r0, r1]
	strb r0, [r4, #0x1f]
	ldr r0, _021ED748 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xc
	bl ov103_021EDA98
	pop {r3, r4, r5, pc}
_021ED6A0:
	ldr r0, _021ED748 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xa
	bl ov103_021EDB18
	pop {r3, r4, r5, pc}
_021ED6B2:
	mov r0, #0x9e
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl GridInputHandler_GetNextInput
	ldr r1, _021ED74C ; =gSystem
	mov r2, #0x10
	ldr r1, [r1, #0x4c]
	tst r2, r1
	beq _021ED6FE
	cmp r0, #1
	beq _021ED6DC
	cmp r0, #3
	beq _021ED6DC
	cmp r0, #5
	beq _021ED6DC
	cmp r0, #7
	beq _021ED6DC
	cmp r0, #9
	bne _021ED6FE
_021ED6DC:
	ldr r3, [r4, #0xc]
	ldr r2, _021ED744 ; =0x000002E2
	ldrh r5, [r4, #0x1c]
	ldrh r2, [r3, r2]
	cmp r5, r2
	beq _021ED6FE
	add r0, r5, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021ED740 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	bl ov103_021EDB18
	pop {r3, r4, r5, pc}
_021ED6FE:
	mov r2, #0x20
	tst r1, r2
	beq _021ED73A
	cmp r0, #0
	beq _021ED718
	cmp r0, #2
	beq _021ED718
	cmp r0, #4
	beq _021ED718
	cmp r0, #6
	beq _021ED718
	cmp r0, #8
	bne _021ED73A
_021ED718:
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _021ED73A
	sub r0, r0, #1
	strh r0, [r4, #0x1c]
	ldr r0, _021ED740 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xb
	bl ov103_021EDB18
	pop {r3, r4, r5, pc}
_021ED734:
	ldr r0, _021ED740 ; =0x000005DC
	bl PlaySE
_021ED73A:
	mov r0, #9
	pop {r3, r4, r5, pc}
	nop
_021ED740: .word 0x000005DC
_021ED744: .word 0x000002E2
_021ED748: .word 0x000005DD
_021ED74C: .word gSystem
	thumb_func_end ov103_021ED5B4

