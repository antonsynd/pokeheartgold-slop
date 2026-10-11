	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_0203453C
	.extern _021D4130

	.text
	thumb_func_start sub_0203453C
sub_0203453C: ; 0x0203453C
	push {r3, r4, r5, lr}
	ldr r1, _020345C8 ; =_021D4130
	add r4, r2, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _020345C4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #0
	beq _020345C4
	ldr r1, _020345C8 ; =_021D4130
	mov r2, #0x68
	ldr r5, [r1]
	add r1, r4, #0
	add r1, #0x62
	ldrb r1, [r1]
	add r5, #0xc
	add r0, r4, #0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	bl MI_CpuCopy8
	add r4, #0x62
	ldr r1, _020345C8 ; =_021D4130
	ldrb r3, [r4]
	ldr r2, [r1]
	ldr r0, _020345CC ; =0x000003A6
	strb r3, [r2, r0]
	ldr r2, [r1]
	ldrb r1, [r2, r0]
	sub r0, #0x5a
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r0, [r1, r0]
	bl PlayerProfile_IsNameEmpty
	cmp r0, #1
	beq _020345C4
	ldr r2, _020345C8 ; =_021D4130
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r3, [r2]
	add r1, r0, #0
	add r1, #0xa
	add r4, r3, r0
	ldrb r3, [r3, r1]
	ldrb r1, [r4, r3]
	cmp r1, #2
	bhs _020345C4
	mov r1, #1
	strb r1, [r4, r3]
	ldr r1, [r2]
	add r0, #0xa
	ldrb r4, [r1, r0]
	bl sub_0203769C
	cmp r4, r0
	bne _020345C4
	ldr r0, _020345C8 ; =_021D4130
	mov r2, #3
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
_020345C4:
	pop {r3, r4, r5, pc}
	nop
_020345C8: .word _021D4130
_020345CC: .word 0x000003A6
	thumb_func_end sub_0203453C

