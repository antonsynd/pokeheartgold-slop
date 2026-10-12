#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FFF34
	.extern ov15_02200A34
	.extern ov15_02200A35
	.extern ov15_02200A36
	.extern ov15_02200A37

	.text

	.text
	thumb_func_start ov15_021FFF34
ov15_021FFF34: ; 0x021FFF34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #9
	blt _021FFF42
	bl GF_AssertFail
_021FFF42:
	cmp r4, #8
	bne _021FFF58
	ldr r1, _021FFFC8 ; =ov15_02200A36
	mov r0, #0x2a
	lsl r2, r4, #2
	lsl r0, r0, #4
	ldrb r1, [r1, r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetAnim
	b _021FFFA0
_021FFF58:
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	add r3, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r3, r0
	mov r0, #6
	ldr r3, _021FFFCC ; =0x00000672
	ldrsh r0, [r1, r0]
	ldrb r3, [r5, r3]
	add r0, r0, r4
	cmp r0, r3
	bne _021FFF84
	add r2, #0x6c
	ldr r0, [r5, r2]
	mov r1, #0xa
	bl ManagedSprite_SetAnim
	b _021FFFA0
_021FFF84:
	ldrb r1, [r1, #9]
	cmp r0, r1
	blt _021FFF96
	add r2, #0x6c
	ldr r0, [r5, r2]
	mov r1, #0x28
	bl ManagedSprite_SetAnim
	b _021FFFA0
_021FFF96:
	add r2, #0x6c
	ldr r0, [r5, r2]
	mov r1, #0x14
	bl ManagedSprite_SetAnim
_021FFFA0:
	ldr r1, _021FFFD0 ; =ov15_02200A34
	lsl r4, r4, #2
	ldr r2, _021FFFD4 ; =ov15_02200A35
	mov r0, #0x2a
	lsl r0, r0, #4
	mov r3, #1
	ldrb r1, [r1, r4]
	ldrb r2, [r2, r4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r1, _021FFFD8 ; =ov15_02200A37
	mov r0, #0x2a
	lsl r0, r0, #4
	ldrb r1, [r1, r4]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPaletteOverride
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FFFC8: .word ov15_02200A36
_021FFFCC: .word 0x00000672
_021FFFD0: .word ov15_02200A34
_021FFFD4: .word ov15_02200A35
_021FFFD8: .word ov15_02200A37
	thumb_func_end ov15_021FFF34

