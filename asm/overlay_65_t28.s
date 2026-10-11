#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221D930
	.extern ov65_0221DD34
	.extern ov65_0221FEA4
	.extern ov65_0221FF4C

	.text

	.text
	thumb_func_start ov65_0221D930
ov65_0221D930: ; 0x0221D930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xb3
	str r1, [sp, #0xc]
	mov r0, #2
	lsl r2, r2, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0
	add r0, #0xc
	ldr r0, [r5, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r5, r2
	add r2, r1, #0
	str r1, [sp, #0x28]
	bl CreateSpriteResourcesHeader
	mov r1, #1
	mov r3, #0xb3
	str r1, [sp]
	sub r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	str r0, [sp, #0x2c]
	mov r0, #0xbf
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x30]
	mov r0, #6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #5
	mov r7, #0
	str r1, [sp, #0x34]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r7, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #0x1a
	ldr r6, _0221DBE4 ; =ov65_0221FF4C
	str r7, [sp, #0x50]
	str r0, [sp, #0x58]
	add r4, r5, #0
_0221D9EC:
	ldr r0, [r6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0xd1
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0xd1
	add r0, #0x94
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	add r2, r7, #0
	bl ov65_0221DD34
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x64
	bl Sprite_SetDrawPriority
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #2
	blt _0221D9EC
	ldr r6, _0221DBE4 ; =ov65_0221FF4C
	mov r7, #0
	add r4, r5, #0
_0221DA54:
	ldr r0, [r6]
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	sub r0, r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0xdf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r7, #5
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #5
	bl Sprite_SetDrawPriority
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #0xc
	blt _0221DA54
	ldr r6, _0221DBE4 ; =ov65_0221FF4C
	mov r7, #0
	add r4, r5, #0
_0221DABA:
	ldr r0, [r6]
	add r0, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0xeb
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetDrawPriority
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #0xc
	blt _0221DABA
	ldr r6, _0221DBE4 ; =ov65_0221FF4C
	mov r7, #0
	add r4, r5, #0
_0221DB0C:
	ldr r0, [r6]
	add r0, #0x2d
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	add r0, #0x10
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #0xf7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #3
	bl Sprite_SetDrawPriority
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetOamMode
	add r7, r7, #1
	add r6, #8
	add r4, r4, #4
	cmp r7, #0xc
	blt _0221DB0C
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #0x42
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, _0221DBE8 ; =0x00000424
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0221DBE8 ; =0x00000424
	mov r1, #0x14
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, _0221DBE8 ; =0x00000424
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r4, _0221DBEC ; =ov65_0221FEA4
	mov r6, #0
	add r7, r5, r0
_0221DB94:
	ldr r0, [r4]
	str r7, [sp, #0x30]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r4, #4]
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
	mov r0, #2
	str r0, [sp, #0x54]
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	ldr r1, _0221DBF0 ; =0x0000040C
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, _0221DBF0 ; =0x0000040C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetAnimActiveFlag
	ldr r0, _0221DBF0 ; =0x0000040C
	ldr r1, [r4, #8]
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	add r6, r6, #1
	add r4, #0xc
	add r5, r5, #4
	cmp r6, #6
	blt _0221DB94
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0221DBE4: .word ov65_0221FF4C
_0221DBE8: .word 0x00000424
_0221DBEC: .word ov65_0221FEA4
_0221DBF0: .word 0x0000040C
	thumb_func_end ov65_0221D930

