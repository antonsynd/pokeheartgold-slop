	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FC48
	.public ov83_02240290

    .text

	thumb_func_start ov83_02240290
ov83_02240290: ; 0x02240290
	push {r4, lr}
	sub sp, #0x18
	mov r1, #5
	str r1, [sp]
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
	mov r2, #6
	bl ov83_0223FC48
	strb r0, [r4, #0xa]
	ldr r0, _022402F0 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
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
	add r1, #0xc0
	mov r2, #5
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_022402F0: .word 0x00000508
	thumb_func_end ov83_02240290

