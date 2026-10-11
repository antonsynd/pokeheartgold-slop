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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F0D20

	.text

	.text
	thumb_func_start ov01_021F0D20
ov01_021F0D20: ; 0x021F0D20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	bne _021F0D42
	ldr r1, _021F0DAC ; =0x00001720
	tst r1, r0
	bne _021F0D38
	cmp r0, #0
	bne _021F0D3C
_021F0D38:
	mov r1, #0
	b _021F0D42
_021F0D3C:
	bl GF_AssertFail
	mov r1, #0
_021F0D42:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0x18
	bhi _021F0D94
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0D58: ; jump table
	.short _021F0D8A - _021F0D58 - 2 ; case 0
	.short _021F0D8A - _021F0D58 - 2 ; case 1
	.short _021F0D8A - _021F0D58 - 2 ; case 2
	.short _021F0D8A - _021F0D58 - 2 ; case 3
	.short _021F0D8A - _021F0D58 - 2 ; case 4
	.short _021F0D92 - _021F0D58 - 2 ; case 5
	.short _021F0D8A - _021F0D58 - 2 ; case 6
	.short _021F0D8E - _021F0D58 - 2 ; case 7
	.short _021F0D8A - _021F0D58 - 2 ; case 8
	.short _021F0D8A - _021F0D58 - 2 ; case 9
	.short _021F0D8A - _021F0D58 - 2 ; case 10
	.short _021F0D8A - _021F0D58 - 2 ; case 11
	.short _021F0D94 - _021F0D58 - 2 ; case 12
	.short _021F0D94 - _021F0D58 - 2 ; case 13
	.short _021F0D94 - _021F0D58 - 2 ; case 14
	.short _021F0D94 - _021F0D58 - 2 ; case 15
	.short _021F0D94 - _021F0D58 - 2 ; case 16
	.short _021F0D94 - _021F0D58 - 2 ; case 17
	.short _021F0D94 - _021F0D58 - 2 ; case 18
	.short _021F0D94 - _021F0D58 - 2 ; case 19
	.short _021F0D94 - _021F0D58 - 2 ; case 20
	.short _021F0D94 - _021F0D58 - 2 ; case 21
	.short _021F0D94 - _021F0D58 - 2 ; case 22
	.short _021F0D94 - _021F0D58 - 2 ; case 23
	.short _021F0D8A - _021F0D58 - 2 ; case 24
_021F0D8A:
	mov r4, #0
	b _021F0D94
_021F0D8E:
	mov r4, #2
	b _021F0D94
_021F0D92:
	mov r4, #4
_021F0D94:
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _021F0DA2
	add r4, r4, #1
_021F0DA2:
	mov r0, #6
	mul r0, r1
	add r0, r4, r0
	pop {r3, r4, r5, pc}
	nop
_021F0DAC: .word 0x00001720
	thumb_func_end ov01_021F0D20

