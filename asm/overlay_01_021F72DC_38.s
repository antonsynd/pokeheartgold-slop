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
	.include "overlay_01_021F72DC.inc"
	.include "global.inc"
	.public ov01_021F8708
	.public ov01_021F878C
	.extern ov01_021F8874
	.extern ov01_021F8C88
	.extern ov01_022089CC

	.text

	.text
	thumb_func_start ov01_021F8708
ov01_021F8708: ; 0x021F8708
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	add r0, r1, #0
	bl sub_02023F30
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r4, #3
	bhi _021F876E
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F8738: ; jump table
	.short _021F876E - _021F8738 - 2 ; case 0
	.short _021F8740 - _021F8738 - 2 ; case 1
	.short _021F874C - _021F8738 - 2 ; case 2
	.short _021F875E - _021F8738 - 2 ; case 3
_021F8740:
	cmp r0, #0x18
	blt _021F876E
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _021F876E
_021F874C:
	cmp r0, #0x28
	bge _021F8758
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	b _021F876E
_021F8758:
	ldr r0, _021F8784 ; =0xFFFFB000
	str r0, [sp]
	b _021F876E
_021F875E:
	cmp r0, #0x38
	bge _021F8768
	ldr r0, _021F8788 ; =0xFFFFF000
	str r0, [sp]
	b _021F876E
_021F8768:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
_021F876E:
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl MapObject_SetFacingVector
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F8784: .word 0xFFFFB000
_021F8788: .word 0xFFFFF000
	thumb_func_end ov01_021F8708

	thumb_func_start ov01_021F878C
ov01_021F878C: ; 0x021F878C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	ldr r7, [r0, #4]
	str r0, [sp]
	cmp r7, #0
	beq _021F87FA
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F87FA
	add r0, r4, #0
	bl MapObject_GetFacingDirection
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #2
	blt _021F87C0
	bl GF_AssertFail
_021F87C0:
	lsl r6, r5, #2
	ldr r5, _021F8800 ; =ov01_022089CC + 4
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8874
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F87FA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8800: .word ov01_022089CC + 4
	thumb_func_end ov01_021F878C

