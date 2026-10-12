	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222C360
	.extern ov40_0222C23C

	.text

	.text
	thumb_func_start ov40_0222C360
ov40_0222C360: ; 0x0222C360
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, _0222C394 ; =0x0000060C
	mov r1, #0
	add r2, #0x30
	add r3, r4, #0
_0222C370:
	add r1, r1, #1
	str r2, [r3, r0]
	add r2, r2, #4
	add r3, #0x28
	cmp r1, #5
	blt _0222C370
	mov r0, #0x6d
	str r0, [sp]
	add r0, r4, #0
	ldr r2, _0222C398 ; =ov40_0222C23C
	add r0, #0x30
	mov r1, #5
	add r3, r4, #0
	bl TouchHitboxController_Create
	str r0, [r4, #0x2c]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0222C394: .word 0x0000060C
_0222C398: .word ov40_0222C23C
	thumb_func_end ov40_0222C360

