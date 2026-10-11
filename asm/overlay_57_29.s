	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238758

	.text

	.text
	thumb_func_start ov57_02238758
ov57_02238758: ; 0x02238758
	push {r3, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02238790 ; =0x00007530
	add r2, r3, #0
	str r0, [sp, #0x14]
	add r0, r3, #0
	add r0, #0xe8
	add r2, #0xdc
	add r3, #0xe0
	ldr r0, [r0]
	ldr r2, [r2]
	ldr r3, [r3]
	mov r1, #3
	bl SpriteSystem_LoadPaletteBuffer
	add sp, #0x18
	pop {r3, pc}
	.balign 4, 0
_02238790: .word 0x00007530
	thumb_func_end ov57_02238758

