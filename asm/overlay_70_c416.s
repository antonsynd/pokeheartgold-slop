#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02243458
	.public ov70_022434C0
	.public ov70_0224352C
	.public ov70_02243598
	.extern ov70_02238F9C
	.extern ov70_0223F658
	.extern ov70_0224190C
	.extern ov70_02242508
	.extern ov70_02242FC4
	.extern ov70_0224342C
	.extern ov70_02243EB8
	.extern ov70_02243F00
	.extern ov70_02245D76
	.extern ov70_02245D77
	.extern ov70_02245E84

	.text

	.text
	thumb_func_start ov70_02243458
ov70_02243458: ; 0x02243458
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r6, r0, #0
	ldr r1, [sp, #0x28]
	mov r0, #0x3d
	add r2, sp, #0xc
	add r4, r3, #0
	ldr r7, [sp, #0x2c]
	bl ov70_0223F658
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov70_0224342C
	str r0, [sp, #8]
	add r0, r0, #1
	mov r1, #0x3d
	bl ListMenuItems_New
	str r0, [r6]
	ldr r0, [sp, #0xc]
	mov r4, #0
	cmp r0, #0
	ble _022434B4
	ldr r5, [sp, #4]
_02243492:
	ldrh r1, [r5]
	add r0, r7, #0
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	beq _022434AA
	ldrh r2, [r5]
	ldr r0, [r6]
	ldr r1, [sp]
	add r3, r2, #0
	bl ListMenuItems_AppendFromMsgData
_022434AA:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, r0
	blt _02243492
_022434B4:
	ldr r0, [sp, #4]
	bl Heap_Free
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02243458

	thumb_func_start ov70_022434C0
ov70_022434C0: ; 0x022434C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsl r7, r1, #2
	mov r4, #0
	add r5, r0, #0
	lsl r0, r7, #3
	str r2, [sp, #4]
	str r4, [sp, #0xc]
	add r6, r4, #0
	str r0, [sp, #8]
_022434D4:
	ldr r0, [r5, #4]
	mov r1, #0x22
	add r0, r0, r4
	bl FillWindowPixelBuffer
	ldr r0, [sp, #4]
	cmp r7, r0
	bge _022434FE
	ldr r0, _02243528 ; =0x000F0E02
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r3, [r5, #0x34]
	ldr r1, [r5, #4]
	add r2, r2, r3
	ldr r0, [r5, #0x1c]
	ldr r2, [r6, r2]
	add r1, r1, r4
	mov r3, #0
	bl ov70_02242FC4
	b _02243512
_022434FE:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl CopyWindowPixelsToVram_TextMode
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	add r2, r2, r4
	bl sub_02019A60
_02243512:
	ldr r0, [sp, #0xc]
	add r4, #0x10
	add r0, r0, #1
	add r7, r7, #1
	add r6, #8
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _022434D4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243528: .word 0x000F0E02
	thumb_func_end ov70_022434C0

	thumb_func_start ov70_0224352C
ov70_0224352C: ; 0x0224352C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	mov r4, #0
	add r7, r1, r0
	lsl r0, r7, #3
	str r2, [sp, #4]
	str r4, [sp, #0xc]
	add r6, r4, #0
	str r0, [sp, #8]
_02243542:
	ldr r0, [r5, #4]
	mov r1, #0x22
	add r0, r0, r4
	bl FillWindowPixelBuffer
	ldr r0, [sp, #4]
	cmp r7, r0
	bge _0224356C
	ldr r0, _02243594 ; =0x000F0E02
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r3, [r5, #0x34]
	ldr r1, [r5, #4]
	add r2, r2, r3
	ldr r0, [r5, #0x1c]
	ldr r2, [r6, r2]
	add r1, r1, r4
	mov r3, #0
	bl ov70_02242FC4
	b _02243580
_0224356C:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl CopyWindowPixelsToVram_TextMode
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	add r2, r2, r4
	bl sub_02019A60
_02243580:
	ldr r0, [sp, #0xc]
	add r4, #0x10
	add r0, r0, #1
	add r7, r7, #1
	add r6, #8
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _02243542
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02243594: .word 0x000F0E02
	thumb_func_end ov70_0224352C

	thumb_func_start ov70_02243598
ov70_02243598: ; 0x02243598
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x23
	bl sub_02019688
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r4, #0
	mov r1, #0
	bl ov70_0224190C
	mov r0, #0x3e
	ldrsh r2, [r4, r0]
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _0224367C ; =ov70_02245E84
	ldr r0, [r0, r1]
	add r0, r2, r0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x30]
	add r0, #0x34
	bl ov70_02243458
	str r0, [r4, #0x5c]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
	ldr r2, [r4, #0x5c]
	add r0, r4, #0
	bl ov70_022434C0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r4, #4]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	add r2, #0x40
	bl ov70_02243F00
	ldr r2, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r4, #0x1c]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r4, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0
	ldr r1, _02243680 ; =ov70_02245D76
	lsl r3, r0, #1
	ldr r2, _02243684 ; =ov70_02245D77
	str r0, [r4, #0x48]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, #0xc]
	bl ov70_02238F9C
	ldr r0, [r4, #0x10]
	mov r1, #0xe4
	mov r2, #0x78
	bl ov70_02238F9C
	ldr r0, [r4, #0x14]
	mov r1, #0x9a
	mov r2, #0x78
	bl ov70_02238F9C
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xd
	str r0, [r4, #0x4c]
	sub r0, #0xe
	add sp, #8
	pop {r4, pc}
	nop
_0224367C: .word ov70_02245E84
_02243680: .word ov70_02245D76
_02243684: .word ov70_02245D77
	thumb_func_end ov70_02243598

