	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225AC68
	.extern ov89_0225CCE4
	.extern ov89_0225CD6C

	.text

	.text
	thumb_func_start ov89_0225AC68
ov89_0225AC68: ; 0x0225AC68
	push {r4, r5, r6, r7}
	add r0, r2, #0
	asr r2, r1, #3
	lsr r2, r2, #0x1c
	add r2, r1, r2
	add r5, r3, #0
	asr r3, r2, #4
	ldr r4, [sp, #0x10]
	cmp r3, #0x11
	blo _0225AC7E
	mov r3, #0x10
_0225AC7E:
	ldr r2, _0225ACF8 ; =ov89_0225CD6C
	lsl r6, r3, #2
	ldr r7, [r2, r6]
	cmp r3, #0x10
	str r7, [r5]
	bhs _0225ACB4
	ldr r2, [r5]
	lsl r6, r1, #0x1c
	mov ip, r2
	lsr r2, r1, #0x1f
	sub r6, r6, r2
	mov r1, #0x1c
	ror r6, r1
	add r1, r2, r6
	add r2, r3, #1
	lsl r3, r2, #2
	ldr r2, _0225ACF8 ; =ov89_0225CD6C
	ldr r2, [r2, r3]
	sub r3, r2, r7
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	asr r2, r2, #4
	mul r2, r1
	mov r1, ip
	add r1, r1, r2
	str r1, [r5]
_0225ACB4:
	asr r1, r0, #3
	lsr r1, r1, #0x1c
	add r1, r0, r1
	asr r6, r1, #4
	cmp r6, #0xb
	blo _0225ACC2
	mov r6, #0xa
_0225ACC2:
	ldr r5, _0225ACFC ; =ov89_0225CCE4
	lsl r1, r6, #2
	ldr r3, [r5, r1]
	cmp r6, #0xa
	str r3, [r4]
	bhs _0225ACF2
	lsr r1, r0, #0x1f
	lsl r7, r0, #0x1c
	sub r7, r7, r1
	mov r0, #0x1c
	ror r7, r0
	add r0, r1, r7
	add r1, r6, #1
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r4]
	sub r3, r1, r3
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	asr r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	str r0, [r4]
_0225ACF2:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0225ACF8: .word ov89_0225CD6C
_0225ACFC: .word ov89_0225CCE4
	thumb_func_end ov89_0225AC68

