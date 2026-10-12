	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E6D2C

	.text

	.text
	thumb_func_start ov109_021E6D2C
ov109_021E6D2C: ; 0x021E6D2C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	bl ListMenuItems_Delete
	add r0, r6, #0
	mov r4, #0
	add r0, #0x88
	str r4, [r0]
	add r5, r6, #0
_021E6D42:
	ldr r0, [r5, #0x48]
	bl String_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E6D42
	mov r5, #0
	add r4, r6, #0
_021E6D54:
	ldr r0, [r4, #0x34]
	bl String_Delete
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _021E6D54
	ldr r0, [r6, #0x30]
	bl String_Delete
	ldr r0, [r6, #0x2c]
	bl String_Delete
	ldr r0, [r6, #0x28]
	bl MessageFormat_Delete
	ldr r0, [r6, #0x24]
	bl DestroyMsgData
	mov r0, #4
	bl FontID_Release
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov109_021E6D2C

