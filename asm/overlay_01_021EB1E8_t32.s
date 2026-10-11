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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EBEB8
	.public ov01_021EBEF0
	.public ov01_021EBF24
	.public ov01_021EBF58
	.public ov01_021EBF94
	.public ov01_021EBFD0
	.public ov01_021EC028
	.extern ov01_021EB898
	.extern ov01_021EC240

	.text

	.text
	thumb_func_start ov01_021EBEB8
ov01_021EBEB8: ; 0x021EBEB8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EBEEC ; =0x0000FFFF
	cmp r1, r0
	beq _021EBEE8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021EBECE
	mov r0, #1
	pop {r4, pc}
_021EBECE:
	mov r0, #4
	mov r1, #0x64
	bl Heap_Alloc
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBEE0
	mov r0, #0
	pop {r4, pc}
_021EBEE0:
	mov r1, #0
	mov r2, #0x64
	bl memset
_021EBEE8:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021EBEEC: .word 0x0000FFFF
	thumb_func_end ov01_021EBEB8

	thumb_func_start ov01_021EBEF0
ov01_021EBEF0: ; 0x021EBEF0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBF20 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBF1A
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x10]
	mov r1, #2
	bl ov01_021EB898
	str r0, [r4, #8]
_021EBF1A:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EBF20: .word 0x0000FFFF
	thumb_func_end ov01_021EBEF0

	thumb_func_start ov01_021EBF24
ov01_021EBF24: ; 0x021EBF24
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBF54 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBF4E
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x14]
	mov r1, #3
	bl ov01_021EB898
	str r0, [r4, #0xc]
_021EBF4E:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EBF54: .word 0x0000FFFF
	thumb_func_end ov01_021EBF24

	thumb_func_start ov01_021EBF58
ov01_021EBF58: ; 0x021EBF58
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBF90 ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBF8C
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #8]
	mov r1, #0
	bl ov01_021EB898
	str r0, [r4]
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	ldr r0, [r4]
	bl sub_0200A740
_021EBF8C:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBF90: .word 0x0000FFFF
	thumb_func_end ov01_021EBF58

	thumb_func_start ov01_021EBF94
ov01_021EBF94: ; 0x021EBF94
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021EBFCC ; =0x0000FFFF
	add r3, r1, #0
	add r4, r2, #0
	cmp r3, r0
	beq _021EBFC6
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r2, r3, #0
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0xc]
	bl ov01_021EB898
	str r0, [r4, #4]
	bl SpriteTransfer_CreatePlttTransferTask
	ldr r0, [r4, #4]
	bl sub_0200A740
_021EBFC6:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EBFCC: .word 0x0000FFFF
	thumb_func_end ov01_021EBF94

	thumb_func_start ov01_021EBFD0
ov01_021EBFD0: ; 0x021EBFD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _021EC024 ; =0x0000FFFF
	cmp r1, r0
	beq _021EC022
	ldr r2, [r4, #0xc]
	mov r0, #1
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x40
	add r1, r5, #0
	mov r3, #0
	bl ov01_021EC240
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r0, #0x10
	mov r2, #0x30
	bl memset
	add r5, #0xfc
	ldr r1, [r5]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x14]
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	str r1, [r0, #0x24]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x28]
	ldr r0, [r4, #0xc]
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0xc]
	mov r1, #1
	str r1, [r0, #0x38]
_021EC022:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EC024: .word 0x0000FFFF
	thumb_func_end ov01_021EBFD0

	thumb_func_start ov01_021EC028
ov01_021EC028: ; 0x021EC028
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021EC032:
	ldr r0, [r6, #8]
	add r0, #0x10
	bl Sprite_CreateAffine
	str r0, [r5, #0x4c]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _021EC04C
	bl GF_AssertFail
_021EC04C:
	add r4, r4, #1
	add r5, #0x3c
	cmp r4, #0x40
	blt _021EC032
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC028

