#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2A74
	.public ov14_021F2F88
	.public ov14_021F395C
	.public ov14_021F396C
	.public ov14_021F39A0
	.public ov14_021F39D0
	.public ov14_021F8070
	.public ov14_021F8078
	.public ov14_021F83E4

    .text

	thumb_func_start ov14_021F396C
ov14_021F396C: ; 0x021F396C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	add r3, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	add r1, #8
	add r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov14_021F395C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov14_021F396C

	thumb_func_start ov14_021F39A0
ov14_021F39A0: ; 0x021F39A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	add r3, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, r2, #4
	lsl r2, r2, #0x10
	add r0, r4, #0
	asr r2, r2, #0x10
	bl ov14_021F395C
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F39A0

	thumb_func_start ov14_021F39D0
ov14_021F39D0: ; 0x021F39D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, _021F3B24 ; =0x000088C8
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021F39E0
	b _021F3B1E
_021F39E0:
	mov r0, #0xca
	lsl r0, r0, #2
	add r1, sp, #0x10
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0x10
	bl ManagedSprite_GetPositionXY
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021F3AA0
	ldr r4, _021F3B28 ; =ov14_021F83E4
	add r3, sp, #0x14
	mov r2, #6
_021F3A00:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F3A00
	ldr r0, [r4]
	str r0, [r3]
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetDrawPriority
	add r0, r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetPriority
	str r0, [sp, #0x40]
	ldr r0, _021F3B2C ; =0x0000C11F
	mov r1, #1
	str r0, [sp, #0x28]
	ldr r0, _021F3B30 ; =0x000088D2
	ldr r7, _021F3B34 ; =ov14_021F8070
	strh r1, [r5, r0]
	mov r0, #0
	ldr r6, _021F3B38 ; =ov14_021F8078
	str r0, [sp, #8]
	add r4, r5, #0
_021F3A3A:
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0
	ldrsb r0, [r7, r0]
	add r2, sp, #0x14
	add r1, r1, r0
	add r0, sp, #0x10
	strh r1, [r0, #4]
	add r1, r0, #0
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldrsb r0, [r6, r0]
	add r1, r1, r0
	add r0, sp, #0x10
	strh r1, [r0, #6]
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl SpriteSystem_NewSprite
	mov r1, #0x3f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #8
	bl ManagedSprite_SetPaletteOverride
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #1
	add r6, r6, #1
	add r4, r4, #4
	str r0, [sp, #8]
	cmp r0, #8
	blo _021F3A3A
	ldr r0, _021F3B30 ; =0x000088D2
	mov r1, #0
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F3AA0:
	sub r0, #0xc8
	ldr r0, [r5, r0]
	bl ManagedSprite_GetDrawPriority
	str r0, [sp, #0xc]
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ManagedSprite_GetPriority
	str r0, [sp, #4]
	mov r0, #0
	ldr r7, _021F3B38 ; =ov14_021F8078
	ldr r6, _021F3B34 ; =ov14_021F8070
	str r0, [sp]
	add r4, r5, #0
_021F3AC0:
	add r2, sp, #0x10
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #0
	ldrsb r2, [r6, r2]
	add r3, sp, #0x10
	mov r0, #0x3f
	add r1, r1, r2
	mov r2, #0
	ldrsh r3, [r3, r2]
	ldrsb r2, [r7, r2]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	bl ManagedSprite_SetPriority
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #1
	add r6, r6, #1
	add r4, r4, #4
	str r0, [sp]
	cmp r0, #8
	blo _021F3AC0
_021F3B1E:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3B24: .word 0x000088C8
_021F3B28: .word ov14_021F83E4
_021F3B2C: .word 0x0000C11F
_021F3B30: .word 0x000088D2
_021F3B34: .word ov14_021F8070
_021F3B38: .word ov14_021F8078
	thumb_func_end ov14_021F39D0

