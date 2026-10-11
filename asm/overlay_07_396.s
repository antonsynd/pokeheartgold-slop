	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02226838
	.public ov07_02226880
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C4A8
	.extern ov07_0221FAE8
	.extern ov07_0221FB04
	.extern ov07_022223F0
	.extern ov07_02222440
	.extern ov07_02226804
	.extern ov07_02231FE4
	.extern ov07_022324D8
	.extern ov07_02236670

	.text

	.text
	thumb_func_start ov07_02226838
ov07_02226838: ; 0x02226838
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x20
	add r5, r0, #0
	add r4, r3, #0
	bl ov07_022324D8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov07_02231FE4
	add r0, r5, #0
	mov r1, #0
	str r4, [r7, #0x1c]
	bl ov07_0221C4A8
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221C4A8
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	add r0, r4, #0
	add r1, r6, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r7, #4]
	ldr r1, _0222687C ; =ov07_02226804
	add r2, r7, #0
	bl ov07_0221C410
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222687C: .word ov07_02226804
	thumb_func_end ov07_02226838

	thumb_func_start ov07_02226880
ov07_02226880: ; 0x02226880
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02226892
	cmp r0, #1
	beq _02226910
	b _022269A8
_02226892:
	ldr r1, [r4, #0x34]
	ldr r0, _022269CC ; =ov07_02236670
	lsl r2, r1, #1
	ldrsh r6, [r0, r2]
	add r0, r1, #1
	str r0, [r4, #0x34]
	cmp r6, #0xff
	beq _022268E2
	cmp r6, #0
	bne _022268D6
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_GetPriority
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221FAE8
	cmp r5, r0
	ldr r0, [r4, #4]
	bne _022268CA
	mov r1, #2
	bl ov07_0221FB04
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_SetPriority
	b _022268D6
_022268CA:
	bl ov07_0221FAE8
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_SetPriority
_022268D6:
	ldr r0, [r4, #0x1c]
	add r1, r6, #0
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _022269BE
_022268E2:
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	add r0, r4, #0
	ldr r2, _022269D0 ; =0x00000E38
	add r0, #0x20
	mov r1, #0
	mov r3, #4
	bl ov07_022223F0
	mov r1, #7
	ldr r0, [r4, #0x1c]
	mvn r1, r1
	mov r2, #0x10
	bl ManagedSprite_SetAffineTranslation
	mov r0, #0
	str r0, [r4, #0x34]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022269BE
_02226910:
	add r0, r4, #0
	add r0, #0x20
	bl ov07_02222440
	cmp r0, #1
	bne _0222692A
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ManagedSprite_SetAffineZRotation
	b _022269BE
_0222692A:
	ldr r0, [r4, #0x34]
	cmp r0, #5
	ble _02226938
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022269BE
_02226938:
	add r0, r0, #1
	str r0, [r4, #0x34]
	cmp r0, #5
	bhi _022269BE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222694C: ; jump table
	.short _022269BE - _0222694C - 2 ; case 0
	.short _02226958 - _0222694C - 2 ; case 1
	.short _02226968 - _0222694C - 2 ; case 2
	.short _02226978 - _0222694C - 2 ; case 3
	.short _02226988 - _0222694C - 2 ; case 4
	.short _02226998 - _0222694C - 2 ; case 5
_02226958:
	add r0, r4, #0
	ldr r1, _022269D0 ; =0x00000E38
	ldr r2, _022269D4 ; =0xFFFFF1C8
	add r0, #0x20
	mov r3, #4
	bl ov07_022223F0
	b _022269BE
_02226968:
	add r0, r4, #0
	ldr r1, _022269D4 ; =0xFFFFF1C8
	ldr r2, _022269D0 ; =0x00000E38
	add r0, #0x20
	mov r3, #4
	bl ov07_022223F0
	b _022269BE
_02226978:
	add r0, r4, #0
	ldr r1, _022269D0 ; =0x00000E38
	ldr r2, _022269D4 ; =0xFFFFF1C8
	add r0, #0x20
	mov r3, #4
	bl ov07_022223F0
	b _022269BE
_02226988:
	add r0, r4, #0
	ldr r1, _022269D4 ; =0xFFFFF1C8
	ldr r2, _022269D0 ; =0x00000E38
	add r0, #0x20
	mov r3, #4
	bl ov07_022223F0
	b _022269BE
_02226998:
	add r0, r4, #0
	ldr r1, _022269D0 ; =0x00000E38
	add r0, #0x20
	mov r2, #0
	mov r3, #2
	bl ov07_022223F0
	b _022269BE
_022269A8:
	ldr r0, [r4, #0x1c]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
_022269BE:
	ldr r0, [r4, #0x1c]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0x10]
	bl SpriteSystem_DrawSprites
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022269CC: .word ov07_02236670
_022269D0: .word 0x00000E38
_022269D4: .word 0xFFFFF1C8
	thumb_func_end ov07_02226880

