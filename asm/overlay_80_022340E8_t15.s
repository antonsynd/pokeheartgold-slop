	.include "asm/macros.inc"
	.include "overlay_80_022340E8.inc"
	.include "global.inc"
	.public BattleArcade_GetWonBattlePoints
	.public ov80_02234894
	.public ov80_02234968

    .text

	.text
	thumb_func_start BattleArcade_GetWonBattlePoints
BattleArcade_GetWonBattlePoints: ; 0x02234848
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0x10]
	mov r4, #0
	add r7, r1, #0
	str r2, [sp]
	add r1, r4, #0
	add r5, r3, #0
	bl BattleArcade_GetMonCount
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov80_02234894
	ldr r2, _0223488C ; =ov80_0223BE9E
	add r4, r4, r0
	mov r1, #0
_0223486E:
	ldrb r0, [r2]
	cmp r5, r0
	bge _0223487E
	ldr r0, _02234890 ; =ov80_0223BE9F
	lsl r1, r1, #1
	ldrb r0, [r0, r1]
	add r4, r4, r0
	b _02234886
_0223487E:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #5
	blt _0223486E
_02234886:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223488C: .word ov80_0223BE9E
_02234890: .word ov80_0223BE9F
	thumb_func_end BattleArcade_GetWonBattlePoints

	thumb_func_start ov80_02234894
ov80_02234894: ; 0x02234894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #0xc]
	str r0, [sp]
	mov r4, #0
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r5, r4, #0
	add r6, r4, #0
	cmp r0, #0
	ble _022348F2
_022348AC:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _022348EA
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _022348D6
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022348D6:
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022348EA
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_022348EA:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _022348AC
_022348F2:
	ldr r0, [sp]
	ldrb r0, [r0, #0x10]
	bl BattleArcade_MultiplayerCheck
	cmp r0, #1
	bne _0223494C
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0223494C
_02234906:
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02234944
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02234930
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02234930:
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02234944
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02234944:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _02234906
_0223494C:
	ldr r0, _02234960 ; =ov80_0223BE90
	ldrb r1, [r0, r5]
	mov r0, #0
	add r1, r0, r1
	ldr r0, _02234964 ; =ov80_0223BE88
	ldrb r0, [r0, r4]
	add r0, r1, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234960: .word ov80_0223BE90
_02234964: .word ov80_0223BE88
	thumb_func_end ov80_02234894

	thumb_func_start ov80_02234968
ov80_02234968: ; 0x02234968
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrb r0, [r5, #0x13]
	add r4, r1, #0
	cmp r0, #0x20
	beq _02234A1E
	mov r0, #0xb7
	mov r1, #0x65
	bl NARC_New
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x65
	str r1, [sp, #0xc]
	ldrb r2, [r5, #0x13]
	mov r1, #6
	add r6, r0, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02234A2C ; =ov80_0223BF5A
	ldr r2, [r4]
	ldrh r1, [r1, r3]
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldrb r2, [r5, #0x13]
	mov r1, #6
	add r0, r6, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02234A30 ; =ov80_0223BF5C
	ldr r2, [r4]
	ldrh r1, [r1, r3]
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldrb r2, [r5, #0x13]
	mov r1, #6
	add r0, r6, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02234A34 ; =ov80_0223BF5E
	add r2, sp, #0x10
	ldrh r1, [r1, r3]
	mov r3, #0x65
	bl GfGfxLoader_GetPlttDataFromOpenNarc
	ldr r1, [sp, #0x10]
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	ldr r0, [sp, #0x10]
	mov r1, #1
	lsl r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsr r2, r1, #1
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	add r0, r5, #0
	bl Heap_Free
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r0, r6, #0
	bl NARC_Delete
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_02234A1E:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02234A2C: .word ov80_0223BF5A
_02234A30: .word ov80_0223BF5C
_02234A34: .word ov80_0223BF5E
	thumb_func_end ov80_02234968

