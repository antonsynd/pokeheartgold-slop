#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02260614
	.public ov12_02260668
	.extern ov12_0226D18C
	.extern ov12_0226D350

	.text

	.text
	thumb_func_start ov12_02260614
ov12_02260614: ; 0x02260614
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _02260626
	cmp r0, #1
	beq _0226063C
	pop {r3, r4, r5, pc}
_02260626:
	ldrb r0, [r4, #6]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02260666
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #0
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0226063C:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, #0x28
	bne _02260666
	ldrb r1, [r4, #5]
	ldr r0, [r4]
	bl ov12_02263A00
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #4]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_02260666:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02260614

	thumb_func_start ov12_02260668
ov12_02260668: ; 0x02260668
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBgConfig
	ldr r0, [r4]
	bl BattleSystem_GetPaletteData
	add r7, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetTerrainId
	add r5, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBackgroundId
	lsl r1, r0, #2
	ldr r0, _022609DC ; =ov12_0226D18C
	ldr r0, [r0, r1]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x15]
	add r0, r0, #1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r0, #5
	bls _022606A2
	b _022609D8
_022606A2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022606AE: ; jump table
	.short _022606BA - _022606AE - 2 ; case 0
	.short _022606FA - _022606AE - 2 ; case 1
	.short _022608B0 - _022606AE - 2 ; case 2
	.short _022608CC - _022606AE - 2 ; case 3
	.short _022608E8 - _022606AE - 2 ; case 4
	.short _022608FA - _022606AE - 2 ; case 5
_022606BA:
	mov r0, #5
	mov r1, #0
	bl ov07_0223458C
	str r0, [r4, #4]
	ldr r0, _022609E0 ; =ov12_0226D350
	add r1, sp, #0x10
	ldrb r5, [r0, r5]
	mov r0, #1
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
	ldr r0, [r4, #4]
	bl ov07_022345C8
	str r0, [r4, #8]
	add r0, r5, #1
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl ov07_022345C8
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl ov07_02234694
	ldr r0, _022609E4 ; =0x0000084F
	bl PlaySE
	mov r0, #1
	strb r0, [r4, #0x14]
_022606FA:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xa
	bne _02260734
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _022609E8 ; =0x0000F3FF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	bl PaletteData_BeginPaletteFade
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _022609EC ; =0x00003FFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #4
	bl PaletteData_BeginPaletteFade
_02260734:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xa
	blo _0226077E
	ldrb r0, [r4, #0x16]
	cmp r0, #0x10
	bhs _0226077E
	add r0, r0, #1
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x16]
	cmp r0, #0x10
	bls _0226074E
	mov r0, #0x10
	strb r0, [r4, #0x16]
_0226074E:
	add r0, r7, #0
	mov r1, #1
	bl PaletteData_GetFadedBuf
	add r6, r0, #0
	mov r0, #1
	mov r5, #0
	lsl r0, r0, #8
_0226075E:
	ldrb r2, [r4, #0x16]
	mov r1, #0x1f
	mul r1, r2
	lsl r1, r1, #0xc
	lsr r3, r1, #0x10
	lsl r1, r3, #5
	lsl r2, r3, #0xa
	orr r1, r3
	orr r2, r1
	lsl r1, r5, #1
	strh r2, [r6, r1]
	add r1, r5, #1
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	cmp r5, r0
	blo _0226075E
_0226077E:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x14
	bne _0226078A
	ldr r0, [r4, #0xc]
	bl ov07_02234694
_0226078A:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x17
	bne _02260798
	mov r0, #0x85
	lsl r0, r0, #4
	bl PlaySE
_02260798:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x1c
	bne _0226088A
	add r0, r7, #0
	mov r1, #0
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAE0
	add r1, r5, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	cmp r0, #0x4a
	bne _022607DA
	add r0, r7, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _0226083C
_022607DA:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _022607FE
	add r0, r7, #0
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	b _0226083C
_022607FE:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	tst r0, r1
	beq _02260824
	add r0, r7, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _0226083C
_02260824:
	add r0, r7, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0x80
	bl MIi_CpuCopy16
_0226083C:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #0
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022609E8 ; =0x0000F3FF
	add r0, r7, #0
	mov r1, #1
	bl PaletteData_BeginPaletteFade
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #0
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022609EC ; =0x00003FFF
	add r0, r7, #0
	mov r1, #4
	bl PaletteData_BeginPaletteFade
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #0
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022609F0 ; =0x0000FFFF
	add r0, r7, #0
	mov r1, #0xa
	bl PaletteData_BeginPaletteFade
_0226088A:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x32
	blo _022608BA
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r2, #3
	str r3, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	lsl r2, r2, #0xa
	bl PaletteData_BeginPaletteFade
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022608B0:
	ldr r0, [r4, #0xc]
	bl ov07_022346BC
	cmp r0, #0
	beq _022608BC
_022608BA:
	b _022609D8
_022608BC:
	ldr r0, [r4, #4]
	bl ov07_02234604
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022608CC:
	ldr r0, [r4]
	bl BattleSystem_GetMessageIcon
	mov r1, #0
	bl sub_0201649C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_022608E8:
	ldr r0, [r4, #4]
	bl ov07_02234628
	ldr r0, [r4, #4]
	bl ov07_02234604
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_022608FA:
	add r0, r7, #0
	mov r1, #0
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAE0
	add r1, r5, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	cmp r0, #0x4a
	bne _02260936
	add r0, r7, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _02260998
_02260936:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _0226095A
	add r0, r7, #0
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	b _02260998
_0226095A:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	tst r0, r1
	beq _02260980
	add r0, r7, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _02260998
_02260980:
	add r0, r7, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223BAEC
	add r1, r5, #0
	mov r2, #0x80
	bl MIi_CpuCopy16
_02260998:
	mov r3, #0
	str r3, [sp]
	ldr r0, _022609F4 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _022609F0 ; =0x0000FFFF
	add r0, r7, #0
	mov r1, #1
	bl PaletteData_BeginPaletteFade
	mov r3, #0
	str r3, [sp]
	ldr r2, _022609F0 ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r0, r7, #0
	mov r1, #4
	lsr r2, r2, #2
	bl PaletteData_BeginPaletteFade
	mov r3, #0
	str r3, [sp]
	ldr r0, _022609F4 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _022609F0 ; =0x0000FFFF
	add r0, r7, #0
	mov r1, #0xa
	bl PaletteData_BeginPaletteFade
	mov r0, #3
	strb r0, [r4, #0x14]
_022609D8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022609DC: .word ov12_0226D18C
_022609E0: .word ov12_0226D350
_022609E4: .word 0x0000084F
_022609E8: .word 0x0000F3FF
_022609EC: .word 0x00003FFF
_022609F0: .word 0x0000FFFF
_022609F4: .word 0x00007FFF
	thumb_func_end ov12_02260668

