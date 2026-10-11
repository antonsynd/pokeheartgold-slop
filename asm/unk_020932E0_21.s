#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02094D1C

	.text

	.text
	thumb_func_start sub_02094D1C
sub_02094D1C: ; 0x02094D1C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r2, _02094D90 ; =0x0000012A
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	mov r1, #0
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, _02094D94 ; =0x00004670
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _02094D78
	ldr r0, _02094D94 ; =0x00004670
	add r0, r5, r0
	bl GetWindowWidth
	lsl r3, r0, #3
	mov r0, #4
	add r1, r4, #0
	mov r2, #0
	bl FontID_String_GetCenterAlignmentX
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02094D98 ; =0x000F0100
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _02094D94 ; =0x00004670
	str r1, [sp, #0xc]
	add r0, r5, r0
	mov r1, #4
	bl AddTextPrinterParameterizedWithColor
_02094D78:
	ldr r0, _02094D94 ; =0x00004670
	add r0, r5, r0
	bl CopyWindowToVram
	add r0, r4, #0
	bl String_Delete
	add r0, r6, #0
	bl DestroyMsgData
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02094D90: .word 0x0000012A
_02094D94: .word 0x00004670
_02094D98: .word 0x000F0100
	thumb_func_end sub_02094D1C

