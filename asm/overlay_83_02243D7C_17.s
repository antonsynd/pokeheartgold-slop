	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022447E0
	.public ov83_02244BEC

    .text

	thumb_func_start ov83_02244BEC
ov83_02244BEC: ; 0x02244BEC
	push {r4, lr}
	sub sp, #0x18
	mov r2, #5
	str r2, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #2
	add r4, r0, #0
	str r1, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	add r1, r4, #0
	str r3, [sp, #0x14]
	add r1, #0x60
	bl ov83_022447E0
	strb r0, [r4, #0xa]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	bl ov83_02247944
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xd0
	mov r2, #4
	str r3, [sp, #0x14]
	bl ov83_022447E0
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov83_02244BEC

