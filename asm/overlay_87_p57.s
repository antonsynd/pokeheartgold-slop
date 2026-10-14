	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E7734

	.text

	.text
	thumb_func_start ov87_021E7734
ov87_021E7734: ; 0x021E7734
	push {r4, r5}
	ldr r1, _021E7880 ; =0x000003A1
	mov r3, #0
	ldrb r2, [r0, r1]
	cmp r2, #1
	bhi _021E7746
	add r0, r3, #0
	pop {r4, r5}
	bx lr
_021E7746:
	add r2, r1, #2
	ldrb r2, [r0, r2]
	add r4, r0, r2
	add r2, r1, #0
	sub r2, #0x41
	ldrb r2, [r4, r2]
	add r4, r1, #1
	ldrb r4, [r0, r4]
	add r5, r0, r4
	add r4, r1, #0
	sub r4, #0x41
	ldrb r4, [r5, r4]
	cmp r4, r2
	bne _021E7774
	sub r2, r1, #1
	ldrb r4, [r0, r2]
	mov r2, #1
	sub r1, r1, #1
	bic r4, r2
	mov r2, #1
	orr r2, r4
	strb r2, [r0, r1]
	b _021E779E
_021E7774:
	cmp r4, #4
	bne _021E778A
	sub r2, r1, #1
	ldrb r4, [r0, r2]
	mov r2, #1
	sub r1, r1, #1
	bic r4, r2
	mov r2, #1
	orr r2, r4
	strb r2, [r0, r1]
	b _021E779E
_021E778A:
	cmp r2, #4
	bne _021E779E
	sub r2, r1, #1
	ldrb r4, [r0, r2]
	mov r2, #1
	sub r1, r1, #1
	bic r4, r2
	mov r2, #1
	orr r2, r4
	strb r2, [r0, r1]
_021E779E:
	ldr r1, _021E7880 ; =0x000003A1
	ldrb r2, [r0, r1]
	cmp r2, #2
	bhi _021E77AC
	mov r0, #0
	pop {r4, r5}
	bx lr
_021E77AC:
	add r2, r1, #2
	ldrb r2, [r0, r2]
	add r4, r0, r2
	add r2, r1, #0
	sub r2, #0x41
	ldrb r4, [r4, r2]
	add r2, r1, #1
	ldrb r2, [r0, r2]
	add r5, r0, r2
	add r2, r1, #0
	sub r2, #0x41
	ldrb r2, [r5, r2]
	cmp r2, r4
	bne _021E77D8
	add r5, r1, #3
	ldrb r5, [r0, r5]
	sub r1, #0x41
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r2, r1
	bne _021E77D8
	mov r3, #1
_021E77D8:
	cmp r2, #4
	bne _021E77E2
	cmp r4, #4
	bne _021E77E2
	mov r3, #1
_021E77E2:
	cmp r2, #4
	bne _021E77F8
	mov r1, #0xe9
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x44
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021E77F8
	mov r3, #1
_021E77F8:
	cmp r4, #4
	bne _021E780E
	mov r1, #0xe9
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x44
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021E780E
	mov r3, #1
_021E780E:
	cmp r2, #4
	bne _021E7824
	mov r1, #0xe9
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x44
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r4, r1
	bne _021E7824
	mov r3, #1
_021E7824:
	cmp r4, #4
	bne _021E783A
	mov r1, #0xe9
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x44
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r2, r1
	bne _021E783A
	mov r3, #1
_021E783A:
	mov r1, #0xe9
	lsl r1, r1, #2
	ldrb r5, [r0, r1]
	sub r1, #0x44
	add r5, r0, r5
	ldrb r1, [r5, r1]
	cmp r1, #4
	bne _021E7850
	cmp r2, r4
	bne _021E7850
	mov r3, #1
_021E7850:
	cmp r3, #1
	bne _021E787A
	ldr r1, _021E7884 ; =0x000003A2
	mov r4, #0
	add r2, r1, #0
	sub r2, #0x42
_021E785C:
	add r3, r0, r4
	ldrb r3, [r3, r1]
	add r3, r0, r3
	ldrb r3, [r3, r2]
	cmp r3, #4
	beq _021E786E
	ldr r1, _021E7888 ; =0x0000039F
	strb r3, [r0, r1]
	b _021E7874
_021E786E:
	add r4, r4, #1
	cmp r4, #3
	blt _021E785C
_021E7874:
	mov r0, #1
	pop {r4, r5}
	bx lr
_021E787A:
	mov r0, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_021E7880: .word 0x000003A1
_021E7884: .word 0x000003A2
_021E7888: .word 0x0000039F
	thumb_func_end ov87_021E7734

