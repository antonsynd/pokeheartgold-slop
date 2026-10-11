	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE110

	.text

	thumb_func_start ov103_021EE110
ov103_021EE110: ; 0x021EE110
	push {r3, lr}
	cmp r2, #1
	bne _021EE128
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	pop {r3, pc}
_021EE128:
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetOamMode
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov103_021EE110

