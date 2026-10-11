	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A318
	.public ov43_0222B3C4
	.public ov43_0222B408
	.public ov43_0222B440
	.public ov43_0222F0CC

	.text

	thumb_func_start ov43_0222B3C4
ov43_0222B3C4: ; 0x0222B3C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r5, #4
_0222B3D0:
	ldr r0, [r7]
	cmp r0, r4
	bne _0222B3DA
	mov r1, #9
	b _0222B3DC
_0222B3DA:
	mov r1, #2
_0222B3DC:
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #2
	lsl r3, r5, #0x18
	ldr r0, [r6]
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl BgTilemapRectChangePalette
	add r4, r4, #1
	add r5, r5, #5
	cmp r4, #4
	blt _0222B3D0
	ldr r0, [r6]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222B3C4

	thumb_func_start ov43_0222B408
ov43_0222B408: ; 0x0222B408
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r6, #0
	mov r4, #4
	mov r7, #2
_0222B414:
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	str r7, [sp, #8]
	lsl r3, r4, #0x18
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl BgTilemapRectChangePalette
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add r6, r6, #1
	add r4, r4, #5
	cmp r6, #4
	blt _0222B414
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222B408

	thumb_func_start ov43_0222B440
ov43_0222B440: ; 0x0222B440
	add r2, r0, #0
	add r0, r1, #0
	ldr r2, [r2]
	ldr r1, _0222B450 ; =ov43_0222F0CC
	ldr r3, _0222B454 ; =ov43_0222A318
	ldrb r1, [r1, r2]
	mov r2, #0
	bx r3
	.balign 4, 0
_0222B450: .word ov43_0222F0CC
_0222B454: .word ov43_0222A318
	thumb_func_end ov43_0222B440

