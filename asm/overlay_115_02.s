	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_0225F0B4

	.text

	.text
	thumb_func_start ov115_0225F0B4
ov115_0225F0B4: ; 0x0225F0B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp]
	mov r0, #2
	ldrsh r1, [r1, r0]
	cmp r1, #4
	bge _0225F0EE
	ldr r2, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrsh r1, [r2, r1]
	sub r2, r1, #1
	ldr r1, [sp]
	strh r2, [r1]
	add r2, r1, #0
	ldr r1, [sp, #4]
	ldrsh r1, [r2, r1]
	cmp r1, #0
	bgt _0225F0EE
	ldr r1, [sp]
	mov r2, #3
	strh r2, [r1]
	ldrsh r0, [r1, r0]
	add r1, r0, #1
	ldr r0, [sp]
	strh r1, [r0, #2]
_0225F0EE:
	ldr r0, [sp]
	mov r1, #2
	ldrsh r0, [r0, r1]
	mov r4, #0
	cmp r0, #0
	ble _0225F150
	ldr r7, [sp]
	ldr r6, [sp]
	add r7, #0x14
	add r5, r6, #0
_0225F102:
	add r0, r7, #0
	bl ov01_021EFE80
	ldr r1, [r6, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r2, r1, #0
	add r3, r1, #0
	bl ov01_021F074C
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl Sprite_SetAffineScale
	ldr r0, [r5, #4]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225F132
	mov r0, #0
	str r0, [sp, #4]
	b _0225F13E
_0225F132:
	cmp r4, #3
	beq _0225F13E
	ldr r0, [r5, #4]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0225F13E:
	ldr r1, [sp]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r4, r4, #1
	add r7, #0x14
	add r6, #0x14
	add r5, r5, #4
	cmp r4, r0
	blt _0225F102
_0225F150:
	ldr r0, [sp, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov115_0225F0B4

