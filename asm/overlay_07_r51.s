	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221C9C0
	.extern ov07_0221BFD0
	.extern ov07_0221C4A0
	.extern ov07_0221D55C
	.extern ov07_0221DD14
	.extern ov07_0221FAEC
	.extern ov07_0221FF2C

	.text

	.text
	thumb_func_start ov07_0221C9C0
ov07_0221C9C0: ; 0x0221C9C0
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0221CBAC ; =0x0000017E
	add r5, r0, #0
	ldrb r0, [r5, r1]
	mov r6, #0
	cmp r0, #1
	bhs _0221C9DE
	add r0, r5, #0
	mov r2, #1
	add r0, #0x8d
	strb r2, [r0]
	ldrb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0221C9DE:
	add r7, r6, #0
	add r4, r6, #0
_0221C9E2:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0221C9F6
	bl sub_020154B0
	add r6, r6, r0
_0221C9F6:
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #0x10
	blt _0221C9E2
	cmp r6, #0
	bne _0221CA16
	add r0, r5, #0
	add r0, #0x8e
	ldrh r0, [r0]
	cmp r0, #0
	bne _0221CA16
	add r0, r5, #0
	add r0, #0x90
	ldrh r0, [r0]
	cmp r0, #0
	beq _0221CA26
_0221CA16:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8d
	strb r1, [r0]
	ldr r0, _0221CBB0 ; =0x0000017D
	mov r1, #0
	strb r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221CA26:
	bl GF_IsAnySEPlaying
	cmp r0, #0
	beq _0221CA50
	ldr r0, _0221CBB0 ; =0x0000017D
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	cmp r1, #0x5a
	bls _0221CA48
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x8d
	strb r1, [r0]
	b _0221CA50
_0221CA48:
	mov r0, #1
	add r5, #0x8d
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_0221CA50:
	ldr r0, _0221CBB0 ; =0x0000017D
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	add r0, r5, #0
	add r2, r1, #0
_0221CA5E:
	add r1, r1, #1
	str r2, [r0, #0x1c]
	add r0, r0, #4
	cmp r1, #3
	blt _0221CA5E
	add r1, r5, #0
	mov r4, #0
_0221CA6C:
	add r0, r1, #0
	str r4, [r1, #0x28]
	add r0, #0x2c
	strb r4, [r0]
	add r0, r1, #0
	add r0, #0x2d
	strb r4, [r0]
	str r4, [r1, #0x30]
	add r2, r2, #1
	add r1, #0xc
	cmp r2, #3
	blt _0221CA6C
	add r7, r5, #0
	mov r6, #0
_0221CA88:
	add r0, r7, #0
	add r0, #0xcc
	ldr r1, [r0]
	cmp r1, #0
	beq _0221CAA0
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteSystem_FreeResourcesAndManager
_0221CAA0:
	add r0, r7, #0
	add r0, #0xcc
	add r4, r4, #1
	add r7, r7, #4
	str r6, [r0]
	cmp r4, #4
	blt _0221CA88
_0221CAAE:
	add r0, r5, #0
	add r1, r6, #0
	bl ov07_0221D55C
	add r6, r6, #1
	cmp r6, #5
	blt _0221CAAE
	mov r6, #0
	add r4, r6, #0
	add r7, r6, #0
_0221CAC2:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, r0, r4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0221CADE
	bl ov07_0221FF2C
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, r0, r4
	str r7, [r0, #0x1c]
_0221CADE:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _0221CAC2
	mov r0, #6
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #5
	bl ov07_0221DD14
	bl BattleSystem_SetDefaultBlend
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221FAEC
	add r4, r0, #0
	add r0, r5, #0
	bl ov07_0221BFD0
	add r3, r0, #0
	lsl r0, r4, #0x18
	mov r1, #1
	lsr r0, r0, #0x18
	lsl r1, r1, #0xe
	mov r2, #0
	bl BG_ClearCharDataRange
	add r0, r5, #0
	bl ov07_0221C4A0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221FAEC
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
	mov r1, #0x6b
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	mov r0, #0
	bl SetBgPriority
	ldr r1, _0221CBB4 ; =0x000001AD
	mov r0, #1
	ldrb r1, [r5, r1]
	bl SetBgPriority
	ldr r1, _0221CBB8 ; =0x000001AE
	mov r0, #2
	ldrb r1, [r5, r1]
	bl SetBgPriority
	ldr r1, _0221CBBC ; =0x000001AF
	mov r0, #3
	ldrb r1, [r5, r1]
	bl SetBgPriority
	add r0, r5, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0]
	mov r1, #2
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0]
	mov r1, #3
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #3
	ldr r0, [r0]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	mov r0, #0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CBAC: .word 0x0000017E
_0221CBB0: .word 0x0000017D
_0221CBB4: .word 0x000001AD
_0221CBB8: .word 0x000001AE
_0221CBBC: .word 0x000001AF
	thumb_func_end ov07_0221C9C0

