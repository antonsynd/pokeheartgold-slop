	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225A95C
	.public ov48_0225AA38

	.text

	.text
	thumb_func_start ov48_0225A95C
ov48_0225A95C: ; 0x0225A95C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r4, [r5]
	ldrh r0, [r5, #0x18]
	ldrh r6, [r5, #2]
	add r7, r1, #0
	mul r0, r4
	add r1, r6, #0
	bl _s32_div_f
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	add r1, r6, #0
	mul r0, r4
	bl _s32_div_f
	str r0, [sp, #0x1c]
	add r0, r4, #1
	add r1, r6, #0
	bl _s32_div_f
	strh r1, [r5]
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	beq _0225A9F4
	ldrh r1, [r5, #0x1a]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	beq _0225A9F4
	mov r6, #0
	strh r0, [r5, #0x1a]
	add r4, r6, #0
_0225A9A2:
	add r0, r5, r6
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _0225A9EC
	ldrh r0, [r5, #0x1a]
	mov r1, #0x20
	mov r2, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x10]
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	lsr r3, r1, #0x18
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r7]
	bl CopyToBgTilemapRect
	ldr r0, [r7]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
_0225A9EC:
	add r6, r6, #1
	add r4, r4, #6
	cmp r6, #3
	blt _0225A9A2
_0225A9F4:
	add r0, r5, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225AA34
	add r0, r5, #0
	add r0, #0x25
	ldrb r1, [r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	beq _0225AA34
	add r1, r5, #0
	add r1, #0x25
	strb r0, [r1]
	ldr r2, [r5, #0x20]
	add r1, r5, #0
	add r1, #0x26
	ldrb r1, [r1]
	add r5, #0x25
	ldr r3, [r2, #0xc]
	ldrb r2, [r5]
	mov r0, #0x1f
	lsl r1, r1, #5
	lsl r2, r2, #5
	add r2, r3, r2
	mov r3, #0x20
	bl GF_CreateNewVramTransferTask
	cmp r0, #0
	bne _0225AA34
	bl GF_AssertFail
_0225AA34:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov48_0225A95C

	thumb_func_start ov48_0225AA38
ov48_0225AA38: ; 0x0225AA38
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _0225AA48
	bl GF_AssertFail
_0225AA48:
	add r0, r5, r4
	strb r6, [r0, #4]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov48_0225AA38

