	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE0AC

	.text

	thumb_func_start ov103_021EE0AC
ov103_021EE0AC: ; 0x021EE0AC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0x96
	lsl r2, r2, #2
	lsl r4, r1, #2
	add r5, r0, r2
	ldr r0, [r5, r4]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl ManagedSprite_SetAnim
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov103_021EE0AC

