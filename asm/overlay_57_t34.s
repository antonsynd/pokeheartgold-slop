	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238A00
	.public ov57_02238AC0
	.public ov57_02238AF0
	.public ov57_02238B28
	.public ov57_02238B48
	.public ov57_02238BCC
	.extern ov57_0223BDD4

	.text

	.text
	thumb_func_start ov57_02238A00
ov57_02238A00: ; 0x02238A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r0, #0xdc
	ldr r0, [r0]
	mov r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe0
	ldr r7, [r0]
	add r0, sp, #4
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r4, [r0, #0x26]
	mov r0, #0x3c
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x34]
	mov r0, #1
	str r0, [sp, #0x50]
	sub r0, r0, #2
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	ldr r0, _02238AA8 ; =0x00006597
	str r4, [sp, #0x54]
	str r0, [sp, #0x3c]
	ldr r0, _02238AAC ; =0x0000699D
	str r4, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, _02238AB0 ; =0x00006D83
	str r0, [sp, #0x44]
	ldr r0, _02238AB4 ; =0x00000414
	add r6, r5, r0
_02238A44:
	ldr r0, _02238AB8 ; =0x000061A8
	add r1, r7, #0
	add r0, r4, r0
	str r0, [sp, #0x38]
	ldr r0, [sp]
	add r2, sp, #0x24
	bl SpriteSystem_NewSprite
	add r4, r4, #1
	stmia r6!, {r0}
	cmp r4, #8
	blt _02238A44
	ldr r3, _02238ABC ; =ov57_0223BDD4
	add r2, sp, #4
	mov r1, #0x10
_02238A62:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02238A62
	ldr r7, _02238AB4 ; =0x00000414
	mov r6, #0
	add r4, sp, #4
_02238A74:
	mov r2, #2
	ldrsh r2, [r4, r2]
	ldr r0, _02238AB4 ; =0x00000414
	mov r1, #0
	sub r2, r2, #1
	lsl r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, _02238AB4 ; =0x00000414
	ldr r0, [r5, r0]
	bl ManagedSprite_TickFrame
	ldr r0, [r5, r7]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #8
	blt _02238A74
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238AA8: .word 0x00006597
_02238AAC: .word 0x0000699D
_02238AB0: .word 0x00006D83
_02238AB4: .word 0x00000414
_02238AB8: .word 0x000061A8
_02238ABC: .word ov57_0223BDD4
	thumb_func_end ov57_02238A00

	thumb_func_start ov57_02238AC0
ov57_02238AC0: ; 0x02238AC0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _02238AE8 ; =0x00000414
	mov r4, #0
	add r5, r6, #0
_02238ACA:
	add r0, r6, #0
	add r0, #0xe0
	ldr r1, _02238AEC ; =0x000061A8
	ldr r0, [r0]
	add r1, r4, r1
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r5, r7]
	bl Sprite_DeleteAndFreeResources
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _02238ACA
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238AE8: .word 0x00000414
_02238AEC: .word 0x000061A8
	thumb_func_end ov57_02238AC0

	thumb_func_start ov57_02238AF0
ov57_02238AF0: ; 0x02238AF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x38
	mul r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	lsl r0, r1, #4
	neg r0, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r4, #0
_02238B06:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02238B1E
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl ManagedSprite_OffsetPositionXY
_02238B1E:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _02238B06
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov57_02238AF0

	thumb_func_start ov57_02238B28
ov57_02238B28: ; 0x02238B28
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	mov r1, #0
	ldr r0, _02238B44 ; =ov57_02238B48
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0x34
	add r3, r1, #0
	bl GF_3DVramMan_Create
	add sp, #8
	pop {r3, pc}
	nop
_02238B44: .word ov57_02238B48
	thumb_func_end ov57_02238B28

	thumb_func_start ov57_02238B48
ov57_02238B48: ; 0x02238B48
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02238BB4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02238BB8 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02238BBC ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02238BC0 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02238BC4 ; =0xBFFF0000
	ldr r0, _02238BC8 ; =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_02238BB4: .word 0x04000008
_02238BB8: .word 0xFFFFCFFD
_02238BBC: .word 0x0000CFFB
_02238BC0: .word 0x00007FFF
_02238BC4: .word 0xBFFF0000
_02238BC8: .word 0x04000580
	thumb_func_end ov57_02238B48

	thumb_func_start ov57_02238BCC
ov57_02238BCC: ; 0x02238BCC
	push {r3, r4, r5, lr}
	ldr r3, _02238C04 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r0, #2
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _02238C08 ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0x80
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _02238BF4
	bl GF_AssertFail
_02238BF4:
	cmp r5, #0
	bne _02238BFC
	bl GF_AssertFail
_02238BFC:
	bl sub_02014DA0
	pop {r3, r4, r5, pc}
	nop
_02238C04: .word NNS_GfdDefaultFuncAllocTexVram
_02238C08: .word NNS_GfdDefaultFuncAllocPlttVram
	thumb_func_end ov57_02238BCC

