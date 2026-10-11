	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8F7C
	.public ov102_021EBBF4
	.public ov102_021EC298

	.text

	thumb_func_start ov102_021EBBF4
ov102_021EBBF4: ; 0x021EBBF4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov102_021E8F7C
	cmp r0, #0
	bne _021EBC0A
	mov r0, #0xff
	mvn r0, r0
	b _021EBC0E
_021EBC0A:
	mov r0, #1
	lsl r0, r0, #8
_021EBC0E:
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x3c
	mov r2, #1
	mov r3, #0
	bl ov102_021EC298
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBBF4

