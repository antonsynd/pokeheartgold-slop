	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D2A0
	.extern ov40_02244DA8
	.extern ov40_02244DC0

	.text

	.text
	thumb_func_start ov40_0222D2A0
ov40_0222D2A0: ; 0x0222D2A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r6, r0, #0
	ldr r0, _0222D3DC ; =ov40_02244DA8
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0
	ldr r1, _0222D3E0 ; =0x000005FC
	str r0, [sp, #0x1c]
	add r0, r6, r1
	sub r1, #0xc8
	str r0, [sp, #0x14]
	add r0, r6, r1
	str r0, [sp, #0x10]
_0222D2C8:
	ldr r0, [sp, #0x14]
	ldr r1, _0222D3E4 ; =ov40_02244DC0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x34
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x2c
	add r0, r1, r0
	str r0, [sp, #8]
	add r7, sp, #0x3c
_0222D2E6:
	add r0, r7, #0
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	add r0, r7, #0
	mov r1, #0x6d
	bl sub_02013910
	ldr r1, [r4]
	mov r2, #0x6d
	str r0, [r1, #0x18]
	ldr r1, [r5]
	add r0, r7, #0
	bl sub_02013688
	ldr r3, [r4]
	ldr r2, [r5]
	mov r1, #1
	add r3, #0x1c
	bl sub_02021AC8
	ldr r0, [r4]
	add r1, sp, #0x20
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x20
	bl ManagedSprite_GetPositionXY
	ldr r0, [r6, #0x50]
	str r7, [sp, #0x50]
	str r0, [sp, #0x4c]
	ldr r0, [r6, #0x1c]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldr r1, [r1]
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x58]
	ldr r0, [r4]
	add r1, sp, #0x20
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #0x5c]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	str r0, [sp, #0x60]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0x24
	str r0, [sp, #0x64]
	mov r0, #0
	ldrsh r0, [r1, r0]
	sub r0, #8
	str r0, [sp, #0x68]
	mov r0, #3
	str r0, [sp, #0x6c]
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	sub r0, r0, #1
	str r0, [sp, #0x70]
	ldr r0, [r5]
	str r0, [sp, #0x74]
	mov r0, #0x6d
	str r0, [sp, #0x78]
	ldr r1, [r4]
	add r0, sp, #0x4c
	ldr r1, [r1, #0x18]
	bl TextOBJ_Create
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0x14]
	bl sub_020138E0
	add r0, r7, #0
	bl RemoveWindow
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0222D2E6
	ldr r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #5
	bge _0222D3D6
	b _0222D2C8
_0222D3D6:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_0222D3DC: .word ov40_02244DA8
_0222D3E0: .word 0x000005FC
_0222D3E4: .word ov40_02244DC0
	thumb_func_end ov40_0222D2A0

