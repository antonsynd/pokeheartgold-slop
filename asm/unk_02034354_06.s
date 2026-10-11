	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020345D0
	.public sub_02034638
	.extern _021D4130

	.text
	thumb_func_start sub_020345D0
sub_020345D0: ; 0x020345D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02034630 ; =_021D4130
	ldr r1, [r0]
	cmp r1, #0
	beq _0203462C
	mov r3, #0x68
	add r4, r5, #0
	add r0, r2, #0
	mul r4, r3
	add r1, #0xc
	add r1, r1, r4
	add r2, r3, #0
	bl MI_CpuCopy8
	ldr r0, _02034630 ; =_021D4130
	add r1, r5, #0
	ldr r0, [r0]
	add r0, #0x68
	add r0, r0, r4
	bl sub_020357C4
	ldr r0, _02034630 ; =_021D4130
	mov r2, #1
	ldr r0, [r0]
	add r1, r0, r5
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bl sub_0203769C
	cmp r5, r0
	bne _02034622
	ldr r0, _02034630 ; =_021D4130
	mov r2, #3
	ldr r0, [r0]
	add r1, r0, r5
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
_02034622:
	ldr r0, _02034630 ; =_021D4130
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _02034634 ; =0x000003A5
	strb r2, [r1, r0]
_0203462C:
	pop {r3, r4, r5, pc}
	nop
_02034630: .word _021D4130
_02034634: .word 0x000003A5
	thumb_func_end sub_020345D0

	thumb_func_start sub_02034638
sub_02034638: ; 0x02034638
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020346CC ; =_021D4130
	ldr r1, [r0]
	ldr r0, _020346D0 ; =0x000003A5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0203464A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203464A:
	bl sub_0203769C
	cmp r0, #0
	beq _02034656
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02034656:
	mov r0, #5
	bl sub_02037824
	cmp r0, #0
	bne _020346C8
	mov r4, #0
	add r5, r4, #0
	add r7, r4, #0
_02034666:
	ldr r0, _020346CC ; =_021D4130
	ldr r2, [r0]
	mov r0, #0xe7
	add r1, r2, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020346A6
	add r0, r2, r5
	add r0, #0x6e
	strb r4, [r0]
	ldr r0, _020346CC ; =_021D4130
	ldr r6, [r0]
	bl PlayerProfile_sizeof
	add r2, r0, #0
	mov r0, #0xd3
	add r1, r6, r7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r6, #0x2c
	add r1, r6, r5
	bl MI_CpuCopy8
	ldr r1, _020346CC ; =_021D4130
	mov r0, #4
	ldr r1, [r1]
	mov r2, #0x68
	add r1, #0xc
	add r1, r1, r5
	bl sub_0203753C
_020346A6:
	add r4, r4, #1
	add r5, #0x68
	add r7, r7, #4
	cmp r4, #8
	blt _02034666
	mov r1, #0
	mov r0, #5
	add r2, r1, #0
	bl sub_0203753C
	ldr r0, _020346CC ; =_021D4130
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _020346D0 ; =0x000003A5
	strb r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020346C8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_020346CC: .word _021D4130
_020346D0: .word 0x000003A5
	thumb_func_end sub_02034638

