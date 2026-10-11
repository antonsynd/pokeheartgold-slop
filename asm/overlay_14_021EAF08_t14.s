#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EBB3C
	.extern ov14_021F7D3C

    .text

	.text
	thumb_func_start ov14_021EBB3C
ov14_021EBB3C: ; 0x021EBB3C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0x1e
	blo _021EBB62
	bl ov14_021F0B70
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F43F4
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov14_021F3488
_021EBB62:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	beq _021EBB70
	add r0, r5, #0
	bl ov14_021F3F6C
_021EBB70:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021EBB8C
	add r0, r5, #0
	bl ov14_021E87F4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82FC
_021EBB8C:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _021EBC04
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021EBBD2
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F5FBC
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021EBBBA
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	mov r4, #0x75
	b _021EBBF6
_021EBBBA:
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
	add r0, r5, #0
	mov r1, #7
	mov r2, #8
	bl ov14_021F6AC0
	mov r4, #0x8b
	b _021EBBF6
_021EBBD2:
	ldr r1, _021EBDBC ; =ov14_021F7D3C
	add r0, r5, #0
	mov r2, #5
	bl ov14_021F5EE4
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021EBBEA
	mov r4, #0xc
	b _021EBBF6
_021EBBEA:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xa
	bl ov14_021F6AC0
	mov r4, #0x24
_021EBBF6:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83C4
	b _021EBD82
_021EBC04:
	mov r4, #0
	cmp r0, #0x70
	bne _021EBC24
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #5
	add r3, r4, #0
	bl ov14_021E6070
	ldr r1, _021EBDC0 ; =0x000001E7
	cmp r0, r1
	beq _021EBC24
	mov r4, #1
	b _021EBC72
_021EBC24:
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	add r1, r5, #0
	add r1, #0x21
	add r3, r5, #0
	add r6, r0, #0
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, #0x1c
	bl ov14_021E6094
	add r0, r6, #0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EBC66
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EBDC4 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EBC66:
	ldrh r1, [r5, #0x1c]
	ldr r0, [r5, #0xc]
	mov r2, #1
	mov r3, #0xa
	bl Bag_TakeItem
_021EBC72:
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r0, [r5]
	cmp r2, #0x1e
	blo _021EBC9C
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021EBC90
	add r0, r5, #0
	mov r1, #7
	sub r2, #0x1e
	bl ov14_021F6AC0
	b _021EBCD6
_021EBC90:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0xa
	bl ov14_021F6AC0
	b _021EBCD6
_021EBC9C:
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021EBCD6
	ldr r0, [r5, #0x34]
	add r1, r2, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
_021EBCD6:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021EBD78
	cmp r4, #0
	bne _021EBD50
	ldrh r2, [r5, #0x1c]
	ldr r0, [r5, #0x34]
	ldr r1, _021EBDC8 ; =0x000088C8
	strh r2, [r0, r1]
	ldr r0, [r5, #0x34]
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021EBD2A
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F396C
	b _021EBD42
_021EBD2A:
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F396C
_021EBD42:
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	ldr r0, [r5, #0x34]
	bl ov14_021F3B3C
	b _021EBD74
_021EBD50:
	mov r0, #0
	strh r0, [r5, #0x1c]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021EBD6A
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
	b _021EBD74
_021EBD6A:
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
_021EBD74:
	mov r4, #0x7d
	b _021EBD82
_021EBD78:
	cmp r4, #1
	bne _021EBD80
	mov r0, #0
	strh r0, [r5, #0x1c]
_021EBD80:
	mov r4, #0x12
_021EBD82:
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov14_021E7588
	ldr r0, [r5]
	ldr r0, [r0, #8]
	cmp r0, #3
	beq _021EBD9E
	ldr r0, [r5, #0x34]
	bl ov14_021E8874
	b _021EBDB0
_021EBD9E:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	beq _021EBDB0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E892C
_021EBDB0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F01D8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EBDBC: .word ov14_021F7D3C
_021EBDC0: .word 0x000001E7
_021EBDC4: .word 0x00004094
_021EBDC8: .word 0x000088C8
	thumb_func_end ov14_021EBB3C

