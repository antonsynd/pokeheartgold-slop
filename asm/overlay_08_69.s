#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02224768
	.public ov08_022247E4
	.public ov08_02224858
	.public ov08_022248D0
	.extern ov08_022245DC
	.extern ov08_02224684
	.extern ov08_022246F4
	.extern ov08_02225E9C
	.extern ov08_02225E9D
	.extern ov08_02225E9E
	.extern ov08_02225E9F
	.extern ov08_02225EE0

	.text

	.text
	thumb_func_start ov08_02224768
ov08_02224768: ; 0x02224768
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r5, r1, #0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	str r0, [sp]
	bl ov08_022245DC
	add r3, sp, #0x10
	add r4, r0, #0
	ldrb r3, [r3, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl ov08_02224684
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x10
	ldr r0, [sp, #4]
	ldr r6, _022247D4 ; =ov08_02225E9F
	lsl r3, r0, #2
	ldr r0, _022247D8 ; =ov08_02225E9E
	ldrb r6, [r6, r3]
	ldrb r0, [r0, r3]
	mov r1, #0
	mul r6, r0
	cmp r6, #0
	ble _022247C4
	ldr r0, _022247DC ; =ov08_02225E9C
	ldr r7, _022247E0 ; =0x00000FFF
	add r3, r0, r3
_022247AA:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r7
	orr r6, r2
	strh r6, [r5, r0]
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldrb r6, [r3, #2]
	ldrb r0, [r3, #3]
	mul r0, r6
	cmp r1, r0
	blt _022247AA
_022247C4:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r5, #0
	bl ov08_022246F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022247D4: .word ov08_02225E9F
_022247D8: .word ov08_02225E9E
_022247DC: .word ov08_02225E9C
_022247E0: .word 0x00000FFF
	thumb_func_end ov08_02224768

	thumb_func_start ov08_022247E4
ov08_022247E4: ; 0x022247E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	lsl r4, r0, #2
	ldr r0, _02224848 ; =ov08_02225E9F
	ldrb r7, [r0, r4]
	ldr r0, _0222484C ; =ov08_02225E9E
	ldrb r6, [r0, r4]
	ldr r0, [r5]
	add r1, r6, #0
	mul r1, r7
	ldr r0, [r0, #0xc]
	lsl r1, r1, #1
	bl Heap_Alloc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	bl ov08_02224768
	ldr r0, _02224850 ; =ov08_02225E9D
	ldr r3, _02224854 ; =ov08_02225E9C
	ldrb r0, [r0, r4]
	ldrb r3, [r3, r4]
	ldr r2, [sp, #0x18]
	str r0, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #6
	bl LoadRectToBgTilemapRect
	ldr r0, [r5, #4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [sp, #0x18]
	bl Heap_Free
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02224848: .word ov08_02225E9F
_0222484C: .word ov08_02225E9E
_02224850: .word ov08_02225E9D
_02224854: .word ov08_02225E9C
	thumb_func_end ov08_022247E4

	thumb_func_start ov08_02224858
ov08_02224858: ; 0x02224858
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	cmp r1, #6
	blo _02224876
	cmp r1, #0xb
	bhi _02224876
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _02224876
	add r1, #0xb
	ldr r0, _022248CC ; =ov08_02225EE0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	b _0222487C
_02224876:
	ldr r0, _022248CC ; =ov08_02225EE0
	lsl r1, r1, #2
	ldr r4, [r0, r1]
_0222487C:
	cmp r4, #0
	beq _022248C8
	cmp r2, #0
	beq _0222488C
	cmp r2, #1
	beq _02224894
	cmp r2, #2
	bne _0222489A
_0222488C:
	mov r0, #1
	str r0, [sp]
	mov r7, #2
	b _0222489A
_02224894:
	mov r0, #0
	str r0, [sp]
	mov r7, #4
_0222489A:
	mov r5, #0
_0222489C:
	ldrb r0, [r4, r5]
	cmp r0, #0xff
	beq _022248C8
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [sp]
	add r2, r7, #0
	mov r3, #0
	bl ScrollWindow
	ldrb r0, [r4, r5]
	ldr r1, [r6, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _0222489C
_022248C8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022248CC: .word ov08_02225EE0
	thumb_func_end ov08_02224858

	thumb_func_start ov08_022248D0
ov08_022248D0: ; 0x022248D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	cmp r1, #6
	blo _022248EC
	cmp r1, #0xb
	bhi _022248EC
	sub r0, r1, #6
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r6, [r1, r0]
	b _02224910
_022248EC:
	cmp r1, #4
	bne _02224934
	mov r7, #0x31
	mov r4, #0
	lsl r7, r7, #4
_022248F6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r6, [r0, r7]
	add r0, r6, #0
	bl ManagedSprite_GetDrawFlag
	cmp r0, #0
	bne _02224910
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _022248F6
_02224910:
	ldr r0, [sp]
	cmp r0, #0
	beq _0222491E
	cmp r0, #1
	beq _0222492A
	cmp r0, #2
	bne _02224934
_0222491E:
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	bl ManagedSprite_OffsetPositionXY
	pop {r3, r4, r5, r6, r7, pc}
_0222492A:
	mov r1, #0
	add r0, r6, #0
	sub r2, r1, #4
	bl ManagedSprite_OffsetPositionXY
_02224934:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov08_022248D0

