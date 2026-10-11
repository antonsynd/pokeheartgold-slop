#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F40E8
	.public ov14_021F4174
	.public ov14_021F41E4
	.public ov14_021F4278
	.public ov14_021F42EC
	.public ov14_021F4380
	.extern ov14_021F2A74
	.extern ov14_021F8070
	.extern ov14_021F8078
	.extern ov14_021F8140
	.extern ov14_021F8174

    .text

	.text
	thumb_func_start ov14_021F40E8
ov14_021F40E8: ; 0x021F40E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	cmp r7, #1
	bne _021F40F6
	mov r7, #1
	b _021F40F8
_021F40F6:
	mov r7, #0
_021F40F8:
	mov r6, #0
	add r4, r6, #0
_021F40FC:
	ldr r0, [r5, #0x34]
	add r1, r0, r4
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F4164
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	cmp r7, #1
	bne _021F4164
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _021F4164
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r1, _021F4170 ; =0x00004094
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	str r1, [sp]
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetDrawPriority
	add r2, r0, #0
	add r1, r6, #0
	ldr r0, [r5, #0x34]
	add r1, #0x3d
	add r2, r2, #1
	bl ov14_021F2A74
	ldr r1, [r5, #0x34]
	ldr r0, [sp]
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_GetPriority
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	add r2, r0, r4
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl ManagedSprite_SetPriority
_021F4164:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blo _021F40FC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F4170: .word 0x00004094
	thumb_func_end ov14_021F40E8

	thumb_func_start ov14_021F4174
ov14_021F4174: ; 0x021F4174
	push {r3, r4, r5, r6, r7, lr}
	add r1, r0, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0xff
	beq _021F41D4
	ldr r4, [r0, #0x34]
	ldr r0, _021F41D8 ; =0x00004094
	add r1, r4, r1
	ldrb r0, [r1, r0]
	add r2, sp, #0
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ManagedSprite_GetPositionXY
	ldr r7, _021F41DC ; =ov14_021F8070
	mov r5, #0
	add r6, sp, #0
_021F41A2:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r2, [r6, r1]
	ldrsb r1, [r7, r5]
	ldr r3, _021F41E0 ; =ov14_021F8078
	add r1, r2, r1
	mov r2, #0
	lsl r1, r1, #0x10
	ldrsh r2, [r6, r2]
	ldrsb r3, [r3, r5]
	asr r1, r1, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F41A2
_021F41D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F41D8: .word 0x00004094
_021F41DC: .word ov14_021F8070
_021F41E0: .word ov14_021F8078
	thumb_func_end ov14_021F4174

	thumb_func_start ov14_021F41E4
ov14_021F41E4: ; 0x021F41E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021F41F0:
	ldr r0, _021F426C ; =0x0000C123
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x46
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #6
	blo _021F41F0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _021F4270 ; =0x0000C0FF
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x47
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F4274 ; =0x0000C0FD
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x48
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F4274 ; =0x0000C0FD
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x49
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F426C: .word 0x0000C123
_021F4270: .word 0x0000C0FF
_021F4274: .word 0x0000C0FD
	thumb_func_end ov14_021F41E4

	thumb_func_start ov14_021F4278
ov14_021F4278: ; 0x021F4278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r7, #0
	ldr r3, _021F42E4 ; =ov14_021F8140
	str r0, [sp]
	add r4, r7, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r6, #6
_021F428A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F428A
	ldr r0, [r3]
	str r0, [r2]
_021F4296:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F429C:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F429C
	ldr r0, [r6]
	add r1, sp, #4
	str r0, [r3]
	mov r0, #0x34
	ldrsh r0, [r1, r0]
	add r1, r0, r4
	add r0, sp, #4
	strh r1, [r0, #0x34]
	ldr r0, _021F42E8 ; =0x0000C123
	ldr r1, [sp]
	add r0, r7, r0
	str r0, [sp, #0x4c]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0xce
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x22
	add r5, r5, #4
	cmp r7, #6
	blo _021F4296
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F42E4: .word ov14_021F8140
_021F42E8: .word 0x0000C123
	thumb_func_end ov14_021F4278

	thumb_func_start ov14_021F42EC
ov14_021F42EC: ; 0x021F42EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #1
_021F42F8:
	ldr r0, _021F4378 ; =0x0000C129
	str r6, [sp]
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0xbd
	mov r1, #0xbe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4a
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #4
	blo _021F42F8
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xc1
	mov r1, #0xbd
	lsl r0, r0, #8
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4b
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F437C ; =0x0000C0FE
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4c
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F437C ; =0x0000C0FE
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x13
	mov r3, #0x4d
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4378: .word 0x0000C129
_021F437C: .word 0x0000C0FE
	thumb_func_end ov14_021F42EC

	thumb_func_start ov14_021F4380
ov14_021F4380: ; 0x021F4380
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r7, #0
	ldr r3, _021F43EC ; =ov14_021F8174
	str r0, [sp]
	add r4, r7, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r6, #6
_021F4392:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F4392
	ldr r0, [r3]
	str r0, [r2]
_021F439E:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F43A4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F43A4
	ldr r0, [r6]
	add r1, sp, #4
	str r0, [r3]
	mov r0, #0x34
	ldrsh r0, [r1, r0]
	add r1, r0, r4
	add r0, sp, #4
	strh r1, [r0, #0x34]
	ldr r0, _021F43F0 ; =0x0000C129
	ldr r1, [sp]
	add r0, r7, r0
	str r0, [sp, #0x4c]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0x35
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x2e
	add r5, r5, #4
	cmp r7, #4
	blo _021F439E
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F43EC: .word ov14_021F8174
_021F43F0: .word 0x0000C129
	thumb_func_end ov14_021F4380

