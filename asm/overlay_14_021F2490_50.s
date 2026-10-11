#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3C08

    .text

	thumb_func_start ov14_021F3C08
ov14_021F3C08: ; 0x021F3C08
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F3CA4 ; =0x0000C121
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x52
	bl SpriteSystem_LoadCharResObj
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F3CA8 ; =0x0000C122
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x52
	bl SpriteSystem_LoadCharResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021F3CAC ; =0x0000C0FE
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #0x4a
	bl SpriteSystem_LoadPlttResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F3CB0 ; =0x0000C0FC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x53
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F3CB0 ; =0x0000C0FC
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x13
	mov r3, #0x54
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021F3CA4: .word 0x0000C121
_021F3CA8: .word 0x0000C122
_021F3CAC: .word 0x0000C0FE
_021F3CB0: .word 0x0000C0FC
	thumb_func_end ov14_021F3C08

