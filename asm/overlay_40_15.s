	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222CBE0
	.public ov40_0222CCAC
	.public ov40_0222CE7C
	.public ov40_0222D288
	.public ov40_0222D294
	.public ov40_0222D3E8
	.public ov40_02244DC0

	.text

	thumb_func_start ov40_0222CBE0
ov40_0222CBE0: ; 0x0222CBE0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0222CCA0 ; =0x00000534
	mov r7, #0
	add r4, r6, r0
	add r5, r6, #0
_0222CBEC:
	mov r2, #0x6e
	lsl r2, r2, #4
	ldr r3, [r6, r2]
	mov r2, #5
	sub r2, r2, r3
	lsl r2, r2, #4
	add r2, #0xd9
	lsl r2, r2, #0x10
	ldr r0, [r4]
	mov r1, #0x32
	asr r2, r2, #0x10
	bl ov40_0222D288
	ldr r0, _0222CCA4 ; =0x00000548
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r5, r0]
	sub r2, #0x2c
	bl sub_020136B4
	add r7, r7, #1
	add r4, #0x28
	add r5, #0x28
	cmp r7, #5
	blt _0222CBEC
	mov r5, #0
	add r4, r6, #0
	add r7, sp, #0
_0222CC24:
	ldr r0, _0222CCA8 ; =0x000006D8
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0222CC9E
	ldr r0, _0222CCA0 ; =0x00000534
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl ov40_0222D294
	ldr r0, _0222CCA8 ; =0x000006D8
	ldr r1, [r6, r0]
	sub r0, r1, #1
	cmp r0, r5
	bne _0222CC54
	mov r0, #0xa9
	strh r0, [r7]
	ldr r0, _0222CCA0 ; =0x00000534
	mov r1, #1
	ldr r0, [r4, r0]
	bl ManagedSprite_SetPaletteOverrideOffset
	b _0222CC82
_0222CC54:
	mov r0, #2
	ldrsh r0, [r7, r0]
	sub r1, r1, r5
	lsl r1, r1, #2
	sub r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _0222CCA8 ; =0x000006D8
	mov r2, #5
	ldr r0, [r6, r0]
	sub r1, r0, r5
	sub r0, r1, #1
	sub r2, r2, r1
	mov r1, #0x24
	mul r1, r2
	lsl r0, r0, #4
	add r1, #0x19
	add r0, r0, r1
	strh r0, [r7]
	ldr r0, _0222CCA0 ; =0x00000534
	mov r1, #2
	ldr r0, [r4, r0]
	bl ManagedSprite_SetPaletteOverrideOffset
_0222CC82:
	ldr r0, _0222CCA0 ; =0x00000534
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl ov40_0222D288
	ldr r0, _0222CCA8 ; =0x000006D8
	add r5, r5, #1
	ldr r0, [r6, r0]
	add r4, #0x28
	cmp r5, r0
	blt _0222CC24
_0222CC9E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222CCA0: .word 0x00000534
_0222CCA4: .word 0x00000548
_0222CCA8: .word 0x000006D8
	thumb_func_end ov40_0222CBE0

	thumb_func_start ov40_0222CCAC
ov40_0222CCAC: ; 0x0222CCAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, _0222CE64 ; =0x00000534
	mov r1, #0x6e
	add r4, r5, r0
	ldr r0, [r5, #0x18]
	add r2, sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #4]
	mov r0, #0x2a
	strh r0, [r2, #4]
	ldr r3, [r5, r1]
	mov r0, #5
	sub r0, r0, r3
	lsl r0, r0, #4
	add r0, #0xc9
	strh r0, [r2, #6]
	ldr r1, [r5, r1]
	cmp r1, #2
	bne _0222CCE8
	mov r0, #4
	sub r0, r0, r1
	lsl r0, r0, #4
	add r0, #0xc9
	strh r0, [r2, #6]
_0222CCE8:
	mov r0, #0
	str r0, [sp, #0x10]
	add r1, r0, #0
	add r0, sp, #0x18
	strh r1, [r0, #8]
	ldr r1, [sp, #0x10]
	mov r2, #1
	strh r1, [r0, #0xa]
	add r0, r1, #0
	str r1, [sp, #0x4c]
	ldr r1, _0222CE68 ; =0x00002711
	str r0, [sp, #0x24]
	str r1, [sp, #0x30]
	sub r1, r1, #2
	mov r0, #3
	str r0, [sp, #0x48]
	sub r0, r0, #4
	str r1, [sp, #0x14]
	str r1, [sp, #0x34]
	ldr r1, _0222CE68 ; =0x00002711
	ldr r6, _0222CE6C ; =ov40_02244DC0
	ldr r7, [sp, #0x10]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
_0222CD20:
	mov r0, #2
	str r0, [sp, #0x2c]
	ldr r0, _0222CE70 ; =0x00002712
	ldr r1, [sp, #8]
	str r0, [sp, #0x30]
	sub r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, _0222CE70 ; =0x00002712
	add r2, sp, #0x1c
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrb r0, [r6, #5]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl SpriteSystem_NewSprite
	str r0, [r4]
	bl ManagedSprite_TickFrame
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r2, sp, #0x18
	mov r1, #4
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #6
	add r1, #8
	lsl r1, r1, #0x10
	ldrsh r2, [r3, r2]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl ov40_0222D288
	mov r0, #1
	str r0, [sp, #0x2c]
	ldr r0, _0222CE68 ; =0x00002711
	ldr r1, [sp, #8]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	add r2, sp, #0x1c
	str r0, [sp, #0x34]
	ldr r0, _0222CE68 ; =0x00002711
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrb r0, [r6]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl SpriteSystem_NewSprite
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	bl ManagedSprite_TickFrame
	add r2, sp, #0x18
	mov r1, #4
	add r0, r4, #0
	add r0, #0xc8
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #6
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	bl ov40_0222D288
	ldr r1, _0222CE74 ; =0x00000818
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r0, #0xc8
	ldr r0, [r0]
	ldr r1, [r1, r7]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #1
	add r4, #0x28
	add r7, #0x24
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0222CD20
	mov r4, #0
	add r6, r5, #0
	add r7, sp, #0x18
_0222CDD2:
	ldr r0, _0222CE78 ; =0x000006D8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222CE4C
	ldr r0, _0222CE64 ; =0x00000534
	add r1, sp, #0x18
	ldr r0, [r6, r0]
	add r1, #2
	add r2, sp, #0x18
	bl ov40_0222D294
	ldr r0, _0222CE78 ; =0x000006D8
	ldr r1, [r5, r0]
	sub r0, r1, #1
	cmp r0, r4
	bne _0222CE02
	mov r0, #0xa9
	strh r0, [r7]
	ldr r0, _0222CE64 ; =0x00000534
	mov r1, #1
	ldr r0, [r6, r0]
	bl ManagedSprite_SetPaletteOverrideOffset
	b _0222CE30
_0222CE02:
	mov r0, #2
	ldrsh r0, [r7, r0]
	sub r1, r1, r4
	lsl r1, r1, #2
	sub r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _0222CE78 ; =0x000006D8
	mov r2, #5
	ldr r0, [r5, r0]
	sub r1, r0, r4
	sub r0, r1, #1
	sub r2, r2, r1
	mov r1, #0x24
	mul r1, r2
	lsl r0, r0, #4
	add r1, #0x19
	add r0, r0, r1
	strh r0, [r7]
	ldr r0, _0222CE64 ; =0x00000534
	mov r1, #2
	ldr r0, [r6, r0]
	bl ManagedSprite_SetPaletteOverrideOffset
_0222CE30:
	ldr r0, _0222CE64 ; =0x00000534
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r6, r0]
	bl ov40_0222D288
	ldr r0, _0222CE78 ; =0x000006D8
	add r4, r4, #1
	ldr r0, [r5, r0]
	add r6, #0x28
	cmp r4, r0
	blt _0222CDD2
_0222CE4C:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r2, #0xc
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222CE64: .word 0x00000534
_0222CE68: .word 0x00002711
_0222CE6C: .word ov40_02244DC0
_0222CE70: .word 0x00002712
_0222CE74: .word 0x00000818
_0222CE78: .word 0x000006D8
	thumb_func_end ov40_0222CCAC

	thumb_func_start ov40_0222CE7C
ov40_0222CE7C: ; 0x0222CE7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222CED0 ; =0x000005FC
	mov r4, #0
	str r4, [sp]
	add r6, r5, #0
	add r7, r5, r0
_0222CE8A:
	ldr r1, _0222CED4 ; =0x00000818
	ldr r0, _0222CED0 ; =0x000005FC
	ldr r1, [r5, r1]
	ldr r0, [r6, r0]
	ldr r1, [r1, r4]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _0222CED4 ; =0x00000818
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0222CEBE
	ldr r0, _0222CED0 ; =0x000005FC
	ldr r1, [r1, #0xc]
	ldr r0, [r6, r0]
	bl ManagedSprite_SetAnim
	ldr r0, _0222CED4 ; =0x00000818
	add r1, r7, #0
	ldr r2, [r5, r0]
	add r0, r5, #0
	add r3, r2, r4
	ldr r2, [r3, #8]
	bl ov40_0222D3E8
_0222CEBE:
	ldr r0, [sp]
	add r4, #0x24
	add r0, r0, #1
	add r6, #0x28
	add r7, #0x28
	str r0, [sp]
	cmp r0, #5
	blt _0222CE8A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222CED0: .word 0x000005FC
_0222CED4: .word 0x00000818
	thumb_func_end ov40_0222CE7C

