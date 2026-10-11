	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240F7C

    .text

	thumb_func_start ov83_02240F7C
ov83_02240F7C: ; 0x02240F7C
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x18]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02240F9E
	mov r0, #0x28
	strh r0, [r5]
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02240F9E:
	mov r1, #0
	strh r1, [r5]
	strh r1, [r6]
	mov r0, #0x80
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02240F7C

