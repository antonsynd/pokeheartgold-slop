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
	.public sub_020601BC
	.public sub_02060274

	.text

	.text
	thumb_func_start sub_020601BC
sub_020601BC: ; 0x020601BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	bl MapObject_GetID
	add r4, r0, #0
	add r0, r6, #0
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	bne _020601EE
	cmp r4, #0xfd
	bne _020601E6
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #8
	bl MapObject_TestFlagsBits
	cmp r0, #1
	beq _02060270
_020601E6:
	add r0, r5, #0
	mov r1, #0
	bl ov01_021FF070
_020601EE:
	add r0, r5, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	bne _02060270
	add r0, r5, #0
	bl ov01_022055DC
	cmp r0, #0
	beq _02060270
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl MapObject_GetFieldSystem
	add r4, #0xfe
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02060270
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov01_02205604
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl GetMetatileBehavior
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	bne _02060254
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov01_021FF0E4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02060254:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsVeryTallGrass
	cmp r0, #1
	bne _02060270
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov01_021FF964
_02060270:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_020601BC

	thumb_func_start sub_02060274
sub_02060274: ; 0x02060274
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	bl MapObject_GetID
	add r4, r0, #0
	add r0, r6, #0
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	bne _020602A6
	cmp r4, #0xfd
	bne _0206029E
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #8
	bl MapObject_TestFlagsBits
	cmp r0, #1
	beq _02060324
_0206029E:
	add r0, r5, #0
	mov r1, #1
	bl ov01_021FF070
_020602A6:
	add r0, r5, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	bne _02060324
	add r0, r5, #0
	bl ov01_022055DC
	cmp r0, #0
	beq _02060324
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl MapObject_GetFieldSystem
	add r4, #0xfe
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02060324
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov01_02205604
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r6, #0
	bl GetMetatileBehavior
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsTallGrass
	cmp r0, #1
	bne _0206030A
	mov r1, #1
	str r1, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl ov01_021FF0E4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0206030A:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsVeryTallGrass
	cmp r0, #1
	bne _02060324
	mov r1, #1
	str r1, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	add r0, r5, #0
	bl ov01_021FF964
_02060324:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_02060274

