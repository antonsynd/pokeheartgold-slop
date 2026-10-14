#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_022615F0

	.text

	.text
	thumb_func_start ov12_022615F0
ov12_022615F0: ; 0x022615F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r0, [sp]
	add r6, r2, #0
	add r4, r3, #0
	bl BattleSystem_GetBattleType
	str r0, [sp, #0x14]
	ldr r2, _02261904 ; =0x00000195
	ldr r0, [sp, #4]
	ldrb r1, [r0, r2]
	mov r0, #1
	tst r0, r1
	bne _02261610
	b _02261758
_02261610:
	ldr r0, [sp, #0x14]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x10]
	beq _0226162C
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	ldr r0, [sp]
	add r1, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	add r7, r0, #0
	b _02261634
_0226162C:
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	add r7, r5, #0
_02261634:
	ldr r0, [sp, #0x14]
	mov r1, #4
	tst r0, r1
	beq _022616DA
	ldr r0, [sp, #0x14]
	mov r1, #0x80
	tst r0, r1
	beq _0226166C
	ldr r0, _02261908 ; =0x000003DF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x3c
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_0226166C:
	ldr r0, [sp, #0x14]
	mov r1, #8
	tst r0, r1
	beq _0226169A
	mov r0, #0x3d
	lsl r0, r0, #4
	strh r0, [r4, #2]
	mov r0, #0x38
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	add sp, #0x18
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0226169A:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _022616C2
	ldr r0, _0226190C ; =0x000003CF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x31
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022616C2:
	ldr r0, _02261910 ; =0x000003CE
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022616DA:
	ldr r0, [sp, #0x14]
	mov r1, #0x10
	tst r0, r1
	bne _022616EA
	ldr r0, [sp, #0x14]
	mov r1, #8
	tst r0, r1
	beq _02261712
_022616EA:
	ldr r0, _02261908 ; =0x000003DF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x3c
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02261712:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0226173C
	ldr r0, _02261914 ; =0x000003CD
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x39
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0226173C:
	mov r0, #0xf3
	lsl r0, r0, #2
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	add sp, #0x18
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02261758:
	ldr r0, [sp, #0x14]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0xc]
	beq _022617EC
	ldr r0, [sp]
	bl ov12_0223BFC0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x14]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	beq _022617C2
	ldr r0, [sp]
	add r1, r2, #0
	bl ov12_0223BFCC
	cmp r0, #3
	bhi _02261832
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226178E: ; jump table
	.short _02261796 - _0226178E - 2 ; case 0
	.short _022617AC - _0226178E - 2 ; case 1
	.short _022617AC - _0226178E - 2 ; case 2
	.short _02261796 - _0226178E - 2 ; case 3
_02261796:
	ldr r0, [sp]
	mov r1, #4
	bl BattleSystem_GetBattlerFromBattlerType
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #2
	bl BattleSystem_GetBattlerFromBattlerType
	add r7, r0, #0
	b _02261832
_022617AC:
	ldr r0, [sp]
	mov r1, #2
	bl BattleSystem_GetBattlerFromBattlerType
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl BattleSystem_GetBattlerFromBattlerType
	add r7, r0, #0
	b _02261832
_022617C2:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _022617DE
	ldr r0, [sp]
	bl BattleSystem_GetBattlerFromBattlerType
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl BattleSystem_GetBattlerFromBattlerType
	add r7, r0, #0
	b _02261832
_022617DE:
	ldr r0, [sp]
	mov r1, #0
	bl BattleSystem_GetBattlerFromBattlerType
	add r5, r0, #0
	add r7, r5, #0
	b _02261832
_022617EC:
	ldr r0, [sp, #0x14]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	beq _0226180E
	ldr r1, [sp, #4]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl BattleSystem_GetBattlerIdPartner
	add r5, r0, #0
	mov r1, #0x65
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldrb r7, [r0, r1]
	b _02261832
_0226180E:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _0226182A
	ldr r0, [sp]
	bl BattleSystem_GetBattlerFromBattlerType
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl BattleSystem_GetBattlerFromBattlerType
	add r7, r0, #0
	b _02261832
_0226182A:
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	add r7, r5, #0
_02261832:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0226189C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02261860
	ldr r0, _02261918 ; =0x000003D1
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x31
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02261860:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _02261888
	ldr r0, _0226191C ; =0x000003D2
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #9
	strb r0, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02261888:
	ldr r0, _02261920 ; =0x000003D3
	add sp, #0x18
	strh r0, [r4, #2]
	strb r1, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226189C:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022618C6
	ldr r0, _02261924 ; =0x000003E1
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x39
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022618C6:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _022618EE
	ldr r0, _0226191C ; =0x000003D2
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #9
	strb r0, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022618EE:
	ldr r0, _02261920 ; =0x000003D3
	strh r0, [r4, #2]
	strb r1, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261904: .word 0x00000195
_02261908: .word 0x000003DF
_0226190C: .word 0x000003CF
_02261910: .word 0x000003CE
_02261914: .word 0x000003CD
_02261918: .word 0x000003D1
_0226191C: .word 0x000003D2
_02261920: .word 0x000003D3
_02261924: .word 0x000003E1
	thumb_func_end ov12_022615F0

