	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED144

	.text

	thumb_func_start ov103_021ED144
ov103_021ED144: ; 0x021ED144
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r1, #0xb9
	ldr r0, [r5, #0xc]
	lsl r1, r1, #2
	add r4, r0, r1
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _021ED162
	cmp r2, #1
	beq _021ED1B8
	cmp r2, #2
	beq _021ED222
	b _021ED234
_021ED162:
	ldrb r2, [r4]
	lsl r3, r2, #0x1f
	lsr r3, r3, #0x1f
	bne _021ED182
	lsl r2, r2, #0x18
	lsr r2, r2, #0x19
	lsl r2, r2, #2
	add r0, r0, r2
	sub r1, #0x8c
	ldr r0, [r0, r1]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	b _021ED1B0
_021ED182:
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
	ldr r0, [r0]
	lsr r1, r1, #0x19
	bl BgTilemapRectChangePalette
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x19
	bl ScheduleBgTilemapBufferTransfer
_021ED1B0:
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021ED234
_021ED1B8:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #4
	bne _021ED234
	ldrb r0, [r4]
	lsl r2, r0, #0x1f
	lsr r2, r2, #0x1f
	bne _021ED1E6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x19
	ldr r2, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r2, r0
	sub r1, #0x8c
	ldr r0, [r0, r1]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	b _021ED216
_021ED1E6:
	ldrb r0, [r4, #6]
	str r0, [sp]
	ldrb r0, [r4, #7]
	str r0, [sp, #4]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	str r0, [sp, #8]
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	ldrb r2, [r4, #4]
	lsl r1, r1, #0x18
	ldrb r3, [r4, #5]
	ldr r0, [r0]
	lsr r1, r1, #0x19
	bl BgTilemapRectChangePalette
	ldrb r1, [r4]
	ldr r0, [r5, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x19
	bl ScheduleBgTilemapBufferTransfer
_021ED216:
	mov r0, #0
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	b _021ED234
_021ED222:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _021ED234
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_021ED234:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021ED144

