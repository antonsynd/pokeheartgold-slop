	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02238820

	.text

	thumb_func_start ov40_02238820
ov40_02238820: ; 0x02238820
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl TouchHitboxController_IsTriggered
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov40_02238820

