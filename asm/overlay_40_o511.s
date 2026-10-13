	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02243B48

	.text

	.text
	thumb_func_start ov40_02243B48
ov40_02243B48: ; 0x02243B48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02243B74
	mov r7, #0x81
	add r4, r5, #0
	lsl r7, r7, #2
_02243B5E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02243B6A
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_02243B6A:
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02243B5E
_02243B74:
	mov r6, #0x57
	mov r4, #0
	mov r7, #1
	lsl r6, r6, #2
_02243B7C:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _02243B88
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
_02243B88:
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #2
	blt _02243B7C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov40_02243B48

