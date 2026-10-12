	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D5AC

	.text

	.text
	thumb_func_start ov40_0222D5AC
ov40_0222D5AC: ; 0x0222D5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, _0222D668 ; =0x0000270F
	cmp r7, #2
	bne _0222D5BE
	add r6, r6, #1
_0222D5BE:
	add r0, sp, #0xc
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	add r0, sp, #0xc
	mov r1, #0x6d
	bl sub_02013910
	str r0, [r5, #0xc]
	add r0, sp, #0xc
	add r1, r7, #0
	mov r2, #0x6d
	bl sub_02013688
	add r3, r5, #0
	mov r1, #1
	add r2, r7, #0
	add r3, #0x10
	bl sub_02021AC8
	add r1, sp, #8
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #8
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0x1c]
	add r0, sp, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #8]
	bl SpriteManager_GetSpriteList
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl SpriteManager_FindPlttResourceProxy
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	add r1, sp, #8
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x30]
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r0, #0x24
	str r0, [sp, #0x34]
	mov r0, #0
	ldrsh r1, [r1, r0]
	sub r1, #8
	str r0, [sp, #0x40]
	mov r0, #0x6d
	str r1, [sp, #0x38]
	mov r1, #3
	str r0, [sp, #0x48]
	str r7, [sp, #0x44]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0xc]
	add r0, sp, #0x1c
	bl TextOBJ_Create
	mov r1, #1
	str r0, [r5, #8]
	bl sub_020138E0
	add r0, sp, #0xc
	bl RemoveWindow
	ldr r0, [r5, #8]
	mov r1, #0
	bl TextOBJ_SetSpritesDrawFlag
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0222D668: .word 0x0000270F
	thumb_func_end ov40_0222D5AC

