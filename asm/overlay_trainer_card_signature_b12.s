#include "msgdata/msg/msg_0252.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public ov52_021E888C

	.text

	.text
	thumb_func_start ov52_021E888C
ov52_021E888C: ; 0x021E888C
	push {r3, r4, lr}
	sub sp, #0x5c
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r2, #0x5a
	str r1, [sp, #0x10]
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r4, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl CreateSpriteResourcesHeader
	mov r1, #1
	mov r3, #0x5a
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r4, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, r3
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #0x3c]
	mov r2, #0
	str r0, [sp, #0x2c]
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r4, r0
	str r1, [sp, #0x30]
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0x24
	str r2, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	add r1, sp, #0x2c
	strh r2, [r1, #0x20]
	mov r1, #1
	add r0, r4, r0
	str r0, [sp, #0x30]
	mov r0, #0xe
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #0xaf
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	str r1, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r1, #0x27
	add r0, sp, #0x2c
	str r1, [sp, #0x58]
	bl Sprite_CreateAffine
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetPaletteOverride
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl Sprite_SetPriority
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x5c
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov52_021E888C

