#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FFA40
	.extern ov15_022009A8
	.extern ov15_022009BC
	.extern ov15_022009F4

	.text

	.text
	thumb_func_start ov15_021FFA40
ov15_021FFA40: ; 0x021FFA40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r3, _021FFAC4 ; =ov15_022009BC
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	bl SpriteSystem_Alloc
	mov r1, #0x92
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl SpriteManager_New
	mov r7, #0x93
	lsl r7, r7, #2
	add r2, sp, #0x14
	ldr r3, _021FFAC8 ; =ov15_022009F4
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021FFACC ; =ov15_022009A8
	stmia r2!, {r0, r1}
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [r3]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x27
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021FFAC4: .word ov15_022009BC
_021FFAC8: .word ov15_022009F4
_021FFACC: .word ov15_022009A8
	thumb_func_end ov15_021FFA40

