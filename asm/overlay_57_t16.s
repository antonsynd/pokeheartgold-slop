	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238044
	.public ov57_0223809C
	.public ov57_02238134
	.public ov57_02238260
	.public ov57_022382F8
	.extern ov57_02237EB8
	.extern ov57_022383F8
	.extern ov57_02238438
	.extern ov57_0223848C
	.extern ov57_02238508

	.text

	.text
	thumb_func_start ov57_02238044
ov57_02238044: ; 0x02238044
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xd3
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	lsl r7, r7, #2
_02238050:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _02238090
	cmp r4, r6
	bne _02238068
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawPriority
	b _02238090
_02238068:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetDrawPriority
	add r1, r0, #0
	bne _02238084
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #1
	bl ManagedSprite_SetDrawPriority
	b _02238090
_02238084:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #2
	bl ManagedSprite_SetDrawPriority
_02238090:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _02238050
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov57_02238044

	thumb_func_start ov57_0223809C
ov57_0223809C: ; 0x0223809C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r1, r0, #0
	add r1, #0xdc
	ldr r4, [r1]
	add r1, r0, #0
	add r1, #0xe0
	ldr r5, [r1]
	mov r1, #0x57
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _02238124 ; =0x0000520E
	add r6, r2, #0
	str r1, [sp, #0x14]
	add r0, #0xe8
	ldr r0, [r0]
	mov r1, #3
	add r2, r4, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBuffer
	add r0, r7, #0
	bl sub_02091054
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02238128 ; =0x00004E20
	add r1, r5, #0
	add r0, r6, r0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x57
	bl SpriteSystem_LoadCharResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223812C ; =0x00005616
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x57
	mov r3, #0x26
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _02238130 ; =0x000059FC
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x57
	mov r3, #0x24
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238124: .word 0x0000520E
_02238128: .word 0x00004E20
_0223812C: .word 0x00005616
_02238130: .word 0x000059FC
	thumb_func_end ov57_0223809C

	thumb_func_start ov57_02238134
ov57_02238134: ; 0x02238134
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	mov r1, #0xa2
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02238146
	b _02238254
_02238146:
	ldr r0, [sp]
	mov r7, #0
	str r7, [r0, r1]
	add r4, sp, #0x54
	add r5, sp, #0x34
	add r6, r0, #0
_02238152:
	mov r0, #0xff
	str r0, [r4]
	str r0, [r5]
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223816A
	bl ManagedSprite_GetDrawPriority
	str r0, [r4]
	str r7, [r5]
_0223816A:
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	add r6, #0x10
	cmp r7, #8
	blt _02238152
	mov r0, #0
	mov ip, r0
_0223817A:
	mov r0, ip
	mov r3, #7
	cmp r0, #7
	bge _022381AA
	add r4, sp, #0x70
	add r5, sp, #0x50
_02238186:
	sub r7, r4, #4
	ldr r2, [r4]
	ldr r0, [r7]
	cmp r0, r2
	blt _0223819E
	ldr r1, [r5]
	sub r6, r5, #4
	str r0, [r4]
	ldr r0, [r6]
	str r0, [r5]
	str r2, [r7]
	str r1, [r6]
_0223819E:
	sub r3, r3, #1
	mov r0, ip
	sub r4, r4, #4
	sub r5, r5, #4
	cmp r3, r0
	bgt _02238186
_022381AA:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #7
	blt _0223817A
	mov r3, #0x35
	lsl r3, r3, #4
	ldr r0, [sp]
	mov r2, #0
	add r1, sp, #0x1c
	add r4, r3, #1
	add r5, r3, #2
_022381C2:
	ldrb r6, [r0, r3]
	add r2, r2, #1
	strb r6, [r1]
	ldrb r6, [r0, r4]
	strb r6, [r1, #1]
	ldrb r6, [r0, r5]
	add r0, #0x10
	strb r6, [r1, #2]
	add r1, r1, #3
	cmp r2, #8
	blt _022381C2
	add r3, sp, #0x1c
	add r2, sp, #4
	mov r1, #0x18
_022381DE:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _022381DE
	ldr r5, [sp]
	mov r6, #0
	add r4, sp, #0x34
	add r7, sp, #4
_022381F2:
	ldr r1, [r4]
	cmp r1, #0xff
	bne _0223820A
	mov r0, #0x35
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, _02238258 ; =0x00000352
	strb r1, [r5, r0]
	b _0223824A
_0223820A:
	lsl r0, r1, #1
	add r0, r1, r0
	ldrb r1, [r7, r0]
	mov r0, #0x35
	lsl r0, r0, #4
	strb r1, [r5, r0]
	ldr r1, [r4]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r7, r0
	ldrb r1, [r0, #1]
	ldr r0, _0223825C ; =0x00000351
	strb r1, [r5, r0]
	ldr r1, [r4]
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r7, r0
	ldrb r1, [r0, #2]
	ldr r0, _02238258 ; =0x00000352
	strb r1, [r5, r0]
	ldr r0, [r4]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223824A
	add r1, r6, #0
	bl ManagedSprite_SetDrawPriority
_0223824A:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #8
	blt _022381F2
_02238254:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02238258: .word 0x00000352
_0223825C: .word 0x00000351
	thumb_func_end ov57_02238134

	thumb_func_start ov57_02238260
ov57_02238260: ; 0x02238260
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xdc
	ldr r7, [r1]
	add r1, r0, #0
	add r1, #0xe0
	ldr r6, [r1]
	mov r1, #0xd3
	lsl r1, r1, #2
	add r2, r0, r1
	lsl r1, r5, #4
	add r4, r2, r1
	ldr r1, [r2, r1]
	cmp r1, #1
	bne _0223828C
	bl GF_AssertFail
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223828C:
	ldrb r1, [r4, #4]
	add r2, r5, #0
	bl ov57_0223809C
	ldrb r1, [r4, #5]
	add r0, sp, #0
	strh r1, [r0]
	ldrb r1, [r4, #6]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x2c]
	sub r0, r0, #2
	str r1, [sp, #0xc]
	str r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldrb r0, [r4, #4]
	bl sub_02091054
	ldr r0, _022382E8 ; =0x00004E20
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _022382EC ; =0x0000520E
	add r2, sp, #0
	str r0, [sp, #0x18]
	ldr r0, _022382F0 ; =0x00005616
	str r0, [sp, #0x1c]
	ldr r0, _022382F4 ; =0x000059FC
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl SpriteSystem_NewSprite
	str r0, [r4, #8]
	bl ManagedSprite_TickFrame
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022382E8: .word 0x00004E20
_022382EC: .word 0x0000520E
_022382F0: .word 0x00005616
_022382F4: .word 0x000059FC
	thumb_func_end ov57_02238260

	thumb_func_start ov57_022382F8
ov57_022382F8: ; 0x022382F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	add r6, r1, #0
	mov r1, #0xd3
	add r4, r0, #0
	lsl r7, r5, #4
	add r3, r4, r7
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, #0
	bne _02238312
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02238312:
	cmp r6, #3
	bhi _022383A2
	add r2, r6, r6
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02238322: ; jump table
	.short _0223832A - _02238322 - 2 ; case 0
	.short _0223836A - _02238322 - 2 ; case 1
	.short _02238340 - _02238322 - 2 ; case 2
	.short _0223836A - _02238322 - 2 ; case 3
_0223832A:
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1]
	cmp r1, #0xff
	bne _022383A6
	add r4, #0xd4
	add r1, r5, #0
	str r5, [r4]
	bl ov57_02238044
	b _022383A6
_02238340:
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, r5
	bne _022383A6
	add r0, r1, #0
	add r0, #0xc
	add r1, #8
	ldr r0, [r3, r0]
	ldr r1, [r3, r1]
	mov r2, #1
	bl ov57_02237EB8
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_0223848C
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02238508
	b _022383A6
_0223836A:
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1]
	cmp r1, #0xff
	bne _022383A6
	add r1, r5, #0
	bl ov57_022383F8
	mov r1, #0xd6
	add r2, r4, r7
	lsl r1, r1, #2
	add r6, r0, #0
	ldr r0, [r2, r1]
	sub r1, r1, #4
	ldr r1, [r2, r1]
	mov r2, #0
	bl ov57_02237EB8
	cmp r6, #0
	bne _0223839A
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02238438
_0223839A:
	mov r0, #0xff
	add r4, #0xd4
	str r0, [r4]
	b _022383A6
_022383A2:
	bl GF_AssertFail
_022383A6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov57_022382F8

