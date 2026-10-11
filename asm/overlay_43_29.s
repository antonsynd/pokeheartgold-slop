	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AB94

	.text

	thumb_func_start ov43_0222AB94
ov43_0222AB94: ; 0x0222AB94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	add r0, r1, #0
	bl sub_0202C6F4
	add r1, r4, #0
	mov r2, #6
	add r7, r0, #0
	mov r6, #1
	bl sub_0202C090
	add r2, r0, #0
	bne _0222ABB4
	mov r6, #0
_0222ABB4:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r5, #0x50]
	add r3, r1, #0
	bl BufferIntegerAsString
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_0202C090
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x50]
	mov r3, #4
	bl BufferIntegerAsString
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #5
	bl sub_0202C090
	add r2, r0, #0
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl BufferMonthNameAbbr
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222AB94

