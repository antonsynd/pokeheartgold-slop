#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_02246818
	.public ov02_0224686C
	.extern ov02_02246964
	.extern ov02_022469A0
	.extern ov02_0225324C

	.text

	.text
	thumb_func_start ov02_02246818
ov02_02246818: ; 0x02246818
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _0224682C
	cmp r1, #1
	beq _0224683E
	b _02246862
_0224682C:
	bl ov02_0224686C
	ldr r0, _02246868 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _02246862
_0224683E:
	bl ov02_022469A0
	cmp r0, #0
	beq _02246862
	ldr r0, _02246868 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	add r0, r4, #0
	bl ov02_02246964
	add r0, r4, #0
	bl Heap_Free
	mov r0, #1
	pop {r4, pc}
_02246862:
	mov r0, #0
	pop {r4, pc}
	nop
_02246868: .word 0x000005DC
	thumb_func_end ov02_02246818

	thumb_func_start ov02_0224686C
ov02_0224686C: ; 0x0224686C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5]
	mov r0, #0xae
	bl NARC_New
	mov r1, #0x20
	str r1, [sp]
	ldr r1, [r5]
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #0xf
	add r3, r2, #0
	add r4, r0, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x10
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r4, #0
	ldr r2, [r2, #8]
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	mov r1, #0x11
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	add r0, r4, #0
	ldr r2, [r2, #8]
	mov r3, #1
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, #8]
	bl GetBgPriority
	strb r0, [r5, #0x1a]
	mov r0, #1
	mov r1, #0
	bl SetBgPriority
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	bl NARC_Delete
	ldr r0, [r5, #4]
	add r1, r5, #0
	ldr r0, [r0, #8]
	ldr r2, _0224695C ; =ov02_0225324C
	add r1, #8
	bl AddWindow
	add r0, r5, #0
	add r0, #8
	mov r1, #9
	bl FillWindowPixelBuffer
	ldr r3, [r5]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xc6
	bl NewMsgDataFromNarc
	ldrb r1, [r5, #0x19]
	add r4, r0, #0
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #3
	add r1, r7, #0
	mov r2, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	mov r1, #0
	lsr r6, r0, #0x18
	mov r3, #0x70
	sub r6, r3, r6
	lsr r3, r6, #0x1f
	add r3, r6, r3
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02246960 ; =0x000F0E09
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #8
	mov r1, #3
	asr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	add r5, #8
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl DestroyMsgData
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224695C: .word ov02_0225324C
_02246960: .word 0x000F0E09
	thumb_func_end ov02_0224686C

