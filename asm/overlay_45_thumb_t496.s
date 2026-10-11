#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0223070C
	.extern ov45_0223099C
	.extern ov45_02230A5C
	.extern ov45_02230A6C
	.extern ov45_02230E64
	.extern ov45_02254C3C
	.extern ov45_02254C98

	.text

	.text
	thumb_func_start ov45_0223070C
ov45_0223070C: ; 0x0223070C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	add r5, r0, #0
	add r7, r1, #0
	bl ov45_02230A6C
	add r4, r0, #0
	str r7, [r4, #4]
	add r1, sp, #0x34
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r3, _02230874 ; =ov45_02254C3C
	str r0, [r1, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x28
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #7
	str r0, [r2]
	add r0, r7, #0
	bl ov42_02228188
	bl ov45_0223099C
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0x7f
	bl GF2dGfxRawResMan_GetObjById
	bl GF2dGfxRawResObj_GetData
	ldrh r1, [r6, #2]
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	bl GF3dGfxRawResMan_GetObjById
	str r0, [sp, #0x18]
	bl GF3dGfxRawResObj_GetTex
	str r0, [sp, #0x10]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02230770
	ldr r1, _02230878 ; =0x00000119
	b _02230774
_02230770:
	mov r1, #0x46
	lsl r1, r1, #2
_02230774:
	ldr r0, [r5, #4]
	bl GF2dGfxRawResMan_GetObjById
	bl GF2dGfxRawResObj_GetData
	add r1, sp, #0x40
	bl sub_02026E18
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022307A0
	add r0, sp, #0x40
	str r0, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, _0223087C ; =ov45_02254C98
	add r0, sp, #0x70
	bl sub_02023E2C
	b _022307CE
_022307A0:
	ldr r0, [sp, #0x18]
	bl GF3dGfxRawResObj_GetTexKey
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl GF3dGfxRawResObj_GetTex4x4Key
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl GF3dGfxRawResObj_GetPlttKey
	add r1, sp, #0x40
	str r1, [sp]
	ldr r1, [sp, #0x1c]
	str r6, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, _0223087C ; =ov45_02254C98
	add r0, sp, #0x70
	bl sub_02023E04
_022307CE:
	add r0, r7, #0
	bl ov42_022282DC
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #0x24
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x34
	bl ov49_02258800
	mov r0, #1
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r0, [r5, #0xc]
	add r3, sp, #0x34
	str r0, [sp, #0x50]
	add r0, sp, #0x70
	str r0, [sp, #0x54]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x58
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #0x28
	str r0, [r2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x64
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0x50
	bl sub_02023D44
	ldr r1, _02230880 ; =ov45_02230E64
	add r2, r4, #0
	str r0, [r4, #8]
	bl sub_02023FE4
	add r0, r5, #0
	add r1, r4, #0
	add r0, #0x18
	add r1, #0xc
	bl ov45_02230A5C
	mov r2, #2
	lsl r2, r2, #0xc
	add r0, r4, #0
	ldr r6, [sp, #0x3c]
	lsl r3, r2, #2
	ldr r1, [sp, #0x34]
	add r0, #0xc
	sub r3, r6, r3
	bl sub_020182A8
	ldrb r1, [r4]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0xc0
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r4]
	ldrb r1, [r4]
	mov r0, #0x30
	bic r1, r0
	strb r1, [r4]
	add r0, r4, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x8c
	str r1, [r0]
	add r0, r4, #0
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02230874: .word ov45_02254C3C
_02230878: .word 0x00000119
_0223087C: .word ov45_02254C98
_02230880: .word ov45_02230E64
	thumb_func_end ov45_0223070C

