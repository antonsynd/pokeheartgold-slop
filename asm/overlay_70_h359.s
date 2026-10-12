#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240A7C
	.public ov70_02240B9C
	.extern ov70_02240CA0

	.text

	.text
	thumb_func_start ov70_02240A7C
ov70_02240A7C: ; 0x02240A7C
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	add r6, r3, #0
	bl GetMonData
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #0x20]
	bl UpdatePokedexWithReceivedSpecies
	mov r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #6
	bne _02240AB0
	mov r0, #0
	str r0, [sp, #0x20]
_02240AB0:
	cmp r6, #0
	beq _02240B2C
	mov r1, #0x46
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, _02240B98 ; =0x000001ED
	cmp r0, r1
	bne _02240B0E
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02240AF4
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl GetMonData
	cmp r0, #0x56
	bne _02240B0E
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02240B0E
_02240AF4:
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl Save_VarsFlags_Get
	add r6, r0, #0
	bl Save_VarsFlags_GetVar404C
	cmp r0, #0
	bne _02240B0E
	add r0, r6, #0
	mov r1, #1
	bl Save_VarsFlags_SetVar404C
_02240B0E:
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl SetMonData
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0]
	bl ov70_02240CA0
_02240B2C:
	ldr r0, [sp, #0x20]
	cmp r0, #0x12
	bne _02240B54
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl Party_AddMon
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl Party_GetCount
	mov r1, #0x4d
	mov r2, #0x12
	lsl r1, r1, #2
	str r2, [r5, r1]
	sub r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
	b _02240B84
_02240B54:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	bl PCStorage_FindFirstEmptySlot
	add r0, r4, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0xc]
	bl PCStorage_PlaceMonInBoxFirstEmptySlot
	mov r0, #0x4d
	ldr r1, [sp, #0x20]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r1, [r5, r0]
_02240B84:
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0]
	bl sub_0202DB5C
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
_02240B98: .word 0x000001ED
	thumb_func_end ov70_02240A7C

	thumb_func_start ov70_02240B9C
ov70_02240B9C: ; 0x02240B9C
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0, #0x20]
	bl UpdatePokedexWithReceivedSpecies
	mov r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #6
	bne _02240BC2
	mov r0, #0
	str r0, [sp, #0x20]
_02240BC2:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, _02240C9C ; =0x000001ED
	cmp r0, r1
	bne _02240C16
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02240BFC
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl GetMonData
	cmp r0, #0x56
	bne _02240C16
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _02240C16
_02240BFC:
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl Save_VarsFlags_Get
	add r6, r0, #0
	bl Save_VarsFlags_GetVar404C
	cmp r0, #0
	bne _02240C16
	add r0, r6, #0
	mov r1, #1
	bl Save_VarsFlags_SetVar404C
_02240C16:
	mov r1, #0x46
	add r0, sp, #0
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl SetMonData
	ldr r0, [sp, #0x20]
	cmp r0, #0x12
	bne _02240C58
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #8]
	bl Party_AddMon
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl Party_GetCount
	mov r1, #0x4d
	mov r2, #0x12
	lsl r1, r1, #2
	str r2, [r5, r1]
	sub r2, r0, #1
	add r0, r1, #4
	str r2, [r5, r0]
	b _02240C88
_02240C58:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #4
	bl PCStorage_FindFirstEmptySlot
	add r0, r4, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0xc]
	bl PCStorage_PlaceMonInBoxFirstEmptySlot
	mov r0, #0x4d
	ldr r1, [sp, #0x20]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r1, [r5, r0]
_02240C88:
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0]
	bl ov70_02240CA0
	add sp, #8
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
_02240C9C: .word 0x000001ED
	thumb_func_end ov70_02240B9C

