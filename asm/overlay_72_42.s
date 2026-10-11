	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238680
	.public ov72_02239CD8
	.public ov72_0223A280

	.text

	thumb_func_start ov72_02239CD8
ov72_02239CD8: ; 0x02239CD8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	add r2, r4, #0
	lsl r0, r0, #4
	add r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	mov r3, #2
	mov r0, #0xbd
	add r2, r4, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	lsl r0, r0, #4
	add r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2]
	bl BufferIntegerAsString
	ldr r0, _02239D34 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, _02239D38 ; =0x00000BD4
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r3, r2, #0
	bl ov72_0223A280
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x24
	bl ov72_02238680
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_02239D34: .word 0x00000F0F
_02239D38: .word 0x00000BD4
	thumb_func_end ov72_02239CD8

