	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222E690
	.extern ov40_0222E658

	.text

	.text
	thumb_func_start ov40_0222E690
ov40_0222E690: ; 0x0222E690
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	mov r0, #0xe
	str r0, [sp, #0x20]
	ldr r0, [r5]
	str r1, [sp, #0x18]
	mov r7, #0xd
	bl sub_020315D0
	ldr r1, [sp, #0x18]
	ldr r2, _0222E794 ; =0x0000086C
	ldr r6, [r1, #0x18]
	ldr r4, [r1, #0x1c]
	ldr r1, [r1, #0x28]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x18]
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _0222E6C4
	cmp r0, #1
	bne _0222E6E8
	mov r0, #0x10
	mov r7, #0xf
	str r0, [sp, #0x20]
	b _0222E6E8
_0222E6C4:
	ldr r0, [r5]
	bl sub_02031700
	str r0, [sp, #0x1c]
	cmp r0, #0x10
	blt _0222E6D4
	mov r0, #0
	str r0, [sp, #0x1c]
_0222E6D4:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	bl ov40_0222E658
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bl ov40_0222E658
	str r0, [sp, #0x20]
_0222E6E8:
	mov r0, #0xb3
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0222E798 ; =0x0002869F
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222E798 ; =0x0002869F
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xb3
	mov r3, #9
	bl SpriteSystem_LoadCellResObj
	mov r0, #0
	str r0, [sp]
	ldr r0, _0222E798 ; =0x0002869F
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xb3
	mov r3, #0xa
	bl SpriteSystem_LoadAnimResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0222E798 ; =0x0002869F
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xb3
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	mov r1, #0x28
	add r0, sp, #0x28
	strh r1, [r0]
	mov r1, #0x3c
	strh r1, [r0, #2]
	mov r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _0222E798 ; =0x0002869F
	mov r1, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	sub r0, r1, #2
	str r1, [sp, #0x38]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0x28
	bl SpriteSystem_NewSprite
	str r0, [r5, #8]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #8]
	bl ManagedSprite_TickFrame
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E794: .word 0x0000086C
_0222E798: .word 0x0002869F
	thumb_func_end ov40_0222E690

