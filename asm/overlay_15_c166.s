#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FFECC
	.extern ov15_02200AB8
	.extern ov15_02200AB9
	.extern ov15_02200ABA
	.extern ov15_02200ABB

	.text

	.text
	thumb_func_start ov15_021FFECC
ov15_021FFECC: ; 0x021FFECC
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	ldr r1, _021FFF14 ; =ov15_02200AB8
	ldr r2, _021FFF18 ; =ov15_02200AB9
	add r5, r0, #0
	mov r0, #0x2a
	lsl r0, r0, #4
	mov r3, #1
	ldrb r1, [r1, r4]
	ldrb r2, [r2, r4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r1, _021FFF1C ; =ov15_02200ABA
	mov r0, #0x2a
	lsl r0, r0, #4
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetAnim
	ldr r1, _021FFF20 ; =ov15_02200ABB
	mov r0, #0x2a
	lsl r0, r0, #4
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPaletteOverride
	mov r0, #0x2a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	nop
_021FFF14: .word ov15_02200AB8
_021FFF18: .word ov15_02200AB9
_021FFF1C: .word ov15_02200ABA
_021FFF20: .word ov15_02200ABB
	thumb_func_end ov15_021FFECC

