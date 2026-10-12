#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2C84
	.public ov14_021F2D1C
	.extern ov14_021F810C

    .text

	.text
	thumb_func_start ov14_021F2C84
ov14_021F2C84: ; 0x021F2C84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r7, #0xbe
	add r5, r0, #0
	mov r4, #0
	mov r6, #1
	lsl r7, r7, #2
_021F2C92:
	ldr r0, _021F2D18 ; =0x0000C0F9
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r7]
	mov r2, #0x13
	mov r3, #0x4e
	bl SpriteSystem_LoadCharResObj
	add r4, r4, #1
	cmp r4, #0x24
	blo _021F2C92
	bl sub_02074490
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021F2D18 ; =0x0000C0F9
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x14
	bl SpriteSystem_LoadPlttResObj
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F2D18 ; =0x0000C0F9
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x14
	bl SpriteSystem_LoadCellResObj
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F2D18 ; =0x0000C0F9
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x14
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2D18: .word 0x0000C0F9
	thumb_func_end ov14_021F2C84

	thumb_func_start ov14_021F2D1C
ov14_021F2D1C: ; 0x021F2D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r0, #0
	mov r4, #0
	ldr r3, _021F2DB8 ; =ov14_021F810C
	str r4, [sp]
	add r7, r5, #0
	add r2, sp, #4
	mov r6, #6
_021F2D2E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F2D2E
	ldr r0, [r3]
	str r0, [r2]
_021F2D3A:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F2D40:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F2D40
	ldr r0, [r6]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	bl _u32_div_f
	mov r3, #0x18
	add r0, sp, #4
	mov r2, #0x34
	ldrsh r2, [r0, r2]
	mul r3, r1
	add r1, r2, r3
	strh r1, [r0, #0x34]
	add r0, r4, #0
	mov r1, #6
	bl _u32_div_f
	mov r3, #0x18
	add r1, sp, #4
	mov r2, #0x36
	ldrsh r2, [r1, r2]
	mul r3, r0
	add r0, r2, r3
	strh r0, [r1, #0x36]
	ldr r0, [sp]
	mov r1, #0x74
	sub r0, r1, r0
	str r0, [sp, #0x40]
	ldr r0, _021F2DBC ; =0x0000C0F9
	mov r1, #0xbd
	add r0, r4, r0
	lsl r1, r1, #2
	str r0, [sp, #0x4c]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r7, r1]
	add r2, r4, #0
	add r1, r5, r4
	ldr r0, _021F2DC0 ; =0x00004094
	add r2, #0x19
	strb r2, [r1, r0]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, r0, #2
	add r7, r7, #4
	str r0, [sp]
	cmp r4, #0x24
	blo _021F2D3A
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2DB8: .word ov14_021F810C
_021F2DBC: .word 0x0000C0F9
_021F2DC0: .word 0x00004094
	thumb_func_end ov14_021F2D1C

