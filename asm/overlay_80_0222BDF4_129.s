	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E2B8
	.public ov80_0222E344
	.public ov80_0222E3B8
	.public ov80_0222E400

	.text

	thumb_func_start ov80_0222E3B8
ov80_0222E3B8: ; 0x0222E3B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov80_0222E2B8
	add r3, sp, #8
	ldrh r0, [r3, #0x14]
	add r1, r6, #0
	add r2, r7, #0
	str r0, [sp]
	ldrh r3, [r3, #0x10]
	ldr r0, [r5, #0x48]
	bl ov80_0222E400
	add r0, sp, #8
	ldrb r3, [r0, #0x18]
	cmp r3, #0xff
	beq _0222E3F0
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov80_0222E344
	pop {r3, r4, r5, r6, r7, pc}
_0222E3F0:
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	str r2, [sp]
	bl ov80_0222E344
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0222E3B8

