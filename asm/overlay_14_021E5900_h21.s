#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E5F4C

    .text

	.text
	thumb_func_start ov14_021E5F4C
ov14_021E5F4C: ; 0x021E5F4C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021E6044 ; =0x000088D4
	add r4, r0, r1
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _021E5F68
	cmp r1, #1
	beq _021E5FC0
	cmp r1, #2
	beq _021E602C
	b _021E603E
_021E5F68:
	ldrb r1, [r4]
	lsl r2, r1, #0x1f
	lsr r2, r2, #0x1f
	bne _021E5F8A
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	b _021E5FB8
_021E5F8A:
	ldrb r1, [r4, #6]
	str r1, [sp]
	ldrb r1, [r4, #7]
	str r1, [sp, #4]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	str r1, [sp, #8]
	ldrb r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl BgTilemapRectChangePalette
	ldrb r1, [r4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl ScheduleBgTilemapBufferTransfer
_021E5FB8:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021E603E
_021E5FC0:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #4
	bne _021E603E
	ldrb r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _021E5FF0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	b _021E6020
_021E5FF0:
	ldrb r0, [r4, #6]
	str r0, [sp]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	ldrb r1, [r4]
	ldr r0, [r5, #0x34]
	ldrb r2, [r4, #4]
	lsl r1, r1, #0x18
	ldrb r3, [r4, #5]
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl BgTilemapRectChangePalette
	ldrb r1, [r4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x14]
	lsr r1, r1, #0x19
	bl ScheduleBgTilemapBufferTransfer
_021E6020:
	mov r0, #0
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021E603E
_021E602C:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _021E603E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021E603E:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E6044: .word 0x000088D4
	thumb_func_end ov14_021E5F4C

