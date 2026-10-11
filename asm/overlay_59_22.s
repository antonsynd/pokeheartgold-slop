	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238F24

	.text

	thumb_func_start ov59_02238F24
ov59_02238F24: ; 0x02238F24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl TouchscreenListMenu_HandleInput
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02238F54
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl TouchscreenListMenu_WasLastInputTouch
	str r0, [r5, #0x40]
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl TouchscreenListMenu_Destroy
	add r0, r4, #0
_02238F54:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov59_02238F24

