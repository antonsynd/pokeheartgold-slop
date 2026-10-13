	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238044

	.text

	.text
	thumb_func_start ov57_02238044
ov57_02238044: ; 0x02238044
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xd3
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_02238050:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _02238090
	cmp r4, r6
	bne _02238068
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawPriority
	b _02238090
_02238068:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetDrawPriority
	add r1, r0, #0
	bne _02238084
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl ManagedSprite_SetDrawPriority
	b _02238090
_02238084:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #2
	bl ManagedSprite_SetDrawPriority
_02238090:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _02238050
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov57_02238044

