#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EDA4C
	.extern ov14_021F7D2C

    .text

	.text
	thumb_func_start ov14_021EDA4C
ov14_021EDA4C: ; 0x021EDA4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov14_021F6A14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EDB3C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EDAB8
	ldr r2, [r4, #0x34]
	ldr r1, _021EDDA4 ; =0x000040B8
	add r0, r2, r1
	add r1, r1, #4
	add r1, r2, r1
	bl System_GetTouchNewCoords
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021EDA96
	ldr r1, _021EDDA8 ; =ov14_021F7D2C
	add r0, r4, #0
	mov r2, #4
	bl ov14_021F5EE4
_021EDA96:
	ldr r0, _021EDDAC ; =0x000005EB
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F0418
	pop {r3, r4, r5, pc}
_021EDAB8:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021EDB1C
	add r0, r4, #0
	add r0, #0x21
	ldrb r5, [r0]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	ldr r1, _021EDDB0 ; =ov14_021EA130
	add r0, r4, #0
	mov r2, #0x59
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021EDB1C:
	ldr r0, [r4, #0x34]
	lsl r1, r5, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x51
	pop {r3, r4, r5, pc}
_021EDB3C:
	add r0, r4, #0
	bl ov14_021F6E8C
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021EDB82
	blo _021EDB50
	b _021EDCBA
_021EDB50:
	cmp r5, #0x26
	bhi _021EDB76
	sub r0, #0x1e
	bmi _021EDB80
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EDB64: ; jump table
	.short _021EDC32 - _021EDB64 - 2 ; case 0
	.short _021EDC4E - _021EDB64 - 2 ; case 1
	.short _021EDC84 - _021EDB64 - 2 ; case 2
	.short _021EDCFA - _021EDB64 - 2 ; case 3
	.short _021EDB98 - _021EDB64 - 2 ; case 4
	.short _021EDBBC - _021EDB64 - 2 ; case 5
	.short _021EDBD2 - _021EDB64 - 2 ; case 6
	.short _021EDBEC - _021EDB64 - 2 ; case 7
	.short _021EDBFE - _021EDB64 - 2 ; case 8
_021EDB76:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	bne _021EDB80
	b _021EDD6C
_021EDB80:
	b _021EDDC4
_021EDB82:
	add r0, r1, #1
	cmp r5, r0
	bhi _021EDB8E
	bne _021EDB8C
	b _021EDD12
_021EDB8C:
	b _021EDDC4
_021EDB8E:
	add r0, r1, #2
	cmp r5, r0
	bne _021EDB96
	b _021EDD24
_021EDB96:
	b _021EDDC4
_021EDB98:
	ldr r0, [r4, #8]
	bl Party_GetCount
	cmp r0, #6
	beq _021EDBAA
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	b _021EDBB0
_021EDBAA:
	ldr r0, _021EDDB8 ; =0x000005F3
	bl PlaySE
_021EDBB0:
	add r0, r4, #0
	mov r1, #4
	mov r2, #0xa7
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDBBC:
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	mov r0, #0x23
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x97
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDBD2:
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x99
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDBEC:
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x9b
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDBFE:
	add r0, r4, #0
	add r0, #0x21
	ldrb r5, [r0]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xa8
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDC32:
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	add r0, r4, #0
	bl ov14_021F1128
	pop {r3, r4, r5, pc}
_021EDC4E:
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0x1e
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	add r0, r4, #0
	mov r1, #0x51
	bl ov14_021F028C
	pop {r3, r4, r5, pc}
_021EDC84:
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0x1e
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	add r0, r4, #0
	mov r1, #0x51
	bl ov14_021F0314
	pop {r3, r4, r5, pc}
_021EDCBA:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x1e
	bhs _021EDCD0
	add r0, r4, #0
	bl ov14_021E7588
	b _021EDCEA
_021EDCD0:
	cmp r1, #0x22
	beq _021EDCEA
	cmp r1, #0x23
	beq _021EDCEA
	cmp r1, #0x24
	beq _021EDCEA
	cmp r1, #0x25
	beq _021EDCEA
	cmp r1, #0x26
	beq _021EDCEA
	add r0, r4, #0
	bl ov14_021E765C
_021EDCEA:
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x58
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EDCFA:
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E765C
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x93
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDD12:
	ldr r0, _021EDDB4 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x94
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EDD24:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	cmp r0, #0x1e
	bne _021EDE12
	ldr r0, _021EDDC0 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021EDD50
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x51
	bl ov14_021F028C
	pop {r3, r4, r5, pc}
_021EDD50:
	mov r0, #0x10
	tst r0, r1
	beq _021EDE12
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x51
	bl ov14_021F0314
	pop {r3, r4, r5, pc}
_021EDD6C:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x1e
	bhs _021EDD82
	add r0, r4, #0
	bl ov14_021E7588
	b _021EDD9C
_021EDD82:
	cmp r1, #0x22
	beq _021EDD9C
	cmp r1, #0x23
	beq _021EDD9C
	cmp r1, #0x24
	beq _021EDD9C
	cmp r1, #0x25
	beq _021EDD9C
	cmp r1, #0x26
	beq _021EDD9C
	add r0, r4, #0
	bl ov14_021E765C
_021EDD9C:
	ldr r0, _021EDDBC ; =0x000005DC
	bl PlaySE
	b _021EDE12
	.balign 4, 0
_021EDDA4: .word 0x000040B8
_021EDDA8: .word ov14_021F7D2C
_021EDDAC: .word 0x000005EB
_021EDDB0: .word ov14_021EA130
_021EDDB4: .word 0x000005DD
_021EDDB8: .word 0x000005F3
_021EDDBC: .word 0x000005DC
_021EDDC0: .word gSystem
_021EDDC4:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EDE12
	ldr r0, _021EDE18 ; =0x000005DD
	bl PlaySE
	ldr r1, _021EDE1C ; =ov14_021F7D2C
	add r0, r4, #0
	mov r2, #4
	bl ov14_021F5EE4
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x22
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	mov r1, #0x22
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F04D4
	pop {r3, r4, r5, pc}
_021EDE12:
	mov r0, #0x51
	pop {r3, r4, r5, pc}
	nop
_021EDE18: .word 0x000005DD
_021EDE1C: .word ov14_021F7D2C
	thumb_func_end ov14_021EDA4C

