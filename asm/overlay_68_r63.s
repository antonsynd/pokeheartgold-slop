	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7898
	.public ov68_021E7910
	.public ov68_021E797C
	.public ov68_021E7A18
	.public ov68_021E7A90
	.public ov68_021E7AB4
	.public ov68_021E7AD8
	.extern ov68_021E66A0

	.text

	.text
	thumb_func_start ov68_021E7898
ov68_021E7898: ; 0x021E7898
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #1
	bne _021E78D6
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl GridInputHandler_SetEnabledFlag
	add r0, r4, #0
	add r0, #0x88
	bl ScheduleWindowCopyToVram
	mov r0, #4
	str r0, [sp]
	mov r3, #8
	str r3, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x14
	bl ov68_021E66A0
	ldr r0, _021E790C ; =0x000001CE
	mov r1, #1
	add sp, #0xc
	strh r1, [r4, r0]
	pop {r3, r4, pc}
_021E78D6:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl GridInputHandler_ClearEnabledFlag
	add r0, r4, #0
	add r0, #0x88
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x14
	mov r3, #8
	bl ov68_021E66A0
	mov r1, #0
	ldr r0, _021E790C ; =0x000001CE
	strh r1, [r4, r0]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E790C: .word 0x000001CE
	thumb_func_end ov68_021E7898

	thumb_func_start ov68_021E7910
ov68_021E7910: ; 0x021E7910
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #4
	bhs _021E7936
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #4
	bl GridInputHandler_ClearEnabledFlag
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl GridInputHandler_ClearEnabledFlag
	pop {r4, pc}
_021E7936:
	ldr r1, [r4]
	ldrh r1, [r1, #0x16]
	cmp r1, #0
	bne _021E794A
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #5
	bl GridInputHandler_ClearEnabledFlag
	b _021E7954
_021E794A:
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #5
	bl GridInputHandler_SetEnabledFlag
_021E7954:
	ldr r0, [r4]
	ldrh r0, [r0, #0x16]
	add r2, r0, #4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r2, r1
	blt _021E7970
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #4
	bl GridInputHandler_ClearEnabledFlag
	pop {r4, pc}
_021E7970:
	add r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #4
	bl GridInputHandler_SetEnabledFlag
	pop {r4, pc}
	thumb_func_end ov68_021E7910

	thumb_func_start ov68_021E797C
ov68_021E797C: ; 0x021E797C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	cmp r4, #0
	ldr r0, [r5]
	ble _021E79EA
	ldrh r0, [r0, #0x16]
	add r2, r0, #4
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r2, r1
	bge _021E79D2
	sub r0, #0x94
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetAnim
	b _021E79DC
_021E79D2:
	sub r0, #0x94
	ldr r0, [r5, r0]
	mov r1, #3
	bl ManagedSprite_SetAnim
_021E79DC:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #4
	bl ManagedSprite_SetAnim
	pop {r3, r4, r5, pc}
_021E79EA:
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _021E79FE
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #7
	bl ManagedSprite_SetAnim
	b _021E7A0A
_021E79FE:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl ManagedSprite_SetAnim
_021E7A0A:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnim
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_021E797C

	thumb_func_start ov68_021E7A18
ov68_021E7A18: ; 0x021E7A18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r6, #0
	mov r4, #4
_021E7A24:
	cmp r6, r7
	bne _021E7A44
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #8
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
	b _021E7A82
_021E7A44:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r6, r0
	blo _021E7A6A
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #4
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
	b _021E7A82
_021E7A6A:
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r2, r4, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl ov68_021E66A0
_021E7A82:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blo _021E7A24
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov68_021E7A18

	thumb_func_start ov68_021E7A90
ov68_021E7A90: ; 0x021E7A90
	mov r2, #0x1d
	lsl r2, r2, #4
	add r2, r0, r2
	mov r0, #0x18
	strb r0, [r2]
	mov r0, #0x14
	strb r0, [r2, #1]
	mov r0, #8
	strb r0, [r2, #2]
	mov r0, #4
	strb r0, [r2, #3]
	mov r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	str r1, [r2, #8]
	mov r0, #0xd
	bx lr
	.balign 4, 0
	thumb_func_end ov68_021E7A90

	thumb_func_start ov68_021E7AB4
ov68_021E7AB4: ; 0x021E7AB4
	mov r2, #0x1d
	lsl r2, r2, #4
	add r2, r0, r2
	mov r0, #0xf
	strb r0, [r2]
	mov r0, #0x14
	strb r0, [r2, #1]
	mov r0, #8
	strb r0, [r2, #2]
	mov r0, #4
	strb r0, [r2, #3]
	mov r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	str r1, [r2, #8]
	mov r0, #0xd
	bx lr
	.balign 4, 0
	thumb_func_end ov68_021E7AB4

	thumb_func_start ov68_021E7AD8
ov68_021E7AD8: ; 0x021E7AD8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #4
	add r4, r5, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021E7AF4
	cmp r0, #1
	beq _021E7B1A
	cmp r0, #2
	beq _021E7B52
	b _021E7B64
_021E7AF4:
	ldrb r0, [r4, #2]
	mov r1, #7
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r5, #4]
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #4]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	b _021E7B64
_021E7B1A:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #4
	bne _021E7B64
	ldrb r0, [r4, #2]
	mov r1, #7
	str r0, [sp]
	ldrb r0, [r4, #3]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrb r2, [r4]
	ldrb r3, [r4, #1]
	ldr r0, [r5, #4]
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #4]
	mov r1, #7
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	b _021E7B64
_021E7B52:
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #2
	bne _021E7B64
	add sp, #0xc
	ldr r0, [r4, #8]
	pop {r4, r5, pc}
_021E7B64:
	mov r0, #0xd
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov68_021E7AD8

