	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221F430
	.public ov07_0221F4CC
	.public ov07_0221F514
	.public ov07_0221F574
	.public ov07_0221F5BC
	.public ov07_0221F604
	.public ov07_0221F710
	.public ov07_0221F7C4
	.public ov07_0221F7F0
	.extern ov07_0221C470
	.extern ov07_02221F80
	.extern ov07_0222304C

	.text

	.text
	thumb_func_start ov07_0221F430
ov07_0221F430: ; 0x0221F430
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r6, r5, #0
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r7, [r0]
	add r0, r0, #4
	lsl r4, r1, #2
	add r6, #0xcc
	str r0, [r5, #0x18]
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _0221F458
	bl GF_AssertFail
_0221F458:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteManager_New
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	cmp r0, #0
	bne _0221F472
	bl GF_AssertFail
_0221F472:
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r1, [r6, r4]
	add r0, #0xac
	ldr r0, [r0]
	add r2, r7, #0
	bl SpriteSystem_InitSprites
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteSystem_GetRenderer
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl G2dRenderer_SetSubSurfaceCoords
	add r0, r5, #0
	mov r1, #0
	add r2, sp, #0
	add r0, #0x18
_0221F4A4:
	ldr r3, [r5, #0x18]
	add r1, r1, #1
	ldr r3, [r3]
	str r3, [r2]
	ldr r3, [r0]
	add r2, r2, #4
	add r3, r3, #4
	str r3, [r0]
	cmp r1, #6
	blt _0221F4A4
	add r5, #0xc0
	ldr r0, [r5]
	ldr r1, [r6, r4]
	add r0, #0xac
	ldr r0, [r0]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_0221F430

	thumb_func_start ov07_0221F4CC
ov07_0221F4CC: ; 0x0221F4CC
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r4, #0x6e
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r3, [r0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0221F510 ; =0x00001388
	lsl r1, r1, #2
	add r0, r3, r0
	str r0, [sp, #8]
	add r0, r2, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r2, r1
	add r0, #0xac
	add r1, #0xcc
	lsl r4, r4, #2
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2, r4]
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0221F510: .word 0x00001388
	thumb_func_end ov07_0221F4CC

	thumb_func_start ov07_0221F514
ov07_0221F514: ; 0x0221F514
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r0, r0, #4
	str r0, [r4, #0x18]
	ldr r3, [r0]
	add r0, r0, #4
	str r0, [r4, #0x18]
	ldr r1, [r0]
	add r2, r0, #4
	str r2, [r4, #0x18]
	ldr r0, [r2]
	add r2, r2, #4
	str r2, [r4, #0x18]
	mov r2, #0x6f
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r3, r3, #2
	str r2, [sp]
	str r1, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0221F570 ; =0x00001388
	add r2, r4, #0
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r2, #0xc0
	ldr r2, [r2]
	add r0, r4, #0
	add r3, r4, r3
	add r0, #0xc8
	add r2, #0xac
	add r3, #0xcc
	ldr r0, [r0]
	ldr r2, [r2]
	ldr r3, [r3]
	mov r1, #2
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	add sp, #0x18
	pop {r4, pc}
	nop
_0221F570: .word 0x00001388
	thumb_func_end ov07_0221F514

	thumb_func_start ov07_0221F574
ov07_0221F574: ; 0x0221F574
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r4, #7
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r3, [r0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, _0221F5B8 ; =0x00001388
	lsl r1, r1, #2
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r2, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r2, r1
	add r0, #0xac
	add r1, #0xcc
	lsl r4, r4, #6
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2, r4]
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	add sp, #8
	pop {r4, pc}
	nop
_0221F5B8: .word 0x00001388
	thumb_func_end ov07_0221F574

	thumb_func_start ov07_0221F5BC
ov07_0221F5BC: ; 0x0221F5BC
	push {r4, lr}
	sub sp, #8
	add r2, r0, #0
	ldr r0, [r2, #0x18]
	mov r4, #0x71
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	ldr r3, [r0]
	add r0, r0, #4
	str r0, [r2, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, _0221F600 ; =0x00001388
	lsl r1, r1, #2
	add r0, r3, r0
	str r0, [sp, #4]
	add r0, r2, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r2, r1
	add r0, #0xac
	add r1, #0xcc
	lsl r4, r4, #2
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2, r4]
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #8
	pop {r4, pc}
	nop
_0221F600: .word 0x00001388
	thumb_func_end ov07_0221F5BC

	thumb_func_start ov07_0221F604
ov07_0221F604: ; 0x0221F604
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r1, r1, #4
	str r1, [r4, #0x18]
	ldr r5, [r1]
	add r2, r1, #4
	str r2, [r4, #0x18]
	ldr r1, [r2]
	str r1, [sp]
	add r1, r2, #4
	str r1, [r4, #0x18]
	bl ov07_0221C470
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ov07_02221F80
	add r1, sp, #0xc
	strh r0, [r1]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov07_02221F80
	add r2, sp, #0xc
	strh r0, [r2, #2]
	mov r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r0, #0x64
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x38]
	add r0, r4, #0
	ldr r3, _0221F70C ; =0x00001388
	str r1, [sp, #0x18]
	str r1, [sp, #0x3c]
	add r2, sp, #0xc
	add r0, #0x18
_0221F65C:
	ldr r6, [r4, #0x18]
	add r1, r1, #1
	ldr r6, [r6]
	add r6, r6, r3
	str r6, [r2, #0x14]
	ldr r6, [r0]
	add r2, r2, #4
	add r6, r6, #4
	str r6, [r0]
	cmp r1, #6
	blt _0221F65C
	mov r0, #0x41
	lsl r0, r0, #2
	add r3, sp, #0xc
	add r2, r4, r0
	mov r6, #6
_0221F67C:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0221F67C
	ldr r0, [r3]
	lsl r7, r5, #2
	str r0, [r2]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0xcc
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r1, [sp, #8]
	add r0, #0xac
	ldr r0, [r0]
	ldr r1, [r1, r7]
	add r2, sp, #0xc
	bl SpriteSystem_NewSprite
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r2, r4, #0
	ldr r3, [r0]
	add r0, r0, #4
	add r2, #0x18
	mov r6, #0
	str r0, [r4, #0x18]
	cmp r3, #0
	ble _0221F6D4
	add r5, r4, #0
_0221F6BC:
	ldr r0, [r4, #0x18]
	add r6, r6, #1
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0]
	ldr r0, [r2]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [r2]
	cmp r6, r3
	blt _0221F6BC
_0221F6D4:
	cmp r6, #0xa
	bge _0221F6EC
	lsl r0, r6, #2
	add r2, r4, r0
	mov r1, #0
_0221F6DE:
	add r0, r2, #0
	add r0, #0x94
	add r6, r6, #1
	add r2, r2, #4
	str r1, [r0]
	cmp r6, #0xa
	blt _0221F6DE
_0221F6EC:
	ldr r0, [sp]
	bl ov07_0222304C
	add r5, r0, #0
	add r0, r4, #0
	add r4, #0xc0
	ldr r1, [r4]
	ldr r2, [sp, #8]
	add r1, #0xac
	ldr r1, [r1]
	ldr r2, [r2, r7]
	ldr r3, [sp, #4]
	blx r5
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221F70C: .word 0x00001388
	thumb_func_end ov07_0221F604

	thumb_func_start ov07_0221F710
ov07_0221F710: ; 0x0221F710
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r7, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	bl ov07_0221C470
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov07_02221F80
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov07_02221F80
	add r2, sp, #0
	strh r0, [r2, #2]
	mov r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	ldr r3, _0221F7C0 ; =0x00001388
	str r1, [sp, #0xc]
	str r1, [sp, #0x30]
	add r2, sp, #0
	add r0, #0x18
_0221F766:
	ldr r6, [r5, #0x18]
	add r1, r1, #1
	ldr r6, [r6]
	add r6, r6, r3
	str r6, [r2, #0x14]
	ldr r6, [r0]
	add r2, r2, #4
	add r6, r6, #4
	str r6, [r0]
	cmp r1, #6
	blt _0221F766
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, sp, #0
	add r3, r5, r0
	mov r2, #6
_0221F786:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221F786
	ldr r0, [r6]
	lsl r1, r4, #2
	str r0, [r3]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r5, r1
	add r0, #0xac
	add r1, #0xcc
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0
	bl SpriteSystem_NewSprite
	add r5, #0xdc
	lsl r4, r7, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0221F7BA
	bl GF_AssertFail
_0221F7BA:
	str r6, [r5, r4]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221F7C0: .word 0x00001388
	thumb_func_end ov07_0221F710

	thumb_func_start ov07_0221F7C4
ov07_0221F7C4: ; 0x0221F7C4
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0x18]
	add r5, r0, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1]
	add r1, r1, #4
	add r5, #0xcc
	lsl r4, r2, #2
	str r1, [r0, #0x18]
	ldr r1, [r5, r4]
	cmp r1, #0
	beq _0221F7EA
	add r0, #0xc0
	ldr r0, [r0]
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteSystem_FreeResourcesAndManager
_0221F7EA:
	mov r0, #0
	str r0, [r5, r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov07_0221F7C4

	thumb_func_start ov07_0221F7F0
ov07_0221F7F0: ; 0x0221F7F0
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r3, [r1]
	add r2, r1, #4
	str r2, [r0, #0x18]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r0, #0x18]
	lsl r2, r3, #2
	add r2, r0, r2
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r3, _0221F810 ; =ManagedSprite_SetDrawFlag
	ldr r0, [r2, r0]
	bx r3
	.balign 4, 0
_0221F810: .word ManagedSprite_SetDrawFlag
	thumb_func_end ov07_0221F7F0

