	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AAA4

	.text

	.text
	thumb_func_start ov43_0222AAA4
ov43_0222AAA4: ; 0x0222AAA4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0222AB18 ; =0x05F5E100
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl _ll_udiv
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r5, #0x50]
	mov r3, #4
	bl BufferIntegerAsString
	ldr r2, _0222AB1C ; =0x00002710
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl _ll_udiv
	ldr r2, _0222AB1C ; =0x00002710
	mov r3, #0
	bl _ull_mod
	mov r1, #2
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	mov r3, #4
	bl BufferIntegerAsString
	ldr r2, _0222AB1C ; =0x00002710
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl _ull_mod
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	mov r1, #3
	mov r3, #4
	bl BufferIntegerAsString
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0222AB18: .word 0x05F5E100
_0222AB1C: .word 0x00002710
	thumb_func_end ov43_0222AAA4

