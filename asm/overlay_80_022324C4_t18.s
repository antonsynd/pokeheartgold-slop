	.include "asm/macros.inc"
	.include "overlay_80_022324C4.inc"
	.include "global.inc"
	.public ov80_022331E8

    .text

	.text
	thumb_func_start ov80_022331E8
ov80_022331E8: ; 0x022331E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205C1F0
	str r0, [sp]
	add r0, r5, #0
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl FrontierSave_GetStat
	add r1, r0, r4
	ldr r0, _0223327C ; =0x0000270F
	cmp r1, r0
	ble _02233244
	add r0, r6, #0
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205C1F0
	str r0, [sp, #4]
	add r0, r5, #0
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r1, [sp, #4]
	ldr r3, _0223327C ; =0x0000270F
	add r0, r7, #0
	bl sub_02031108
	b _0223326A
_02233244:
	add r0, r6, #0
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205C1F0
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_02031228
_0223326A:
	add r0, r6, #0
	bl Save_GameStats_Get
	mov r1, #0x42 ; GAME_STAT_UNK66
	add r2, r4, #0
	bl GameStats_Add
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223327C: .word 0x0000270F
	thumb_func_end ov80_022331E8

