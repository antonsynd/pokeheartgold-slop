	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230424
	.extern ov40_02230404
	.extern ov40_02244F90

	.text

	.text
	thumb_func_start ov40_02230424
ov40_02230424: ; 0x02230424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x140
	str r0, [sp, #0x18]
	mov r0, #0
	str r1, [sp, #0x1c]
	ldr r3, _02230630 ; =ov40_02244F90
	str r0, [sp, #0x44]
	add r2, sp, #0xe0
	mov r1, #0x30
_02230436:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02230436
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	ldr r4, [r0, #0x28]
	bl sub_02074490
	mov r1, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02230634 ; =0x000186A0
	ldr r2, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x38]
	add r0, r4, #0
	mov r1, #2
	bl SpriteSystem_LoadPaletteBuffer
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02230634 ; =0x000186A0
	ldr r1, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02230634 ; =0x000186A0
	ldr r1, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	mov r0, #6
	mov r6, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x30]
	str r6, [sp, #0x40]
	bl ov40_02230404
	cmp r0, #1
	bne _022304C8
	mov r0, #3
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	mov r0, #1
	str r0, [sp, #0x40]
_022304C8:
	ldr r4, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	cmp r1, r0
	bge _0223050E
	lsl r1, r6, #2
	add r0, sp, #0x7c
	add r5, r0, r1
	add r0, sp, #0x4c
	add r7, r0, r1
_022304DC:
	mov r0, #0xff
	str r0, [r5]
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0203088C
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x18]
	mov r1, #1
	ldr r0, [r0, #4]
	add r2, r4, #0
	bl sub_0203088C
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq _02230506
	stmia r5!, {r1}
	stmia r7!, {r0}
	add r6, r6, #1
_02230506:
	ldr r0, [sp, #0x2c]
	add r4, r4, #1
	cmp r4, r0
	blt _022304DC
_0223050E:
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	cmp r6, r1
	bge _02230530
	lsl r2, r6, #2
	add r1, sp, #0x7c
	add r3, r1, r2
	add r1, sp, #0x4c
	add r4, r1, r2
	mov r2, #0
_02230522:
	stmia r3!, {r2}
	ldr r1, [sp, #0x2c]
	add r0, r0, #1
	stmia r4!, {r2}
	add r6, r6, #1
	cmp r0, r1
	blt _02230522
_02230530:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x2c]
	cmp r0, #0xc
	ble _022304C8
	add r0, sp, #0x7c
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	mov r1, #0x30
	add r2, sp, #0xe0
	mul r1, r0
	ldr r5, [sp, #0x18]
	mov r6, #0
	add r7, sp, #0x4c
	add r4, r2, r1
_02230558:
	ldr r0, [sp, #0x18]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _02230616
	ldr r0, [r7]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	bl GetMonIconNaixEx
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #0x44]
	ldr r0, _02230634 ; =0x000186A0
	mov r2, #0x14
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r0, sp, #0xac
	add r2, sp, #0xac
	add r1, #8
	strh r1, [r0]
	mov r0, #2
	ldrsh r1, [r4, r0]
	add r0, sp, #0xac
	sub r1, #0xc
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	add r0, r1, #0
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb8]
	mov r0, #1
	str r0, [sp, #0xbc]
	add r0, r1, #0
	str r0, [sp, #0xd8]
	str r0, [sp, #0xdc]
	ldr r1, [sp, #0x44]
	ldr r0, _02230634 ; =0x000186A0
	add r0, r1, r0
	str r0, [sp, #0xc0]
	ldr r0, _02230634 ; =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc4]
	str r0, [sp, #0xc8]
	str r0, [sp, #0xcc]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xd0]
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x18]
	bl SpriteSystem_NewSprite
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	mov r2, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverrideOffset
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0xc]
	bl ManagedSprite_TickFrame
	mov r1, #0xc
	ldr r0, [r5, #0xc]
	sub r1, r1, r6
	bl ManagedSprite_SetDrawPriority
	ldr r0, [sp, #0x44]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x44]
_02230616:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	add r7, r7, #4
	add r0, r0, #4
	add r4, r4, #4
	str r0, [sp, #0x28]
	cmp r6, #0xc
	blt _02230558
	add sp, #0x140
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02230630: .word ov40_02244F90
_02230634: .word 0x000186A0
	thumb_func_end ov40_02230424

