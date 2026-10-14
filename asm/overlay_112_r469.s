#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F2098
	.extern ov112_021F0E14
	.extern ov112_021F1D70
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F2098
ov112_021F2098: ; 0x021F2098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	bl SpeciesToOverworldModelIndexOffset
	add r2, r0, #0
	add r0, sp, #0x30
	mov r1, #0x8d
	bl ReadWholeNarcMemberByIdPair
	add r0, sp, #0x2c
	ldrb r0, [r0, #5]
	add r2, sp, #0x2c
	cmp r0, #0
	beq _021F20F2
	ldr r0, [sp, #0xc]
	mov r5, #2
	ldr r0, [r0, #0xc]
	mov r1, #1
	ldr r0, [r0]
	lsl r5, r5, #0xa
	str r0, [sp, #0x1c]
	mov r0, #8
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	str r1, [r0]
	add r1, sp, #0x2c
	ldr r0, [r0, #0xc]
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [sp, #0xc]
	add r2, sp, #0x2c
	mov r1, #2
	mov r3, #0
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	ldr r0, [r0, #0x10]
	bl ManagedSprite_SetPositionXY
	b _021F2124
_021F20F2:
	ldr r0, [sp, #0xc]
	mov r5, #2
	ldr r0, [r0, #8]
	mov r1, #0
	ldr r0, [r0]
	lsl r5, r5, #8
	str r0, [sp, #0x1c]
	mov r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	str r1, [r0]
	add r1, sp, #0x2c
	ldr r0, [r0, #8]
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r0, [sp, #0xc]
	add r2, sp, #0x2c
	mov r1, #2
	mov r3, #0
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	ldr r0, [r0, #0x10]
	bl ManagedSprite_SetPositionXY
_021F2124:
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x4c]
	str r4, [r0, #4]
	mov r0, #0x51
	add r1, r7, #0
	bl NARC_New
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02070438
	cmp r0, #0
	bne _021F2142
	mov r6, #0
_021F2142:
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl ov112_021F0E14
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	add r2, r7, #0
	bl NARC_AllocAndReadWholeMember
	str r0, [sp, #0x24]
	bl NNS_G3dGetTex
	ldr r1, [r0, #0x14]
	str r0, [sp, #0x20]
	add r0, r0, r1
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl Heap_AllocAtEnd
	mov r7, #0
	add r6, r0, #0
	add r4, r7, #0
_021F2172:
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r0, r0, r4
	add r3, r2, #0
	str r6, [sp, #8]
	bl sub_020145B4
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl ov112_021F1D70
	add r7, r7, #1
	add r4, r4, r5
	cmp r7, #8
	blt _021F2172
	add r0, r6, #0
	bl Heap_Free
	ldr r0, [sp, #0x1c]
	bl Sprite_GetVramType
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #0x38]
	add r4, r0, r1
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _021F21B8
	add r4, #0x20
_021F21B8:
	add r0, r4, #0
	mov r1, #0x20
	bl DC_FlushRange
	ldr r0, [sp, #0x1c]
	bl Sprite_GetPaletteProxy
	mov r1, #1
	bl NNS_G2dGetImagePaletteLocation
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x20
	bl GX_LoadOBJPltt
	ldr r0, [sp, #0x24]
	bl Heap_Free
	ldr r0, [sp, #0x28]
	bl NARC_Delete
	ldr r0, [sp, #0x1c]
	mov r1, #1
	bl thunk_Sprite_SetDrawFlag
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r0, #4]
	sub r0, #0x32
	cmp r0, #1
	bhi _021F21F8
	mov r1, #0
_021F21F8:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x10]
	bl ManagedSprite_SetDrawFlag
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov112_021F2098

