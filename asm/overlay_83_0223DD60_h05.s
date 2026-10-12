	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223F058
	.extern ov83_0223F734

    .text

	.text
	thumb_func_start ov83_0223F058
ov83_0223F058: ; 0x0223F058
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223F18C ; =0x0000084C
	add r0, r5, r0
	bl ov83_02247858
	ldr r0, _0223F190 ; =0x0000083C
	ldr r0, [r5, r0]
	bl ov83_02247CC4
	ldr r0, _0223F194 ; =0x00000838
	ldr r0, [r5, r0]
	bl ov83_02247A18
	ldr r0, _0223F198 ; =0x00000734
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F19C ; =0x00000738
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1A0 ; =0x00000778
	ldr r0, [r5, r0]
	bl ov83_0224753C
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1A4 ; =0x00000764
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1A8 ; =0x0000077C
	ldr r0, [r5, r0]
	bl ov83_0224753C
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldr r0, _0223F1AC ; =0x0000079C
	ldr r0, [r5, r0]
	bl ov83_0224753C
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r7, r0, #0
	mov r6, #0
	cmp r7, #0
	ble _0223F0EA
	add r4, r5, #0
_0223F0CA:
	ldr r0, _0223F1B0 ; =0x0000073C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _0223F1B4 ; =0x0000074C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _0223F1B8 ; =0x00000768
	ldr r0, [r4, r0]
	bl ov83_0224753C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r7
	blt _0223F0CA
_0223F0EA:
	ldr r7, _0223F1BC ; =0x00000784
	mov r6, #0
	add r4, r5, #0
_0223F0F0:
	ldr r0, [r4, r7]
	bl ov83_0224753C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _0223F0F0
	bl sub_0203A914
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #2
	bl PaletteData_FreeBuffers
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl PaletteData_FreeBuffers
	mov r0, #5
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl PaletteData_Free
	mov r0, #5
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
	add r0, #0x18
	add r0, r5, r0
	bl ov83_022471FC
	ldr r0, [r5, #0x20]
	bl DestroyMsgData
	ldr r0, [r5, #0x1c]
	bl DestroyMsgData
	ldr r0, [r5, #0x24]
	bl MessageFormat_Delete
	ldr r0, [r5, #0x28]
	bl String_Delete
	ldr r0, [r5, #0x2c]
	bl String_Delete
	ldr r0, _0223F1C0 ; =0x00000504
	ldr r0, [r5, r0]
	bl MessagePrinter_Delete
	mov r0, #4
	bl FontID_Release
	mov r6, #0
	add r4, r5, #0
_0223F164:
	ldr r0, [r4, #0x30]
	bl String_Delete
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _0223F164
	add r0, r5, #0
	add r0, #0x50
	mov r1, #0
	bl ov83_0224791C
	ldr r0, [r5, #0x4c]
	bl ov83_0223F734
	ldr r0, _0223F1C4 ; =0x000007A8
	ldr r0, [r5, r0]
	bl NARC_Delete
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F18C: .word 0x0000084C
_0223F190: .word 0x0000083C
_0223F194: .word 0x00000838
_0223F198: .word 0x00000734
_0223F19C: .word 0x00000738
_0223F1A0: .word 0x00000778
_0223F1A4: .word 0x00000764
_0223F1A8: .word 0x0000077C
_0223F1AC: .word 0x0000079C
_0223F1B0: .word 0x0000073C
_0223F1B4: .word 0x0000074C
_0223F1B8: .word 0x00000768
_0223F1BC: .word 0x00000784
_0223F1C0: .word 0x00000504
_0223F1C4: .word 0x000007A8
	thumb_func_end ov83_0223F058

