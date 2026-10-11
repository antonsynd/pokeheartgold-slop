	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238680
	.public ov72_0223985C
	.public ov72_0223A280

	.text

	thumb_func_start ov72_0223985C
ov72_0223985C: ; 0x0223985C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02239884 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02239888 ; =0x00000BD4
	mov r2, #2
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov72_0223A280
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0xd
	bl ov72_02238680
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02239884: .word 0x00000F0F
_02239888: .word 0x00000BD4
	thumb_func_end ov72_0223985C

