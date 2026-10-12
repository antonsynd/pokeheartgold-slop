#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225FCC0
	.public ov12_0225FD14
	.public ov12_0225FF80
	.public ov12_0225FFDC
	.public ov12_02260030
	.public ov12_022600F0
	.public ov12_0226037C
	.public ov12_02260418
	.public ov12_02260584
	.extern ov12_02261B80
	.extern ov12_02261CA8
	.extern ov12_02261EB8
	.extern ov12_02261ED4

	.text

	.text
	thumb_func_start ov12_0225FCC0
ov12_0225FCC0: ; 0x0225FCC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldr r0, [r4]
	add r2, sp, #0
	bl ov12_0223BE0C
	cmp r0, #1
	bne _0225FCDA
	ldr r0, [r4]
	bl ov12_02261ED4
_0225FCDA:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225FCEA
	cmp r0, #0xff
	beq _0225FCF0
	cmp r0, #1
	beq _0225FCF0
_0225FCEA:
	ldr r0, [r4]
	bl ov12_02261EB8
_0225FCF0:
	add r2, sp, #0
	ldrb r1, [r4, #0xd]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_02262F24
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0225FCC0

	thumb_func_start ov12_0225FD14
ov12_0225FD14: ; 0x0225FD14
	push {r3, r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _0225FD2A
	b _0225FF78
_0225FD2A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FD36: ; jump table
	.short _0225FD4C - _0225FD36 - 2 ; case 0
	.short _0225FF56 - _0225FD36 - 2 ; case 1
	.short _0225FDA6 - _0225FD36 - 2 ; case 2
	.short _0225FF56 - _0225FD36 - 2 ; case 3
	.short _0225FE02 - _0225FD36 - 2 ; case 4
	.short _0225FF56 - _0225FD36 - 2 ; case 5
	.short _0225FE50 - _0225FD36 - 2 ; case 6
	.short _0225FF56 - _0225FD36 - 2 ; case 7
	.short _0225FED8 - _0225FD36 - 2 ; case 8
	.short _0225FF56 - _0225FD36 - 2 ; case 9
	.short _0225FF34 - _0225FD36 - 2 ; case 10
_0225FD4C:
	ldrh r0, [r4, #0x1e]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225FD9A
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _0225FD9A
	ldr r0, [r4, #8]
	mov r1, #6
	bl Pokepic_GetAttr
	cmp r0, #0
	bne _0225FD9A
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x1b8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x1b8
	bl ov12_02261B80
	add sp, #0x1fc
	mov r0, #1
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FD9A:
	add sp, #0x1fc
	mov r0, #4
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FDA6:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0x168
	bl ov12_02261CA8
	add r0, sp, #0x168
	mov r1, #5
	bl ov07_0223494C
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x110
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x110
	bl ov12_02261B80
	mov r0, #0x1a
	add sp, #0x1fc
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FE02:
	ldr r0, [r4]
	mov r1, #2
	bl BattleSystem_SetCriticalHpMusicFlag
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225FE1A
	ldr r0, [r4]
	bl BattleSystem_SetHpBarDisabled
_0225FE1A:
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225FE30
	ldr r0, [r4]
	bl BattleSystem_GetPokepicManager
	mov r1, #1
	bl PokepicManager_SetG3UpdateFlagsMask
_0225FE30:
	add r3, r4, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, #0x10
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add sp, #0x1fc
	add r4, #0x6a
	add r0, r0, #1
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FE50:
	ldr r0, [r4]
	mov r1, #0
	bl BattleSystem_SetCriticalHpMusicFlag
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225FE68
	ldr r0, [r4]
	bl BattleSystem_SetHpBarEnabled
_0225FE68:
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225FE7E
	ldr r0, [r4]
	bl BattleSystem_GetPokepicManager
	mov r1, #1
	bl PokepicManager_ResetG3UpdateFlagsMask
_0225FE7E:
	ldrh r0, [r4, #0x1e]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225FECC
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _0225FECC
	ldr r0, [r4, #8]
	mov r1, #6
	bl Pokepic_GetAttr
	cmp r0, #0
	bne _0225FECC
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0xb8
	bl ov12_02261B80
	add sp, #0x1fc
	mov r0, #7
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FECC:
	add sp, #0x1fc
	mov r0, #0xa
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FED8:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0x68
	bl ov12_02261CA8
	add r0, sp, #0x68
	mov r1, #5
	bl ov07_02234A20
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x10
	bl ov12_02261B80
	mov r0, #0x1a
	add sp, #0x1fc
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225FF34:
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, pc}
_0225FF56:
	ldr r0, [r4, #0xc]
	bl ov07_0221C394
	ldr r0, [r4, #0xc]
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225FF78
	ldr r0, [r4, #0xc]
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add r0, r0, #1
	strb r0, [r4]
_0225FF78:
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov12_0225FD14

	thumb_func_start ov12_0225FF80
ov12_0225FF80: ; 0x0225FF80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #6
	bhs _0225FFBA
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0225FFB4
	mov r0, #2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #9]
	mov r1, #6
	add r0, r0, #1
	strb r0, [r4, #9]
	ldr r0, [r4, #4]
	bl Pokepic_GetAttr
	add r3, r0, #0
	mov r2, #1
	ldr r0, [r4, #4]
	mov r1, #6
	eor r2, r3
	bl Pokepic_SetAttr
	pop {r3, r4, r5, pc}
_0225FFB4:
	sub r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_0225FFBA:
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	ldrb r1, [r4, #8]
	ldr r0, [r4]
	mov r2, #0x17
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0225FF80

	thumb_func_start ov12_0225FFDC
ov12_0225FFDC: ; 0x0225FFDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0225FFEE
	cmp r0, #1
	beq _0225FFFC
	b _02260012
_0225FFEE:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02264DCC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_0225FFFC:
	add r0, r4, #0
	bl ov12_02264E00
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0226002C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02260012:
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov12_0226430C
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl SysTask_Destroy
_0226002C:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov12_0225FFDC

	thumb_func_start ov12_02260030
ov12_02260030: ; 0x02260030
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02260046
	cmp r0, #1
	beq _02260062
	cmp r0, #2
	beq _022600A8
	b _022600CE
_02260046:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _022600EC ; =0x0000070B
	bl PlaySE
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl ov12_02264E34
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02260062:
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	bhs _0226007A
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
_0226007A:
	add r0, r4, #0
	bl ov12_02264E68
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022600E8
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	blo _022600A0
	ldr r0, _022600EC ; =0x0000070B
	mov r1, #0
	bl StopSE
	mov r0, #0x64
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022600A0:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022600A8:
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	blo _022600E8
	ldr r0, _022600EC ; =0x0000070B
	mov r1, #0
	bl StopSE
	mov r0, #0x64
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022600CE:
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov12_0226430C
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl SysTask_Destroy
_022600E8:
	pop {r3, r4, r5, pc}
	nop
_022600EC: .word 0x0000070B
	thumb_func_end ov12_02260030

	thumb_func_start ov12_022600F0
ov12_022600F0: ; 0x022600F0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x114
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	add r1, r4, #0
	add r1, #0x66
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0xa
	bls _0226010C
	b _02260374
_0226010C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02260118: ; jump table
	.short _0226012E - _02260118 - 2 ; case 0
	.short _022601D6 - _02260118 - 2 ; case 1
	.short _0226017A - _02260118 - 2 ; case 2
	.short _022601D6 - _02260118 - 2 ; case 3
	.short _022601FA - _02260118 - 2 ; case 4
	.short _0226024C - _02260118 - 2 ; case 5
	.short _02260266 - _02260118 - 2 ; case 6
	.short _022602A2 - _02260118 - 2 ; case 7
	.short _022602CE - _02260118 - 2 ; case 8
	.short _0226030E - _02260118 - 2 ; case 9
	.short _02260356 - _02260118 - 2 ; case 10
_0226012E:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	beq _02260170
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xbc
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xbc
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02260170:
	mov r0, #4
	add r4, #0x66
	add sp, #0x114
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0226017A:
	add r3, r4, #0
	add r3, #0x65
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0xc
	add r2, sp, #0x6c
	bl ov12_02261CA8
	add r0, sp, #0x6c
	mov r1, #5
	bl ov07_0223494C
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x14
	bl ov12_02261B80
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022601D6:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _02260254
	add r0, r5, #0
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022601FA:
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #2
	bne _02260208
	mov r5, #0x75
	b _0226020C
_02260208:
	mov r5, #0x74
	mvn r5, r5
_0226020C:
	add r1, r4, #0
	add r1, #0x65
	ldrb r1, [r1]
	ldr r0, [r4]
	bl BattleSystem_GetChatotVoice
	str r5, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x72
	ldrh r1, [r1]
	add r3, r4, #0
	mov r2, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x68
	add r3, #0x6b
	ldrh r2, [r2]
	ldrb r3, [r3]
	bl sub_0207204C
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
_0226024C:
	bl IsCryFinished
	cmp r0, #0
	beq _02260256
_02260254:
	b _02260374
_02260256:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02260266:
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _02260378 ; =0x00000703
	bne _0226027A
	mov r1, #0x75
	bl sub_0200602C
	b _02260282
_0226027A:
	mov r1, #0x74
	mvn r1, r1
	bl sub_0200602C
_02260282:
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl Pokepic_GetAttr
	cmp r0, #0
	ble _02260298
	mov r0, #7
	add r4, #0x66
	add sp, #0x114
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02260298:
	mov r0, #8
	add r4, #0x66
	add sp, #0x114
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_022602A2:
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl Pokepic_GetAttr
	add r5, r0, #0
	sub r5, #8
	bpl _022602B2
	mov r5, #0
_022602B2:
	ldr r0, [r4, #8]
	mov r1, #0x29
	add r2, r5, #0
	bl Pokepic_SetAttr
	cmp r5, #0
	bne _02260374
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
_022602CE:
	ldr r0, [r4, #0x6c]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	add r0, #0x68
	add r1, #0x6a
	add r2, #0x67
	add r3, #0x6b
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldrb r3, [r3]
	bl GetMonPicHeightBySpeciesGenderForm
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl Pokepic_SetVisible
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0226030E:
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_GetAttr
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	add r2, #8
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	mov r1, #0x12
	bl Pokepic_GetAttr
	add r5, r0, #0
	sub r5, #8
	bpl _02260332
	mov r5, #0
_02260332:
	ldr r0, [r4, #8]
	mov r1, #0x12
	add r2, r5, #0
	bl Pokepic_SetAttr
	cmp r5, #0
	bne _02260374
	ldr r0, [r4, #8]
	bl Pokepic_Delete
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02260356:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x65
	add r2, #0x64
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_02260374:
	add sp, #0x114
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02260378: .word 0x00000703
	thumb_func_end ov12_022600F0

	thumb_func_start ov12_0226037C
ov12_0226037C: ; 0x0226037C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetPaletteData
	add r4, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetPokepicManager
	add r7, r0, #0
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _022603A6
	cmp r0, #1
	beq _022603E4
	cmp r0, #2
	beq _022603F8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022603A6:
	ldr r0, [r5]
	bl BattleSystem_GetMessageIcon
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02260414 ; =0x0000FFFF
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #1
	bl PaletteData_BeginPaletteFade
	mov r1, #0
	add r0, r7, #0
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl Pokepic_StartPaletteFadeAll
	mov r0, #0
	mov r1, #0x10
	bl GF_SndStartFadeOutBGM
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
_022603E4:
	add r0, r4, #0
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	bne _0226040E
	ldrb r0, [r5, #6]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #6]
	pop {r4, r5, r6, r7, pc}
_022603F8:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0226040E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02260414: .word 0x0000FFFF
	thumb_func_end ov12_0226037C

	thumb_func_start ov12_02260418
ov12_02260418: ; 0x02260418
	push {r4, r5, r6, lr}
	sub sp, #0x110
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	add r1, r4, #0
	add r1, #0x62
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #4
	bls _02260434
	b _02260560
_02260434:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02260440: ; jump table
	.short _0226044A - _02260440 - 2 ; case 0
	.short _0226048C - _02260440 - 2 ; case 1
	.short _0226053C - _02260440 - 2 ; case 2
	.short _022604E0 - _02260440 - 2 ; case 3
	.short _0226053C - _02260440 - 2 ; case 4
_0226044A:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02260482
	add r2, r4, #0
	add r2, #0x63
	ldrb r2, [r2]
	mov r1, #6
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0x63
	ldrb r0, [r0]
	cmp r0, #1
	bne _02260472
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02260472:
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02260482:
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0226048C:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _022604D6
	mov r0, #0x1a
	ldr r1, [r4, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022604D6
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xb8
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_022604D6:
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_022604E0:
	add r3, r4, #0
	add r3, #0x61
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #8
	add r2, sp, #0x68
	bl ov12_02261CA8
	add r0, sp, #0x68
	mov r1, #5
	bl ov07_02234A20
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x10
	bl ov12_02261B80
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0226053C:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0226057E
	add r0, r5, #0
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02260560:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x61
	add r2, #0x60
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0226057E:
	add sp, #0x110
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_02260418

	thumb_func_start ov12_02260584
ov12_02260584: ; 0x02260584
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _02260596
	cmp r0, #1
	beq _022605AC
	pop {r3, r4, r5, pc}
_02260596:
	ldr r0, [r4, #4]
	add r1, #0xb
	bl BattleHpBar_BeginExpBarFullFlashEffect
	ldr r0, _022605CC ; =0x0000070C
	bl PlaySE
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_022605AC:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _022605C8
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_022605C8:
	pop {r3, r4, r5, pc}
	nop
_022605CC: .word 0x0000070C
	thumb_func_end ov12_02260584

