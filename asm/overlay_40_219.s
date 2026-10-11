	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223FCA0

	.text

	thumb_func_start ov40_0223FCA0
ov40_0223FCA0: ; 0x0223FCA0
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _0223FCB4 ; =0x0000060C
	ldr r0, [r1, r0]
	bl TouchHitboxController_IsTriggered
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0223FCB4: .word 0x0000060C
	thumb_func_end ov40_0223FCA0

