	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_0203751C
	.public sub_0203753C
	.public sub_02037594
	.public sub_02037618
	.public sub_02037640
	.public sub_02037668
	.extern _021D4140
	.extern sub_02035FA8
	.extern sub_02035FF0
	.extern sub_02037108
	.extern sub_0203769C
	.extern sub_020376E0

	.text
	thumb_func_start sub_0203751C
sub_0203751C: ; 0x0203751C
	ldr r0, _02037534 ; =_021D4140
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02037530
	ldr r0, _02037538 ; =0x0000065C
	ldrh r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	bx lr
_02037530:
	mov r0, #1
	bx lr
	.balign 4, 0
_02037534: .word _021D4140
_02037538: .word 0x0000065C
	thumb_func_end sub_0203751C

	thumb_func_start sub_0203753C
sub_0203753C: ; 0x0203753C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035FF0
	cmp r0, #1
	bne _0203756E
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02037590 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	add sp, #8
	pop {r4, r5, r6, pc}
_0203756E:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02037590 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02037590: .word _021D4140
	thumb_func_end sub_0203753C

	thumb_func_start sub_02037594
sub_02037594: ; 0x02037594
	push {r3, lr}
	ldr r0, _0203760C ; =_021D4140
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02037608
	ldr r1, _02037610 ; =0x000006AB
	ldrb r0, [r2, r1]
	cmp r0, #1
	beq _020375AC
	cmp r0, #3
	beq _020375E4
	pop {r3, pc}
_020375AC:
	bl sub_02035FF0
	cmp r0, #1
	bne _020375C4
	ldr r1, _0203760C ; =_021D4140
	mov r0, #0xb
	ldr r2, [r1, #8]
	ldr r1, _02037614 ; =0x000006AC
	add r1, r2, r1
	bl sub_020376E0
	b _020375D4
_020375C4:
	ldr r1, _0203760C ; =_021D4140
	mov r0, #0xb
	ldr r2, [r1, #8]
	ldr r1, _02037614 ; =0x000006AC
	add r1, r2, r1
	mov r2, #1
	bl sub_02037108
_020375D4:
	cmp r0, #0
	beq _02037608
	ldr r0, _0203760C ; =_021D4140
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02037610 ; =0x000006AB
	strb r2, [r1, r0]
	pop {r3, pc}
_020375E4:
	add r1, r1, #1
	mov r0, #0xc
	add r1, r2, r1
	bl sub_020376E0
	cmp r0, #0
	beq _02037608
	ldr r0, _0203760C ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037614 ; =0x000006AC
	ldrb r0, [r1, r0]
	bl sub_02035FA8
	ldr r0, _0203760C ; =_021D4140
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02037610 ; =0x000006AB
	strb r2, [r1, r0]
_02037608:
	pop {r3, pc}
	nop
_0203760C: .word _021D4140
_02037610: .word 0x000006AB
_02037614: .word 0x000006AC
	thumb_func_end sub_02037594

	thumb_func_start sub_02037618
sub_02037618: ; 0x02037618
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203769C
	cmp r0, #0
	bne _02037636
	ldr r1, _02037638 ; =_021D4140
	ldr r0, _0203763C ; =0x000006AB
	ldr r2, [r1, #8]
	mov r3, #1
	strb r3, [r2, r0]
	ldrb r2, [r4]
	ldr r1, [r1, #8]
	add r0, r0, #1
	strb r2, [r1, r0]
_02037636:
	pop {r4, pc}
	.balign 4, 0
_02037638: .word _021D4140
_0203763C: .word 0x000006AB
	thumb_func_end sub_02037618

	thumb_func_start sub_02037640
sub_02037640: ; 0x02037640
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203769C
	cmp r0, #0
	beq _0203765E
	ldr r1, _02037660 ; =_021D4140
	ldrb r3, [r4]
	ldr r2, [r1, #8]
	ldr r0, _02037664 ; =0x000006AC
	strb r3, [r2, r0]
	ldr r1, [r1, #8]
	mov r2, #3
	sub r0, r0, #1
	strb r2, [r1, r0]
_0203765E:
	pop {r4, pc}
	.balign 4, 0
_02037660: .word _021D4140
_02037664: .word 0x000006AC
	thumb_func_end sub_02037640

	thumb_func_start sub_02037668
sub_02037668: ; 0x02037668
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203769C
	cmp r0, #0
	bne _02037690
	ldr r0, _02037694 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037698 ; =0x000006AB
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02037690
	ldrb r0, [r4]
	bl sub_02035FA8
	ldr r0, _02037694 ; =_021D4140
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02037698 ; =0x000006AB
	strb r2, [r1, r0]
_02037690:
	pop {r4, pc}
	nop
_02037694: .word _021D4140
_02037698: .word 0x000006AB
	thumb_func_end sub_02037668

