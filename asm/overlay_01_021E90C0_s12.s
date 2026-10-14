#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "macros.inc"
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public ov01_021E9AE8

	.text

	.text
	thumb_func_start ov01_021E9AE8
ov01_021E9AE8: ; 0x021E9AE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r7, r0, #0
	str r3, [sp, #0x18]
	mov r0, #3
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, sp, #0x44
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	sub r2, r3, #2
	mov r3, #0
	bl sub_02054A60
	ldr r0, [r7, #0x34]
	bl ov01_021FB904
	add r6, r0, #0
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r7, #0
	add r2, r1, #0
	add r3, sp, #0x44
	bl sub_02054D10
	mov r4, #0
	str r0, [sp, #0x1c]
	str r4, [sp, #0x24]
	add r5, r0, #0
_021E9B28:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9B5A
	add r0, r6, #0
	add r2, sp, #0x2c
	bl NARC_ReadWholeMember
	add r0, sp, #0x28
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9B5A
	ldr r1, [sp, #0x1c]
	lsl r4, r4, #2
	ldr r1, [r1, r4]
	add r0, r7, #0
	add r2, sp, #0x44
	add r3, sp, #0x28
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, r4]
	str r0, [sp, #0x20]
	b _021E9B62
_021E9B5A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E9B28
_021E9B62:
	ldr r0, [sp, #0x1c]
	bl Heap_Free
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E9BB0
	ldr r0, [r7, #0x54]
	ldr r1, [sp, #0x20]
	bl MapPropAnimationManager_GetPropAnimationCount
	add r5, r0, #0
	beq _021E9BB4
	ldr r0, [r7, #0x34]
	bl ov01_021FB9E0
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	bl MapProp_GetRenderSurface
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	bl MapProp_GetResModel
	str r4, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x54]
	ldr r1, [r7, #0x58]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x20]
	bl MapPropOneShotAnimationManager_LoadPropAnimations
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_021E9BB0:
	bl GF_AssertFail
_021E9BB4:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov01_021E9AE8

