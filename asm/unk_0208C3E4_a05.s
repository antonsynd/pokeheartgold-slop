#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208C3E4.inc"
	.include "global.inc"
	.public sub_0208C778

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208C778
sub_0208C778: ; 0x0208C778
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #0
	beq _0208C790
	cmp r3, #1
	beq _0208C794
	cmp r3, #2
	beq _0208C7B6
	b _0208C7DA
_0208C790:
	mov r3, #0
	b _0208C7DA
_0208C794:
	ldr r1, _0208C7F4 ; =0x000007AC
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl GetWindowWidth
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r0, r0, r5
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	b _0208C7DA
_0208C7B6:
	ldr r1, _0208C7F4 ; =0x000007AC
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r6, #0
	bl GetWindowWidth
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r1, r0, r5
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r3, r0, #0x18
_0208C7DA:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r2, _0208C7F4 ; =0x000007AC
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0208C7F4: .word 0x000007AC
	thumb_func_end sub_0208C778

