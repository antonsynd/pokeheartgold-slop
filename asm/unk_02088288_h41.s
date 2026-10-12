#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_02089E98
	.extern sub_02089E14
	.extern sub_02089E80
	.extern sub_0208A234
	.extern sub_0208A310
	.extern sub_0208ADB8
	.extern sub_0208B044

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_02089E98
sub_02089E98: ; 0x02089E98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0208E544
	add r5, r0, #0
	cmp r5, #0xff
	bne _02089EAA
	mov r0, #2
	pop {r3, r4, r5, pc}
_02089EAA:
	cmp r5, #9
	bhi _02089F4C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02089EBA: ; jump table
	.short _02089ECE - _02089EBA - 2 ; case 0
	.short _02089EE6 - _02089EBA - 2 ; case 1
	.short _02089EE6 - _02089EBA - 2 ; case 2
	.short _02089F0A - _02089EBA - 2 ; case 3
	.short _02089F24 - _02089EBA - 2 ; case 4
	.short _02089F24 - _02089EBA - 2 ; case 5
	.short _02089F24 - _02089EBA - 2 ; case 6
	.short _02089F24 - _02089EBA - 2 ; case 7
	.short _02089F24 - _02089EBA - 2 ; case 8
	.short _02089F24 - _02089EBA - 2 ; case 9
_02089ECE:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02089E80
	cmp r0, #0
	beq _02089F4C
	lsl r1, r5, #0x18
	add r0, r4, #0
	asr r1, r1, #0x18
	bl sub_02089E14
	b _02089F4C
_02089EE6:
	mov r0, #0xa
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _02089F4C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02089E80
	cmp r0, #0
	beq _02089F4C
	lsl r1, r5, #0x18
	add r0, r4, #0
	asr r1, r1, #0x18
	bl sub_02089E14
	b _02089F4C
_02089F0A:
	add r0, r4, #0
	mov r1, #1
	bl sub_0208ADB8
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x15
	bl sub_0208B044
	pop {r3, r4, r5, pc}
_02089F24:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	sub r5, r5, #4
	ldrb r0, [r0, #0x14]
	cmp r0, r5
	beq _02089F4C
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0208A310
	cmp r0, #0
	beq _02089F4C
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0208A234
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_02089F4C:
	mov r0, #2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02089E98

