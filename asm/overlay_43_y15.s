	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A420

	.text

	.text
	thumb_func_start ov43_0222A420
ov43_0222A420: ; 0x0222A420
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x10
	mov r1, #0
	mov r2, #0x48
	bl memset
	ldr r0, [r5, #4]
	bl sub_0202C6F4
	mov r4, #0
	add r6, r5, #0
	add r7, r5, #0
	str r0, [sp]
	str r4, [r5, #0x10]
	add r6, #0x14
	add r7, #0x10
_0222A442:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #1
	bne _0222A482
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	add r0, r5, r0
	strb r4, [r0, #0x18]
	ldr r0, [sp]
	mov r2, #8
	bl sub_0202C090
	cmp r0, #2
	bne _0222A46C
	ldr r0, [r5, #0x10]
	add r1, r5, r0
	add r1, #0x38
	mov r0, #0xff
	b _0222A47A
_0222A46C:
	ldr r1, [r6]
	ldr r0, [r5, #0x14]
	add r1, r1, #1
	str r1, [r6]
	ldr r1, [r5, #0x10]
	add r1, r5, r1
	add r1, #0x38
_0222A47A:
	strb r0, [r1]
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
_0222A482:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0222A442
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222A420

