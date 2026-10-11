	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222C788

	.text

	thumb_func_start ov43_0222C788
ov43_0222C788: ; 0x0222C788
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrh r0, [r4]
	add r6, r1, #0
	add r7, r3, #0
	strh r0, [r5]
	ldrh r0, [r4, #2]
	strh r0, [r5, #2]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	add r0, r5, #0
	add r0, #8
	bl InitWindow
	mov r0, #2
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _0222C7B2
	neg r1, r1
_0222C7B2:
	mov r0, #0
	ldrsh r3, [r4, r0]
	cmp r3, #0
	bge _0222C7BC
	neg r3, r3
_0222C7BC:
	add r0, r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	add r3, r3, #4
	str r0, [sp, #0x10]
	add r5, #8
	lsl r3, r3, #0x18
	ldr r0, [r6]
	add r1, r5, #0
	mov r2, #3
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222C788

