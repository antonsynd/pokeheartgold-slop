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
	.include "asm/macros.inc"
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F4D88
	.extern ov01_021F4A50
	.extern ov01_021F4AAC
	.extern ov01_021F4BE8

	.text

	.text
	thumb_func_start ov01_021F4D88
ov01_021F4D88: ; 0x021F4D88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x30
	str r1, [sp, #0xc]
	ldr r1, _021F4E10 ; =0x00000828
	lsl r6, r0, #2
	add r1, sp
	ldr r4, [r1, #0x18]
	ldr r5, [r1, #0x14]
	add r0, r4, r6
	ldr r0, [r0, #0x18]
	str r0, [sp]
	ldr r0, [r1, #0x10]
	add r1, r5, #0
	mul r0, r3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r3, [r4, r6]
	add r0, sp, #0x10
	bl ov01_021F4A50
	add r7, r0, #0
	ldr r0, _021F4E14 ; =0x0000FFFF
	cmp r7, r0
	beq _021F4E04
	ldr r1, [r4, r6]
	add r0, r5, #0
	bl ov01_021F4AAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	lsl r1, r1, #3
	add r2, sp, #0x20
	bl NARC_ReadFile
	mov r0, #1
	lsl r0, r0, #8
	ldr r3, [r4, r6]
	ldr r2, _021F4E18 ; =0x00000868
	ldr r0, [r5, r0]
	ldr r2, [r3, r2]
	add r3, r5, #0
	add r3, #0xf4
	ldr r1, [sp, #0x1c]
	ldr r3, [r3]
	bl MapPropManager_LoadFromNARC
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [r4, r6]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x10
	bl ov01_021F4BE8
_021F4E04:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4E10: .word 0x00000828
_021F4E14: .word 0x0000FFFF
_021F4E18: .word 0x00000868
	thumb_func_end ov01_021F4D88

