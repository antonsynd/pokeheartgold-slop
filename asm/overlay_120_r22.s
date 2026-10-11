	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225FEE8
	.public ov120_0225FF00
	.extern ov120_0225F6AC
	.extern ov120_0225F6BC
	.extern ov120_0225FECC
	.extern ov120_022601BC
	.extern ov120_022601D8

	.text

	.text
	thumb_func_start ov120_0225FEE8
ov120_0225FEE8: ; 0x0225FEE8
	push {r4, lr}
	add r4, r0, #0
	bne _0225FEF2
	bl GF_AssertFail
_0225FEF2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0225FEFC
	mov r0, #1
	pop {r4, pc}
_0225FEFC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov120_0225FEE8

	thumb_func_start ov120_0225FF00
ov120_0225FF00: ; 0x0225FF00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	ldr r5, [r4, #0xc]
	cmp r0, #7
	bhi _0225FFDA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FF1E: ; jump table
	.short _0225FF2E - _0225FF1E - 2 ; case 0
	.short _0225FFCE - _0225FF1E - 2 ; case 1
	.short _02260078 - _0225FF1E - 2 ; case 2
	.short _0226008C - _0225FF1E - 2 ; case 3
	.short _022600C4 - _0225FF1E - 2 ; case 4
	.short _022600D4 - _0225FF1E - 2 ; case 5
	.short _022600E8 - _0225FF1E - 2 ; case 6
	.short _022600F8 - _0225FF1E - 2 ; case 7
_0225FF2E:
	mov r0, #4
	mov r1, #0x70
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x70
	str r0, [r4, #0xc]
	bl memset
	mov r0, #2
	mov r1, #1
	ldr r5, [r4, #0xc]
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02260188 ; =0xFFFFE0FF
	and r1, r0
	mov r0, #0x15
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x10]
	mov r1, #1
	ldr r0, [r0, #8]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	ldr r2, _0226018C ; =ov120_022601BC
	ldr r0, [r0, #8]
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #1
	ldr r0, [r0, #8]
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x10]
	mov r1, #3
	ldr r0, [r0, #8]
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	ldr r2, _02260190 ; =ov120_022601D8
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #3
	ldr r0, [r0, #8]
	bl BgClearTilemapBufferAndCommit
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	mov r0, #8
	mov r1, #0
	bl SetBgPriority
	mov r0, #0x15
	bl GfGfx_EngineASetPlanes
	add r0, r5, #0
	add r0, #0x50
	add r1, r4, #0
	bl ov120_0225FECC
	mov r0, #1
	str r0, [r4]
	b _0226011A
_0225FFCE:
	add r0, r5, #0
	add r0, #0x50
	bl ov120_0225FEE8
	cmp r0, #0
	bne _0225FFDC
_0225FFDA:
	b _0226011A
_0225FFDC:
	mov r0, #1
	mov r1, #0
	bl BG_SetMaskColor
	mov r0, #0x12
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #5
	add r0, #0xc
	lsl r2, r2, #0x12
	add r3, r1, #0
	bl ov01_021EFEC8
	mov r0, #0x1e
	str r0, [sp]
	add r0, r5, #0
	mov r2, #5
	mov r3, #2
	add r0, #0x24
	mov r1, #0
	lsl r2, r2, #0x12
	lsl r3, r3, #0xe
	bl ov01_021EFEC8
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xf
	bl ov120_0225F6AC
	ldr r0, [r4, #0x10]
	ldr r3, [r5, #0xc]
	mov r1, #3
	ldr r0, [r0, #8]
	add r2, r1, #0
	asr r3, r3, #0xc
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0x10]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #3
	add r3, r2, #0
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0x10]
	ldr r3, [r5, #0x24]
	ldr r0, [r0, #8]
	mov r1, #1
	mov r2, #3
	asr r3, r3, #0xc
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0x10]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #1
	add r3, r2, #0
	bl ScheduleSetBgPosText
	cmp r6, #0
	beq _02260060
	mov r1, #0x10
	b _02260064
_02260060:
	mov r1, #0xf
	mvn r1, r1
_02260064:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r2, r1, #0
	add r3, r4, #4
	bl ov01_021EFCF8
	mov r0, #2
	str r0, [r4]
	b _0226011A
_02260078:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226011A
	add r0, r5, #0
	mov r1, #4
	bl ov01_021F12B4
	mov r0, #3
	str r0, [r4]
	b _0226011A
_0226008C:
	mov r0, #0xa
	str r0, [r5, #0x48]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _02260194 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r3, _02260198 ; =0x00000D52
	add r0, r5, #0
	mov r2, #0xbf
	bl ov01_021F12E8
	add r0, r5, #0
	mov r1, #1
	add r0, #0x4d
	strb r1, [r0]
	mov r0, #8
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	str r0, [r4]
_022600C4:
	ldr r1, [r5, #0x48]
	sub r0, r1, #1
	str r0, [r5, #0x48]
	cmp r1, #0
	bne _0226011A
	mov r0, #5
	str r0, [r4]
	b _0226011A
_022600D4:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #2
	bl GfGfx_EngineATogglePlanes
	mov r0, #6
	str r0, [r4]
	b _0226011A
_022600E8:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226011A
	mov r0, #7
	str r0, [r4]
	b _0226011A
_022600F8:
	mov r0, #0
	bl sub_0200FC20
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02260108
	mov r0, #1
	str r0, [r1]
_02260108:
	add r0, r5, #0
	bl ov01_021F12D0
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021EFCDC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0226011A:
	add r0, r5, #0
	add r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260142
	add r0, r5, #0
	add r0, #0xc
	bl ov01_021EFF28
	add r1, r5, #0
	add r1, #0x4e
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r3, [r5, #0xc]
	ldr r0, [r0, #8]
	mov r1, #1
	mov r2, #3
	asr r3, r3, #0xc
	bl ScheduleSetBgPosText
_02260142:
	add r0, r5, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260182
	add r0, r5, #0
	add r0, #0x24
	bl ov01_021EFF28
	add r1, r5, #0
	add r1, #0x4f
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x3c
	bl ov120_0225F6BC
	ldr r0, [r4, #0x10]
	ldr r3, [r5, #0x24]
	mov r1, #3
	ldr r0, [r0, #8]
	add r2, r1, #0
	asr r3, r3, #0xc
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0x10]
	mov r3, #0x3c
	ldrsh r3, [r5, r3]
	ldr r0, [r0, #8]
	mov r1, #3
	mov r2, #0
	bl ScheduleSetBgPosText
_02260182:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02260188: .word 0xFFFFE0FF
_0226018C: .word ov120_022601BC
_02260190: .word ov120_022601D8
_02260194: .word 0x04000010
_02260198: .word 0x00000D52
	thumb_func_end ov120_0225FF00

