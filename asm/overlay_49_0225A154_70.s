	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B450
	.public ov49_0225BABC
	.public ov49_0225BB84
	.public ov49_0225C844

    .text

	thumb_func_start ov49_0225B450
ov49_0225B450: ; 0x0225B450
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x20]
	add r5, r0, #0
	add r0, r3, #0
	add r7, r1, #0
	add r6, r2, #0
	bl PlayerProfile_GetTrainerGender
	str r0, [sp, #4]
	mov r0, #0xd1
	add r1, r4, #0
	bl NARC_New
	mov r2, #0x53
	lsl r2, r2, #2
	str r0, [r5, r2]
	str r4, [sp]
	ldr r2, [r5, r2]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225BABC
	mov r2, #0x53
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r4, #0
	bl ov49_0225BB84
	mov r2, #0x45
	lsl r2, r2, #2
	add r0, r5, r2
	add r2, #0x38
	ldr r2, [r5, r2]
	add r1, r6, #0
	add r3, r4, #0
	bl ov49_0225C844
	mov r1, #0
	strb r1, [r5, #2]
	strb r1, [r5, #1]
	ldrh r0, [r7, #6]
	cmp r0, #0
	bne _0225B4DC
	mov r0, #4
	strb r1, [r5]
	bl BG_SetMaskColor
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225B4DC:
	mov r0, #5
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225B450

