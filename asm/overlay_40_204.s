	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223E324

	.text

	thumb_func_start ov40_0223E324
ov40_0223E324: ; 0x0223E324
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _0223E338 ; =0x00000608
	ldr r0, [r1, r0]
	bl TouchHitboxController_IsTriggered
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0223E338: .word 0x00000608
	thumb_func_end ov40_0223E324

