	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222AB0
	.extern _0224CF98
	.extern ov13_02222978

	.text

	.text
	thumb_func_start ov13_02222AB0
ov13_02222AB0: ; 0x02222AB0
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, _02222B10 ; =_0224CF98
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02222AF2
	mov r4, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #0xc
	bl ov13_02222978
	add r0, sp, #0
	bl RTC_GetTime
	cmp r0, #0
	bne _02222AE2
	ldr r0, [sp]
	lsl r0, r0, #0xa
	add r1, r4, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [sp, #8]
	add r4, r1, r0
_02222AE2:
	ldr r0, _02222B10 ; =_0224CF98
	ldr r1, _02222B14 ; =0x5D588B65
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, _02222B18 ; =0x00269EC3
	str r1, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #8]
_02222AF2:
	ldr r0, _02222B10 ; =_0224CF98
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r3, [r0, #0x20]
	mul r1, r2
	add r1, r3, r1
	str r1, [r0, #0x18]
	ldr r0, _02222B1C ; =0x00007FFF
	lsr r1, r1, #0x10
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_02222B10: .word _0224CF98
_02222B14: .word 0x5D588B65
_02222B18: .word 0x00269EC3
_02222B1C: .word 0x00007FFF
	thumb_func_end ov13_02222AB0

