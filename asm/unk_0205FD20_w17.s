#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/items.h"
#include "constants/std_script.h"
#include "fielddata/script/scr_seq/event_D24R0204.h"
#include "constants/field_move_response.h"
	.include "asm/macros.inc"
	.include "unk_0205FD20.inc"
	.include "global.inc"
	.public sub_020603F8
	.extern sub_02060E54
	.extern sub_02060EBC

	.text

	.text
	thumb_func_start sub_020603F8
sub_020603F8: ; 0x020603F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl MapObject_GetManager
	bl MapObjectManager_NotEndMovement
	cmp r0, #0
	beq _02060416
	ldrh r0, [r7]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1d
	bne _02060418
_02060416:
	b _0206052E
_02060418:
	cmp r0, #2
	bne _020604B0
	add r0, r4, #0
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	beq _02060484
	add r0, r4, #0
	bl MetatileBehavior_IsVeryTallGrass
	cmp r0, #1
	beq _02060484
	add r0, r6, #0
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	beq _02060484
	add r0, r6, #0
	bl MetatileBehavior_IsVeryTallGrass
	cmp r0, #1
	beq _02060484
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060E54
	cmp r0, #1
	beq _02060484
	add r0, r4, #0
	bl MetatileBehavior_IsPuddle
	cmp r0, #1
	beq _02060484
	add r0, r4, #0
	bl MetatileBehavior_IsShallowWater
	cmp r0, #1
	beq _02060484
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060EBC
	cmp r0, #1
	beq _02060484
	add r0, r4, #0
	bl MetatileBehavior_IsMud
	cmp r0, #1
	beq _02060484
	add r0, r4, #0
	bl MetatileBehavior_IsReflective
	cmp r0, #0
	beq _02060490
_02060484:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl MapObject_SetFlagsBits
	pop {r3, r4, r5, r6, r7, pc}
_02060490:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl MapObject_GetFlagsBitsMask
	cmp r0, #0
	bne _0206052E
	add r0, r5, #0
	bl ov01_021FD684
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl MapObject_SetFlagsBits
	pop {r3, r4, r5, r6, r7, pc}
_020604B0:
	add r0, r4, #0
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	beq _02060504
	add r0, r4, #0
	bl MetatileBehavior_IsVeryTallGrass
	cmp r0, #1
	beq _02060504
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060E54
	cmp r0, #1
	beq _02060504
	add r0, r4, #0
	bl MetatileBehavior_IsPuddle
	cmp r0, #1
	beq _02060504
	add r0, r4, #0
	bl MetatileBehavior_IsShallowWater
	cmp r0, #1
	beq _02060504
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02060EBC
	cmp r0, #1
	beq _02060504
	add r0, r4, #0
	bl MetatileBehavior_IsMud
	cmp r0, #1
	beq _02060504
	add r0, r4, #0
	bl MetatileBehavior_IsReflective
	cmp r0, #0
	beq _02060510
_02060504:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl MapObject_SetFlagsBits
	pop {r3, r4, r5, r6, r7, pc}
_02060510:
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl MapObject_GetFlagsBitsMask
	cmp r0, #0
	bne _0206052E
	add r0, r5, #0
	bl ov01_021FD640
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xe
	bl MapObject_SetFlagsBits
_0206052E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020603F8

