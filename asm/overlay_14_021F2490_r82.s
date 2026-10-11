#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3F6C
	.extern ov14_021F2A74
	.extern ov14_021F8070
	.extern ov14_021F8078
	.extern ov14_021F810C

    .text

	.text
	thumb_func_start ov14_021F3F6C
ov14_021F3F6C: ; 0x021F3F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r0, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _021F3F7C
	b _021F40C0
_021F3F7C:
	ldr r4, [r6, #0x34]
	add r2, sp, #0x14
	add r1, r4, r0
	ldr r0, _021F40C4 ; =0x00004094
	ldrb r0, [r1, r0]
	add r1, sp, #0x14
	add r1, #2
	str r0, [sp, #0xc]
	lsl r5, r0, #2
	mov r0, #0xbf
	lsl r0, r0, #2
	add r7, r4, r0
	ldr r0, [r7, r5]
	bl ManagedSprite_GetPositionXY
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021F402C
	ldr r3, _021F40C8 ; =ov14_021F810C
	add r2, sp, #0x18
	mov r6, #6
_021F3FAA:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F3FAA
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetDrawPriority
	add r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetPriority
	str r0, [sp, #0x44]
	ldr r1, _021F40CC ; =0x0000C0E0
	ldr r0, [sp, #0xc]
	mov r5, #0
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, _021F40D0 ; =0x000088D2
	mov r1, #1
	strh r1, [r4, r0]
	add r7, sp, #0x14
_021F3FDA:
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _021F40D4 ; =ov14_021F8070
	add r2, sp, #0x18
	ldrsb r0, [r0, r5]
	add r0, r1, r0
	strh r0, [r7, #4]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _021F40D8 ; =ov14_021F8078
	ldrsb r0, [r0, r5]
	add r0, r1, r0
	strh r0, [r7, #6]
	lsl r0, r5, #2
	add r6, r4, r0
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl SpriteSystem_NewSprite
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #8
	bl ManagedSprite_SetPaletteOverride
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F3FDA
	ldr r0, _021F40D0 ; =0x000088D2
	mov r1, #0
	add sp, #0x4c
	strh r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_021F402C:
	ldr r0, [r7, r5]
	ldr r0, [r0]
	bl Sprite_GetImageProxy
	str r0, [sp, #8]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetDrawPriority
	str r0, [sp, #0x10]
	ldr r0, [r7, r5]
	bl ManagedSprite_GetPriority
	str r0, [sp, #4]
	mov r5, #0
_021F4048:
	lsl r7, r5, #2
	mov r0, #0x3f
	add r1, r4, r7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [sp, #8]
	bl Sprite_SetImageProxy
	mov r0, #0x3f
	ldr r1, [sp]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, sp, #0x14
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldr r2, _021F40D4 ; =ov14_021F8070
	add r3, sp, #0x14
	ldrsb r2, [r2, r5]
	add r1, r1, r2
	mov r2, #0
	ldrsh r3, [r3, r2]
	ldr r2, _021F40D8 ; =ov14_021F8078
	lsl r1, r1, #0x10
	ldrsb r2, [r2, r5]
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r6, #0x34]
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	ldr r0, [r6, #0x34]
	add r1, r0, r7
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	bl ManagedSprite_SetPriority
	ldr r0, [r6, #0x34]
	add r1, r0, r7
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F4048
_021F40C0:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F40C4: .word 0x00004094
_021F40C8: .word ov14_021F810C
_021F40CC: .word 0x0000C0E0
_021F40D0: .word 0x000088D2
_021F40D4: .word ov14_021F8070
_021F40D8: .word ov14_021F8078
	thumb_func_end ov14_021F3F6C

