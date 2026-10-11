	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022371E4
	.public ov40_02237284
	.extern ov40_022306C0
	.extern ov40_022371D4

	.text

	.text
	thumb_func_start ov40_022371E4
ov40_022371E4: ; 0x022371E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r7, #0x6d
	lsl r7, r7, #2
	add r0, r4, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	lsl r0, r5, #1
	add r0, r4, r0
	ldrh r6, [r0, #0x2c]
	cmp r6, #0
	bne _02237214
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_02237214:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r2, r7, #0
	sub r2, #0x5c
	add r5, r0, #0
	ldr r0, [r4, r2]
	add r2, #0x58
	ldr r2, [r4, r2]
	mov r1, #1
	lsl r1, r2
	bl ov40_022371D4
	cmp r0, #1
	bne _02237238
	add r6, r7, #0
	add r6, #0x3a
_02237238:
	add r0, r6, #0
	mov r1, #0x6d
	add r2, sp, #0x10
	bl GetSpeciesNameIntoArray
	add r0, r5, #0
	add r1, sp, #0x10
	bl CopyU16ArrayToString
	add r0, r4, r7
	add r1, r5, #0
	bl ov40_022306C0
	add r3, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02237280 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237280: .word 0x000F0D00
	thumb_func_end ov40_022371E4

	thumb_func_start ov40_02237284
ov40_02237284: ; 0x02237284
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r4, [r0, #0x28]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x1c]
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
	ldr r0, _022373E0 ; =0x000186A0
	ldr r2, [sp, #0x20]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #2
	bl SpriteSystem_LoadPaletteBuffer
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _022373E0 ; =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _022373E0 ; =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	ldr r7, [sp, #0x24]
	mov r4, #0
	add r5, r7, #0
_022372F6:
	ldr r0, [sp, #0x24]
	ldrh r6, [r7, #0x2c]
	add r1, r0, r4
	mov r0, #0x57
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x18]
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	lsl r1, r4
	bl ov40_022371D4
	str r0, [sp, #0x28]
	cmp r6, #0
	beq _022373D2
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl GetMonIconNaixEx
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022373E0 ; =0x000186A0
	ldr r1, [sp, #0x1c]
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	mov r2, #0x14
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	add r2, r1, #0
	mov r0, #0x18
	mul r2, r0
	add r2, #0x6e
	add r0, sp, #0x2c
	strh r2, [r0]
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #0x16
	mul r1, r0
	add r1, #0x30
	add r0, sp, #0x2c
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	add r0, r1, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #1
	str r0, [sp, #0x3c]
	add r0, r1, #0
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, _022373E0 ; =0x000186A0
	add r2, sp, #0x2c
	add r0, r4, r0
	str r0, [sp, #0x40]
	ldr r0, _022373E0 ; =0x000186A0
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	sub r0, r1, #1
	str r0, [sp, #0x50]
	sub r0, r1, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl SpriteSystem_NewSprite
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverrideOffset
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetAnim
	mov r0, #0xad
	lsl r0, r0, #2
	mov r1, #0x1e
	ldr r0, [r5, r0]
	sub r1, r1, r4
	bl ManagedSprite_SetDrawPriority
_022373D2:
	add r4, r4, #1
	add r7, r7, #2
	add r5, r5, #4
	cmp r4, #0x1e
	blt _022372F6
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022373E0: .word 0x000186A0
	thumb_func_end ov40_02237284

