#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238CAC
	.extern _022451EC
	.extern ov70_02238D38
	.extern ov70_02238FB4

	.text

	.text
	thumb_func_start ov70_02238CAC
ov70_02238CAC: ; 0x02238CAC
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x3d
	mov r1, #0
	add r6, r2, #0
	bl TouchscreenListMenuSpawner_Create
	ldr r1, _02238D28 ; =0x000011CC
	mov r2, #0x18
	str r0, [r5, r1]
	add r0, sp, #0x18
	mov r1, #0
	bl MI_CpuFill8
	ldr r2, _02238D2C ; =_022451EC
	add r0, sp, #0x18
	ldrh r3, [r2]
	add r1, sp, #0x18
	strh r3, [r0]
	ldrh r3, [r2, #2]
	strh r3, [r0, #2]
	ldrh r3, [r2, #4]
	strh r3, [r0, #4]
	ldrh r3, [r2, #6]
	strh r3, [r0, #6]
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	strh r3, [r0, #8]
	ldr r3, _02238D30 ; =0x000011AC
	strh r2, [r0, #0xa]
	ldr r2, [r5, r3]
	add r3, #0x20
	str r2, [sp, #0x24]
	ldr r2, [r5, #4]
	str r2, [sp, #0x28]
	strb r4, [r0, #0x14]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, _02238D34 ; =ov70_02238D38
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5, r3]
	mov r3, #0x14
	bl TouchscreenListMenu_CreateWithCallback
	add r4, r0, #0
	mov r0, #1
	bl ov70_02238FB4
	add r0, r4, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02238D28: .word 0x000011CC
_02238D2C: .word _022451EC
_02238D30: .word 0x000011AC
_02238D34: .word ov70_02238D38
	thumb_func_end ov70_02238CAC

