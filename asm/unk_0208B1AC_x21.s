#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208BE70
	.public sub_0208BECC
	.extern sub_0208BE00

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208BE70
sub_0208BE70: ; 0x0208BE70
	push {r4, lr}
	add r4, r0, #0
	bl sub_0208A520
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0208BE00
	mov r2, #0x8f
	lsl r2, r2, #2
	add r1, r2, #0
	ldrh r0, [r4, r2]
	add r2, #0x44
	add r1, #0x42
	ldr r2, [r4, r2]
	ldrh r1, [r4, r1]
	lsl r2, r2, #3
	lsr r2, r2, #0x1f
	bl GetMonIconPaletteEx
	add r1, r0, #0
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, #0xc
	bl thunk_Sprite_SetPaletteOverride
	mov r1, #0x8f
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r1, #0x42
	ldrh r1, [r4, r1]
	mov r2, #0x1c
	bl GetMonBaseStat_HandleAlternateForm
	add r2, r0, #0
	mov r0, #0x45
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	eor r1, r2
	bl Sprite_SetFlipMode
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_0208BE70

	thumb_func_start sub_0208BECC
sub_0208BECC: ; 0x0208BECC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0208A520
	add r7, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldrb r0, [r1, #0x11]
	cmp r0, #0
	beq _0208BEEC
	cmp r0, #1
	beq _0208BEF8
	cmp r0, #2
	beq _0208BEF2
	b _0208BEFC
_0208BEEC:
	mov r0, #1
	str r0, [sp]
	b _0208BEFC
_0208BEF2:
	mov r0, #0
	str r0, [sp]
	b _0208BEFC
_0208BEF8:
	ldrb r0, [r1, #0x13]
	str r0, [sp]
_0208BEFC:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0208BF7A
	add r5, r6, #0
_0208BF06:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	ldrb r0, [r1, #0x11]
	cmp r0, #0
	beq _0208BF1C
	cmp r0, #1
	beq _0208BF4A
	cmp r0, #2
	beq _0208BF36
	b _0208BF64
_0208BF1C:
	add r0, r6, #0
	bl sub_0208A520
	add r7, r0, #0
	bl Pokemon_GetIconPalette
	add r1, r0, #0
	ldr r0, _0208BF98 ; =0x00000528
	add r1, #0xc
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetPaletteOverride
	b _0208BF64
_0208BF36:
	add r0, r7, #0
	bl Boxmon_GetIconPalette
	add r1, r0, #0
	ldr r0, _0208BF98 ; =0x00000528
	add r1, #0xc
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetPaletteOverride
	b _0208BF64
_0208BF4A:
	ldr r0, [r1]
	add r1, r4, #0
	bl Party_GetMonByIndex
	add r7, r0, #0
	bl Pokemon_GetIconPalette
	add r1, r0, #0
	ldr r0, _0208BF98 ; =0x00000528
	add r1, #0xc
	ldr r0, [r5, r0]
	bl thunk_Sprite_SetPaletteOverride
_0208BF64:
	add r2, r4, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, #0x49
	bl sub_0208BE00
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0208BF06
_0208BF7A:
	cmp r4, #6
	bge _0208BF96
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r6, _0208BF98 ; =0x00000528
	mov r7, #0
_0208BF86:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl thunk_Sprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _0208BF86
_0208BF96:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0208BF98: .word 0x00000528
	thumb_func_end sub_0208BECC

