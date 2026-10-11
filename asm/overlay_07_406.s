	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222719C
	.public ov07_022271DC
	.public ov07_02227248
	.public ov07_022272D0
	.public ov07_02227300
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C4A8
	.extern ov07_0221C4E8
	.extern ov07_0221FAF8
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_02222644
	.extern ov07_02222CCC
	.extern ov07_02222D3C
	.extern ov07_02222D88
	.extern ov07_02231FE4
	.extern ov07_022324D8
	.extern ov07_022366D2
	.extern ov07_022378B0

	.text

	.text
	thumb_func_start ov07_0222719C
ov07_0222719C: ; 0x0222719C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r2, r0, #0
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	bne _022271B8
	ldr r0, [r6, #4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
_022271B8:
	sub r0, r0, #1
	str r0, [r6, #0x2c]
	mov r4, #0
	add r5, r6, #0
_022271C0:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _022271CA
	bl ManagedSprite_TickFrame
_022271CA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _022271C0
	ldr r0, [r6, #0xc]
	bl SpriteSystem_DrawSprites
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov07_0222719C

	thumb_func_start ov07_022271DC
ov07_022271DC: ; 0x022271DC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x34
	add r4, r0, #0
	bl ov07_022324D8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov07_02231FE4
	add r0, r4, #0
	mov r1, #0
	bl ov07_0221C4A8
	cmp r0, #0
	bne _02227200
	mov r0, #3
	b _02227208
_02227200:
	add r0, r4, #0
	mov r1, #0
	bl ov07_0221C4A8
_02227208:
	ldr r5, _02227240 ; =ov07_022378B0
	str r0, [r7, #0x2c]
	mov r6, #0
	add r4, r7, #0
_02227210:
	ldr r0, [r7, #4]
	add r1, r6, #0
	bl ov07_0221C4E8
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _02227224
	ldr r1, [r5]
	bl ManagedSprite_SetDrawPriority
_02227224:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _02227210
	ldr r0, [r7, #4]
	ldr r1, _02227244 ; =ov07_0222719C
	add r2, r7, #0
	bl ov07_0221C410
	add r1, r7, #0
	bl ov07_0222719C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02227240: .word ov07_022378B0
_02227244: .word ov07_0222719C
	thumb_func_end ov07_022271DC

	thumb_func_start ov07_02227248
ov07_02227248: ; 0x02227248
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0222725C
	cmp r0, #1
	beq _022272A4
	b _022272BC
_0222725C:
	mov r0, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ov07_0221FAF8
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ov07_02222D88
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ov07_0221BFD0
	mov r1, #0xc8
	str r1, [sp]
	mov r3, #2
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0xa0
	add r2, r1, #0
	add r2, #0xb5
	lsl r3, r3, #0x10
	bl ov07_02222CCC
	str r0, [r5, #0x24]
	ldrb r0, [r5, #8]
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_022272A4:
	ldr r0, [r5]
	add r1, r0, #1
	str r1, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _022272CA
	ldr r0, [r5, #0x24]
	bl ov07_02222D3C
	ldrb r0, [r5, #8]
	add r0, r0, #1
	strb r0, [r5, #8]
_022272BC:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	bl ov07_0221C448
	add r0, r5, #0
	bl Heap_Free
_022272CA:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov07_02227248

	thumb_func_start ov07_022272D0
ov07_022272D0: ; 0x022272D0
	push {r3, r4, r5, lr}
	mov r1, #0x28
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov07_02231FE4
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r1, _022272FC ; =ov07_02227248
	add r2, r4, #0
	bl ov07_0221C410
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022272FC: .word ov07_02227248
	thumb_func_end ov07_022272D0

	thumb_func_start ov07_02227300
ov07_02227300: ; 0x02227300
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldrb r0, [r4]
	cmp r0, #3
	bls _02227310
	b _02227482
_02227310:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222731C: ; jump table
	.short _02227324 - _0222731C - 2 ; case 0
	.short _022273D6 - _0222731C - 2 ; case 1
	.short _022273F4 - _0222731C - 2 ; case 2
	.short _0222744E - _0222731C - 2 ; case 3
_02227324:
	ldrb r0, [r4, #4]
	mov r7, #0
	add r1, r7, #0
	add r0, r0, #1
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov07_0221C4A8
	cmp r0, #0
	ble _0222739A
	ldr r6, _022274F0 ; =ov07_022366D2
	add r5, r4, #0
_0222733C:
	add r1, sp, #0x10
	ldr r0, [r5, #0x14]
	add r1, #2
	add r2, sp, #0x10
	bl ManagedSprite_GetPositionXY
	ldrb r1, [r4, #4]
	ldrb r0, [r6]
	cmp r1, r0
	blo _02227380
	add r0, r4, r7
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrb r2, [r0, #1]
	ldrb r1, [r6, #1]
	cmp r2, r1
	blo _02227388
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r5, #0x14]
	bl ManagedSprite_GetDrawFlag
	cmp r0, #1
	ldr r0, [r5, #0x14]
	bne _02227378
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _02227388
_02227378:
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	b _02227388
_02227380:
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_02227388:
	ldr r0, [r4, #8]
	mov r1, #0
	add r5, r5, #4
	add r6, r6, #2
	add r7, r7, #1
	bl ov07_0221C4A8
	cmp r7, r0
	blt _0222733C
_0222739A:
	ldrb r0, [r4, #4]
	cmp r0, #0x2d
	blo _02227438
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _022273CA
	add r6, r4, #0
	mov r7, #1
_022273B2:
	ldr r0, [r6, #0x14]
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #8]
	mov r1, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov07_0221C4A8
	cmp r5, r0
	blt _022273B2
_022273CA:
	mov r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022274BC
_022273D6:
	mov r1, #0x64
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x20
	mov r2, #0x3c
	add r3, r1, #0
	bl ov07_02222590
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022274BC
_022273F4:
	add r0, r4, #0
	add r0, #0x20
	bl ov07_0222260C
	cmp r0, #1
	bne _0222743A
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _022274BC
	add r7, r4, #0
	add r6, r4, #0
	add r7, #0x20
_02227414:
	add r0, r7, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov07_02222644
	ldr r0, [r6, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl ManagedSprite_SetAffineScale
	ldr r0, [r4, #8]
	mov r1, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov07_0221C4A8
	cmp r5, r0
	blt _02227414
_02227438:
	b _022274BC
_0222743A:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	cmp r0, #0x2d
	blo _022274BC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022274BC
_0222744E:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _02227458
	sub r0, r0, #1
	strb r0, [r4, #5]
_02227458:
	ldrb r0, [r4, #6]
	cmp r0, #0xf
	bhs _02227462
	add r0, r0, #1
	strb r0, [r4, #6]
_02227462:
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _02227474
	ldrb r0, [r4, #6]
	cmp r0, #0xf
	bne _02227474
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02227474:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _022274F4 ; =0x04000052
	strh r1, [r0]
	b _022274BC
_02227482:
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _022274AA
	add r6, r4, #0
	add r7, r5, #0
_02227494:
	ldr r0, [r6, #0x14]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov07_0221C4A8
	cmp r5, r0
	blt _02227494
_022274AA:
	ldr r0, [r4, #8]
	ldr r1, [sp, #0xc]
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_022274BC:
	mov r5, #0
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov07_0221C4A8
	cmp r0, #0
	ble _022274E6
	add r6, r4, #0
	add r7, r5, #0
_022274CE:
	ldr r0, [r6, #0x14]
	ldr r0, [r0]
	bl Sprite_TickFrame
	ldr r0, [r4, #8]
	add r1, r7, #0
	add r6, r6, #4
	add r5, r5, #1
	bl ov07_0221C4A8
	cmp r5, r0
	blt _022274CE
_022274E6:
	ldr r0, [r4, #0x10]
	bl SpriteSystem_DrawSprites
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022274F0: .word ov07_022366D2
_022274F4: .word 0x04000052
	thumb_func_end ov07_02227300

