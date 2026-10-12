#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FFFDC
	.extern ov15_022009D4
	.extern ov15_022009D5
	.extern ov15_022009D6
	.extern ov15_022009D7

	.text

	.text
	thumb_func_start ov15_021FFFDC
ov15_021FFFDC: ; 0x021FFFDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _021FFFEA
	bl GF_AssertFail
_021FFFEA:
	ldr r1, _02200020 ; =ov15_022009D4
	lsl r4, r4, #2
	ldr r2, _02200024 ; =ov15_022009D5
	mov r0, #0x2a
	lsl r0, r0, #4
	mov r3, #1
	ldrb r1, [r1, r4]
	ldrb r2, [r2, r4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r1, _02200028 ; =ov15_022009D6
	mov r0, #0x2a
	lsl r0, r0, #4
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetAnim
	ldr r1, _0220002C ; =ov15_022009D7
	mov r0, #0x2a
	lsl r0, r0, #4
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPaletteOverride
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02200020: .word ov15_022009D4
_02200024: .word ov15_022009D5
_02200028: .word ov15_022009D6
_0220002C: .word ov15_022009D7
	thumb_func_end ov15_021FFFDC

