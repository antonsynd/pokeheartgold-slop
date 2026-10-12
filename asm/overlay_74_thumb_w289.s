#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02231EC4
	.extern TranslateAgbSpecies
	.extern ov74_02231E00
	.extern ov74_02231E54
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_02231EC4
ov74_02231EC4: ; 0x02231EC4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r3, #0
	add r5, r1, #0
	bl TranslateAgbSpecies
	add r1, r6, #0
	add r2, r7, #0
	add r4, r0, #0
	bl ov74_02231E54
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl GetMonIconNaixEx
	add r1, r0, #0
	mov r0, #0x14
	add r2, sp, #0
	mov r3, #0x4c
	bl ov74_02231E00
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r1, r1, #4
	add r1, #0x64
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #5
	lsl r2, r2, #8
	bl GX_LoadOBJ
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r1, #8
	bl Sprite_SetPaletteOverride
	add r0, r6, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov74_02231EC4

