#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FFF34
	.public ov15_021FFFDC
	.public ov15_02200030
	.public ov15_0220005C
	.extern ov15_022009D4
	.extern ov15_022009D5
	.extern ov15_022009D6
	.extern ov15_022009D7
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

	thumb_func_start ov15_02200030
ov15_02200030: ; 0x02200030
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r5, #7
	bgt _02200058
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r2, #1
	ldr r4, [r0, #0xc]
	lsl r2, r2, #8
	add r0, r4, r2
	mov r1, #0
	bl GXS_LoadOBJPltt
	lsl r0, r5, #5
	add r0, r4, r0
	lsl r1, r5, #5
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_02200058:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov15_02200030

	thumb_func_start ov15_0220005C
ov15_0220005C: ; 0x0220005C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bne _02200096
	mov r4, #0
	mov r6, #0xa9
	add r5, r0, #0
	add r7, r4, #0
	lsl r6, r6, #2
_02200074:
	ldr r0, [r5, r6]
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02200074
	mov r1, #0xaf
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02200096:
	mov r7, #0xa9
	mov r5, #0
	add r4, r0, #0
	lsl r7, r7, #2
_0220009E:
	cmp r5, r6
	bge _022000AC
	ldr r0, [r4, r7]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	b _022000B8
_022000AC:
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_022000B8:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _0220009E
	ldr r0, [sp, #4]
	cmp r0, #0
	blt _022000DC
	add r0, #0x15
	str r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r1, r0, r1
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_022000DC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022000F0
	mov r1, #0xaf
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_022000F0:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov15_0220005C

