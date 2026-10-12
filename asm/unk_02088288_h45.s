#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public sub_0208A1A0

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208A1A0
sub_0208A1A0: ; 0x0208A1A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0208A228 ; =0x00000242
	add r6, r0, #0
	ldrb r0, [r6, r2]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	cmp r0, #0x64
	bhs _0208A1C8
	add r0, r2, #0
	add r1, r2, #0
	add r0, #0xa
	add r1, #0xe
	add r2, r2, #6
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	sub r1, r1, r0
	sub r0, r2, r0
	b _0208A1CC
_0208A1C8:
	mov r1, #0
	add r0, r1, #0
_0208A1CC:
	mov r2, #0x38
	bl CalculateHpBarPixelsLength
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x13
_0208A1D8:
	cmp r4, #8
	blo _0208A1E0
	ldr r2, _0208A22C ; =0x0000E03F
	b _0208A1E8
_0208A1E0:
	ldr r0, _0208A230 ; =0x0000E037
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_0208A1E8:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	str r0, [sp, #8]
	mov r0, #0x11
	add r3, #9
	str r0, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [r6]
	mov r1, #6
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	cmp r4, #8
	bhs _0208A20C
	mov r4, #0
	b _0208A212
_0208A20C:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_0208A212:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #7
	blo _0208A1D8
	ldr r0, [r6]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0208A228: .word 0x00000242
_0208A22C: .word 0x0000E03F
_0208A230: .word 0x0000E037
	thumb_func_end sub_0208A1A0

