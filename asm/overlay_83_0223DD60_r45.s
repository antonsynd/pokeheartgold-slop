	.include "macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0224042C

    .text

	.text
	thumb_func_start ov83_0224042C
ov83_0224042C: ; 0x0224042C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022404F8
	add r6, r5, #0
	mov r4, #0
	add r6, #0x50
_02240440:
	add r0, r4, #0
	add r0, #0x30
	lsl r0, r0, #4
	add r0, r6, r0
	bl ClearWindowTilemapAndScheduleTransfer
	add r4, r4, #1
	cmp r4, #6
	blo _02240440
	mov r0, #0x3b
	lsl r0, r0, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0xf
	lsl r0, r0, #6
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x3f
	lsl r0, r0, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x41
	lsl r0, r0, #4
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	ldr r2, _022404FC ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r5, r2
	bl ov83_022477EC
	ldr r2, _022404FC ; =0x00000868
	mov r0, #6
	mov r1, #0
	add r2, r5, r2
	bl ov83_022477EC
	ldr r2, _022404FC ; =0x00000868
	mov r0, #7
	mov r1, #0
	add r2, r5, r2
	bl ov83_022477EC
	ldr r0, _02240500 ; =0x0000085C
	ldr r0, [r5, r0]
	bl ov83_02247A18
	ldr r0, _02240504 ; =0x000004DC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldr r0, _02240508 ; =0x0000077C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
	ldr r0, _0224050C ; =0x0000079C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
	ldr r7, _02240510 ; =0x00000784
	mov r6, #0
	add r4, r5, #0
_022404D2:
	ldr r0, [r4, r7]
	mov r1, #0
	bl ov83_0224755C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blo _022404D2
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0x30
	mov r2, #0x28
	bl ov83_0224759C
	ldrb r1, [r5, #0xe]
	mov r0, #8
	bic r1, r0
	strb r1, [r5, #0xe]
_022404F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022404FC: .word 0x00000868
_02240500: .word 0x0000085C
_02240504: .word 0x000004DC
_02240508: .word 0x0000077C
_0224050C: .word 0x0000079C
_02240510: .word 0x00000784
	thumb_func_end ov83_0224042C

