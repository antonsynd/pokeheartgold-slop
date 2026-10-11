	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7AD4
	.public ov99_021E7BC8
	.public ov99_021E7C58
	.public ov99_021E9F54

	.text

	thumb_func_start ov99_021E7AD4
ov99_021E7AD4: ; 0x021E7AD4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r7, r2, #0
	lsl r2, r1, #0xd
	lsr r2, r2, #0x1b
	cmp r4, #0
	beq _021E7AFA
	ldr r3, _021E7BB8 ; =0xFFF83FFF
	and r1, r3
	add r3, r2, #1
	lsl r3, r3, #0x1b
	lsr r3, r3, #0xd
	orr r1, r3
	str r1, [r5, r0]
	b _021E7B0C
_021E7AFA:
	cmp r2, #0
	beq _021E7B0C
	ldr r3, _021E7BB8 ; =0xFFF83FFF
	and r1, r3
	sub r3, r2, #1
	lsl r3, r3, #0x1b
	lsr r3, r3, #0xd
	orr r1, r3
	str r1, [r5, r0]
_021E7B0C:
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r1, r0, #0x1b
	lsl r0, r0, #0xd
	lsr r3, r1, #0x1b
	lsr r0, r0, #0x1b
	cmp r0, r3
	bhi _021E7B20
	add r3, r0, #0
_021E7B20:
	mov r6, #0xfd
	lsl r6, r6, #2
	ldr r1, [r5, r6]
	ldr r0, _021E7BB8 ; =0xFFF83FFF
	and r0, r1
	lsl r1, r3, #0x1b
	lsr r1, r1, #0xd
	orr r0, r1
	str r0, [r5, r6]
	ldr r0, [r5, r6]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1b
	cmp r0, r2
	beq _021E7BB4
	ldr r0, _021E7BBC ; =0x000005DC
	bl PlaySE
	cmp r4, #0
	bne _021E7B4A
	mov r2, #1
	b _021E7B4C
_021E7B4A:
	mov r2, #0
_021E7B4C:
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	ldr r1, _021E7BC0 ; =0xF7FFFFFF
	lsl r2, r2, #0x1f
	and r1, r3
	lsr r2, r2, #4
	orr r1, r2
	str r1, [r5, r0]
	mov r1, #1
	ldr r2, [r5, r0]
	lsl r1, r1, #0x1c
	orr r1, r2
	str r1, [r5, r0]
	add r0, #8
	ldr r0, [r5, r0]
	mov r6, #0
	bl GridInputHandler_GetNextInput
	cmp r7, #0
	beq _021E7B80
	cmp r0, #0x1e
	bne _021E7B96
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E7B96
_021E7B80:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r4, #0
	beq _021E7B90
	sub r0, r0, #5
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021E7B96
_021E7B90:
	add r0, r0, #5
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021E7B96:
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021E7C58
	ldr r0, _021E7BC4 ; =0x00000408
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
_021E7BB4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7BB8: .word 0xFFF83FFF
_021E7BBC: .word 0x000005DC
_021E7BC0: .word 0xF7FFFFFF
_021E7BC4: .word 0x00000408
	thumb_func_end ov99_021E7AD4

	thumb_func_start ov99_021E7BC8
ov99_021E7BC8: ; 0x021E7BC8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GridInputHandler_HandleInput_AllowHold
	add r6, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	ldr r0, _021E7C50 ; =ov99_021E9F54
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E7C12
	cmp r0, #0
	bne _021E7C02
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov99_021E7AD4
	b _021E7C4C
_021E7C02:
	cmp r0, #1
	bne _021E7C4C
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov99_021E7AD4
	b _021E7C4C
_021E7C12:
	cmp r6, r1
	bne _021E7C3E
	cmp r4, #0x1e
	bhs _021E7C3E
	ldr r0, _021E7C54 ; =gSystem
	ldr r0, [r0, #0x4c]
	cmp r0, #0x20
	bne _021E7C2E
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov99_021E7AD4
	b _021E7C4C
_021E7C2E:
	cmp r0, #0x10
	bne _021E7C4C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov99_021E7AD4
	b _021E7C4C
_021E7C3E:
	cmp r4, #0x1e
	bne _021E7C4C
	ldr r0, _021E7C54 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	bne _021E7C4E
_021E7C4C:
	mov r0, #0
_021E7C4E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E7C50: .word ov99_021E9F54
_021E7C54: .word gSystem
	thumb_func_end ov99_021E7BC8

	thumb_func_start ov99_021E7C58
ov99_021E7C58: ; 0x021E7C58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	ldr r0, _021E7C9C ; =0x00000408
	add r2, sp, #0
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _021E7CA0 ; =0xF807FFFF
	and r2, r0
	lsl r0, r4, #0x18
	lsr r0, r0, #5
	orr r0, r2
	str r0, [r5, r1]
	ldr r0, _021E7CA4 ; =0x000005DC
	bl PlaySE
	pop {r3, r4, r5, pc}
	nop
_021E7C9C: .word 0x00000408
_021E7CA0: .word 0xF807FFFF
_021E7CA4: .word 0x000005DC
	thumb_func_end ov99_021E7C58

