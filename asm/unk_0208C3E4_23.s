#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208DDA0

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208DDA0
sub_0208DDA0: ; 0x0208DDA0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #4
	bgt _0208DDC4
	cmp r1, #0
	blt _0208DDE2
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208DDBA: ; jump table
	.short _0208DDCA - _0208DDBA - 2 ; case 0
	.short _0208DDCE - _0208DDBA - 2 ; case 1
	.short _0208DDD2 - _0208DDBA - 2 ; case 2
	.short _0208DDD6 - _0208DDBA - 2 ; case 3
	.short _0208DDDA - _0208DDBA - 2 ; case 4
_0208DDC4:
	cmp r1, #0xfe
	beq _0208DDDE
	b _0208DDE2
_0208DDCA:
	mov r5, #0xac
	b _0208DDE4
_0208DDCE:
	mov r5, #0xae
	b _0208DDE4
_0208DDD2:
	mov r5, #0xaf
	b _0208DDE4
_0208DDD6:
	mov r5, #0xb0
	b _0208DDE4
_0208DDDA:
	mov r5, #0xad
	b _0208DDE4
_0208DDDE:
	mov r5, #0xb1
	b _0208DDE4
_0208DDE2:
	mov r5, #0xb2
_0208DDE4:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	ldr r2, _0208DE34 ; =0x000003E2
	add r6, #0x20
	add r0, r6, #0
	mov r1, #1
	mov r3, #0xd
	bl DrawFrameAndWindow2
	add r0, r6, #0
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r2, #0x7a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	add r2, #0xc
	ldr r2, [r4, r2]
	add r1, r5, #0
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208DE38 ; =0x0001020F
	ldr r2, _0208DE3C ; =0x000007AC
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r6, #0
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0208DE34: .word 0x000003E2
_0208DE38: .word 0x0001020F
_0208DE3C: .word 0x000007AC
	thumb_func_end sub_0208DDA0

