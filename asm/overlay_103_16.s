	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECF48

	.text

	thumb_func_start ov103_021ECF48
ov103_021ECF48: ; 0x021ECF48
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x92
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ListMenuItems_Delete
	mov r0, #9
	ldr r1, [r4, #0xc]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl TouchscreenListMenuSpawner_Destroy
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021ECF48

