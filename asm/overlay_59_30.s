	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239918

	.text

	thumb_func_start ov59_02239918
ov59_02239918: ; 0x02239918
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _02239936
	mov r0, #0xa5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	mov r0, #0xa5
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02239936:
	pop {r4, pc}
	thumb_func_end ov59_02239918

