	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E78B8
	.extern ov86_021E81DC

	.text

	.text
	thumb_func_start ov86_021E78B8
ov86_021E78B8: ; 0x021E78B8
	push {r3, r4, r5, r6}
	mov r2, #0x93
	lsl r2, r2, #2
	ldrb r4, [r0, r2]
	mov r3, #1
	bic r4, r3
	mov r3, #1
	orr r4, r3
	strb r4, [r0, r2]
	ldrb r5, [r0, r2]
	mov r4, #0xfe
	bic r5, r4
	mov r4, #4
	orr r4, r5
	strb r4, [r0, r2]
	add r4, r2, #1
	ldrb r5, [r0, r4]
	mov r4, #0xf
	bic r5, r4
	add r6, r5, #0
	mov r4, #2
	orr r6, r4
	add r5, r2, #1
	strb r6, [r0, r5]
	ldrb r6, [r0, r5]
	mov r5, #0xf0
	bic r6, r5
	add r5, r2, #1
	strb r6, [r0, r5]
	ldr r5, _021E7928 ; =ov86_021E81DC
	ldrb r1, [r5, r1]
	add r5, r1, #0
	and r5, r3
	mov r3, #0xd
	add r6, r5, #0
	mul r6, r3
	add r6, #0x26
	add r3, r2, #4
	lsr r1, r1, #1
	strb r6, [r0, r3]
	lsl r3, r1, #2
	add r3, #0x25
	add r1, r2, #5
	strb r3, [r0, r1]
	mov r3, #9
	add r1, r2, #6
	strb r3, [r0, r1]
	add r1, r2, #7
	strb r4, [r0, r1]
	mov r3, #0
	add r1, r2, #2
	strb r3, [r0, r1]
	add r1, r2, #3
	strb r3, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0
_021E7928: .word ov86_021E81DC
	thumb_func_end ov86_021E78B8

