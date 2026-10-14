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
	.include "unk_020632B0.inc"
	.include "global.inc"
	.public sub_02063E70
	.extern sub_020640A4

	.text

	.text
	thumb_func_start sub_02063E70
sub_02063E70: ; 0x02063E70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F394
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetFieldSystem
	add r1, r5, #0
	bl sub_02055780
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	bne _02063E9C
	b _02063FDC
_02063E9C:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02063ECC
	add r0, r5, #0
	bl MapObject_GetFieldSystem
	add r1, r5, #0
	bl FieldSystem_ApricornTree_TryGetApricorn
	add r1, r6, #0
	bl sub_020640A4
	str r0, [r4]
	ldr r1, [r4]
	add r0, r5, #0
	bl MapObject_SetSpriteID
	add r1, r4, #0
	ldr r2, [r4]
	add r0, r5, #0
	add r1, #8
	bl ov01_021F94C0
	b _02063F22
_02063ECC:
	ldr r0, [r4, #4]
	cmp r6, r0
	beq _02063F22
	add r1, r4, #0
	ldr r2, [r4]
	add r0, r5, #0
	add r1, #8
	bl ov01_021F95CC
	add r0, r5, #0
	bl MapObject_GetFieldSystem
	add r1, r5, #0
	bl FieldSystem_ApricornTree_TryGetApricorn
	add r1, r6, #0
	bl sub_020640A4
	str r0, [r4]
	ldr r1, [r4]
	add r0, r5, #0
	bl MapObject_SetSpriteID
	ldr r1, [r4]
	ldr r0, _02063FE0 ; =0x0000FFFF
	cmp r1, r0
	beq _02063F1A
	cmp r6, #1
	bne _02063F0C
	add r0, r5, #0
	bl ov01_021FE66C
_02063F0C:
	add r1, r4, #0
	ldr r2, [r4]
	add r0, r5, #0
	add r1, #8
	bl ov01_021F94C0
	b _02063F1E
_02063F1A:
	bl GF_AssertFail
_02063F1E:
	mov r0, #0
	strh r0, [r7, #2]
_02063F22:
	add r0, r5, #0
	str r6, [r4, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _02063FDC
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02063FDC
	add r0, r5, #0
	bl ov01_021FA3E8
	add r0, r5, #0
	bl ov01_021F9344
	cmp r0, #0
	bne _02063FD4
	add r0, r5, #0
	bl sub_0205F330
	cmp r0, #0
	beq _02063F58
	cmp r0, #1
	beq _02063F74
	cmp r0, #2
	beq _02063F90
	b _02063FAC
_02063F58:
	ldr r0, [r4, #8]
	bl sub_02023EF4
	cmp r0, #0
	beq _02063FCA
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023EE0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023F40
	b _02063FCA
_02063F74:
	ldr r0, [r4, #8]
	bl sub_02023EF4
	cmp r0, #1
	beq _02063FCA
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02023EE0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023F40
	b _02063FCA
_02063F90:
	ldr r0, [r4, #8]
	bl sub_02023EF4
	cmp r0, #2
	beq _02063FCA
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02023EE0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023F40
	b _02063FCA
_02063FAC:
	bl GF_AssertFail
	ldr r0, [r4, #8]
	bl sub_02023EF4
	cmp r0, #0
	beq _02063FCA
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023EE0
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02023F40
_02063FCA:
	mov r1, #1
	ldr r0, [r4, #8]
	lsl r1, r1, #0xc
	bl sub_02023F04
_02063FD4:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov01_021FA40C
_02063FDC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02063FE0: .word 0x0000FFFF
	thumb_func_end sub_02063E70

