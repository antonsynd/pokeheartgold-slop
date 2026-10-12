#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F2000
	.public ov112_021F2098
	.public ov112_021F2204
	.public ov112_021F22B0
	.extern ov112_021F0E14
	.extern ov112_021F0F48
	.extern ov112_021F1AF4
	.extern ov112_021F1D70
	.extern ov112_021F1F3C
	.extern ov112_021F1F54
	.extern ov112_021FF400
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F2000
ov112_021F2000: ; 0x021F2000
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r3, [sp, #0x14]
	str r2, [sp, #0x10]
	ldr r7, [sp, #0x68]
	ldr r2, [sp, #0x70]
	ldr r5, _021F2094 ; =ov112_021FF400
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r4, sp, #0x20
	mov r3, #6
_021F2016:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021F2016
	ldr r0, [r5]
	ldr r5, [sp, #8]
	str r0, [r4]
	add r0, sp, #0x58
	ldrb r0, [r0, #0x14]
	add r4, r2, #2
	mov r6, #0
	str r0, [sp, #0x18]
	str r4, [sp, #0x1c]
_021F2030:
	ldr r1, [sp, #0x14]
	add r0, sp, #0x20
	strh r1, [r0]
	strh r7, [r0, #2]
	mov r0, #3
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x18]
	add r0, sp, #0x20
	strh r1, [r0, #6]
	ldr r0, [sp, #0x1c]
	mov r3, #0x83
	str r0, [sp, #0x38]
	add r0, r6, #2
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r4, [sp, #0x34]
	add r2, sp, #0x20
	lsl r3, r3, #0xe
	bl SpriteSystem_NewSpriteWithYOffset
	str r0, [r5, #8]
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	ldr r0, [r5, #8]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #2
	blt _021F2030
	mov r0, #0x17
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r3, r7, #0
	bl ov112_021F1AF4
	ldr r1, [sp, #8]
	str r0, [r1, #0x10]
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021F2094: .word ov112_021FF400
	thumb_func_end ov112_021F2000

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

	thumb_func_start ov112_021F2204
ov112_021F2204: ; 0x021F2204
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F22AC ; =0x0000013D
	add r6, r1, #0
	ldrb r0, [r5, r0]
	add r7, r2, #0
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0xc0
	ldr r4, [r0]
	cmp r6, #0
	bne _021F2238
	add r0, r5, #0
	add r0, #0x98
	mov r1, #0x68
	mov r2, #0x48
	mov r3, #0
	bl ov112_021F1F54
	add r0, r5, #0
	add r0, #0x98
	mov r1, #3
	bl ov112_021F1F3C
	b _021F2250
_021F2238:
	add r0, r5, #0
	add r0, #0xac
	mov r1, #0x98
	mov r2, #0x48
	mov r3, #0
	bl ov112_021F1F54
	add r0, r5, #0
	add r0, #0xac
	mov r1, #1
	bl ov112_021F1F3C
_021F2250:
	cmp r7, #0
	beq _021F2280
	add r0, r4, #0
	mov r1, #1
	bl ov112_021F0F48
	str r0, [sp]
	ldr r0, [r5, #4]
	add r5, #0x98
	str r0, [sp, #4]
	ldrh r1, [r4, #0xa]
	add r4, #0x85
	ldrb r3, [r4]
	mov r0, #0x14
	mul r0, r6
	lsl r2, r3, #0x1b
	lsl r3, r3, #0x19
	add r0, r5, r0
	lsr r2, r2, #0x1b
	lsr r3, r3, #0x1e
	bl ov112_021F2098
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F2280:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021F0F48
	str r0, [sp]
	ldr r0, [r5, #4]
	add r5, #0x98
	str r0, [sp, #4]
	ldrh r1, [r4, #0xc]
	add r4, #0x86
	ldrb r3, [r4]
	mov r0, #0x14
	mul r0, r6
	lsl r2, r3, #0x1b
	lsl r3, r3, #0x19
	add r0, r5, r0
	lsr r2, r2, #0x1b
	lsr r3, r3, #0x1e
	bl ov112_021F2098
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F22AC: .word 0x0000013D
	thumb_func_end ov112_021F2204

	thumb_func_start ov112_021F22B0
ov112_021F22B0: ; 0x021F22B0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r4, #0xf
	cmp r1, #1
	bne _021F22BE
	add r4, r4, #4
_021F22BE:
	add r0, r5, #0
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #0
	add r1, r4, #0
	bl ManagedSprite_SetAnim
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_021F22B0

