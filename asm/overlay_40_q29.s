	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222C884
	.extern ov40_0222D048
	.extern ov40_0222D288
	.extern ov40_02244DA8
	.extern ov40_02244DF0

	.text

	.text
	thumb_func_start ov40_0222C884
ov40_0222C884: ; 0x0222C884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x18]
	add r4, sp, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp]
	add r2, sp, #0x20
	ldr r0, [r0, #0x1c]
	mov r1, #2
	str r0, [sp, #0x14]
	mov r0, #0
	strh r0, [r2, #0x2c]
	strh r0, [r2, #0x2e]
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x32]
	str r0, [sp, #0x10]
	str r0, [sp, #0x54]
	mov r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x10]
	ldr r3, _0222CA60 ; =ov40_02244DA8
	str r0, [sp, #0x7c]
	str r0, [sp, #0x58]
	ldr r0, _0222CA64 ; =0x0000270F
	str r1, [sp, #0x78]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
	sub r0, r1, #3
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, sp, #0x40
	str r0, [sp, #0xc]
	ldrh r0, [r3, #0x22]
	ldr r5, _0222CA68 ; =ov40_02244DF0
	str r4, [sp, #8]
	strh r0, [r2, #0x20]
	ldrh r0, [r3, #0x24]
	add r6, sp, #0x20
	strh r0, [r2, #0x22]
	ldrh r0, [r3, #0x26]
	strh r0, [r2, #0x24]
	ldrh r0, [r3, #0x28]
	strh r0, [r2, #0x26]
	ldrh r0, [r3, #0x2a]
	strh r0, [r2, #0x28]
	ldrh r0, [r3, #0x2c]
	strh r0, [r2, #0x2a]
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldrb r0, [r3]
	ldr r4, [sp]
	ldr r1, _0222CA6C ; =0x000006F8
	strb r0, [r2]
	ldrb r0, [r3, #1]
	strb r0, [r2, #1]
	ldrb r0, [r3, #2]
	strb r0, [r2, #2]
	ldrb r0, [r3, #3]
	strb r0, [r2, #3]
	ldrb r0, [r3, #4]
	strb r0, [r2, #4]
	ldrb r0, [r3, #5]
	strb r0, [r2, #5]
	add r0, r4, #0
	add r0, r0, r1
	str r0, [sp, #4]
_0222C916:
	ldr r0, [sp, #0x10]
	mov r1, #3
	mov r7, #0
	add r5, r4, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
_0222C928:
	cmp r7, #0
	bne _0222C93C
	mov r0, #1
	str r0, [sp, #0x5c]
	ldr r0, _0222CA64 ; =0x0000270F
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
	b _0222C94A
_0222C93C:
	mov r0, #2
	str r0, [sp, #0x5c]
	ldr r0, _0222CA70 ; =0x00002710
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
_0222C94A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x4c
	bl SpriteSystem_NewSprite
	ldr r1, _0222CA6C ; =0x000006F8
	ldr r2, [sp, #0xc]
	str r0, [r5, r1]
	add r0, r1, #0
	mov r1, #0
	ldrsh r1, [r2, r1]
	ldr r0, [r5, r0]
	mov r2, #0x60
	bl ov40_0222D288
	ldr r0, _0222CA6C ; =0x000006F8
	ldr r0, [r5, r0]
	bl ManagedSprite_TickFrame
	ldr r0, _0222CA6C ; =0x000006F8
	mov r1, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, _0222CA6C ; =0x000006F8
	ldr r1, [sp, #8]
	mov r2, #0xfe
	ldr r0, [r5, r0]
	ldr r1, [r1]
	lsl r2, r2, #0x16
	bl ManagedSprite_SetAffineScale
	mov r0, #0x72
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, [sp, #0x1c]
	sub r0, #0xf
	strb r1, [r4, r0]
	ldr r0, _0222CA74 ; =0x00000724
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [sp, #8]
	ldr r1, [r0]
	ldr r0, _0222CA78 ; =0x00000708
	str r1, [r4, r0]
	mov r0, #0
	ldrsb r0, [r6, r0]
	lsl r1, r0, #1
	ldr r0, _0222CA7C ; =0x0000071C
	add r1, #0xa
	str r1, [r4, r0]
	ldr r0, [sp, #0x10]
	cmp r0, #3
	ldr r0, _0222CA80 ; =0x00000718
	bge _0222C9CE
	mov r1, #0
	str r1, [r4, r0]
	add r0, r1, #0
	ldrsb r1, [r6, r0]
	ldr r0, _0222CA84 ; =0x0000070E
	add r1, #8
	strh r1, [r4, r0]
	mov r1, #0
	mvn r1, r1
	b _0222C9E2
_0222C9CE:
	mov r1, #0
	str r1, [r4, r0]
	add r0, r1, #0
	ldrsb r1, [r6, r0]
	mov r0, #0xff
	add r1, #8
	sub r1, r0, r1
	ldr r0, _0222CA84 ; =0x0000070E
	strh r1, [r4, r0]
	mov r1, #1
_0222C9E2:
	add r0, r0, #2
	add r7, r7, #1
	add r5, r5, #4
	strb r1, [r4, r0]
	cmp r7, #2
	blt _0222C928
	ldr r0, _0222CA88 ; =ov40_0222D048
	ldr r1, [sp, #4]
	mov r2, #5
	bl SysTask_CreateOnVBlankQueue
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	add r4, #0x30
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	bge _0222CA20
	b _0222C916
_0222CA20:
	ldr r0, [sp]
	sub r1, #0x28
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222CA5A
	ldr r7, _0222CA74 ; =0x00000724
_0222CA2C:
	ldr r4, [sp]
	ldr r1, _0222CA6C ; =0x000006F8
	mov r0, #0
	add r2, r4, #0
	add r6, r0, #0
	add r5, r2, r1
_0222CA38:
	ldr r1, [r4, r7]
	cmp r1, #3
	beq _0222CA4C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov40_0222D048
	mov r0, #1
_0222CA4C:
	add r6, r6, #1
	add r4, #0x30
	add r5, #0x30
	cmp r6, #6
	blt _0222CA38
	cmp r0, #0
	bne _0222CA2C
_0222CA5A:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CA60: .word ov40_02244DA8
_0222CA64: .word 0x0000270F
_0222CA68: .word ov40_02244DF0
_0222CA6C: .word 0x000006F8
_0222CA70: .word 0x00002710
_0222CA74: .word 0x00000724
_0222CA78: .word 0x00000708
_0222CA7C: .word 0x0000071C
_0222CA80: .word 0x00000718
_0222CA84: .word 0x0000070E
_0222CA88: .word ov40_0222D048
	thumb_func_end ov40_0222C884

