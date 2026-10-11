	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022383F8

	.text

	.text
	thumb_func_start ov57_022383F8
ov57_022383F8: ; 0x022383F8
	push {r3, lr}
	lsl r1, r1, #4
	add r2, r0, r1
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0223840C
	mov r0, #1
	pop {r3, pc}
_0223840C:
	add r0, #8
	ldr r0, [r2, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0
	mov r0, #2
	mov r1, #0
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	mov r2, #0xbe
	mov r3, #0x46
	bl ov07_022344E4
	cmp r0, #0x3c
	bgt _02238434
	mov r0, #1
	pop {r3, pc}
_02238434:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov57_022383F8

