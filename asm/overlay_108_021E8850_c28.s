	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E940C
	.extern ov108_021E9F20
	.extern ov108_021E9F94
	.extern ov108_021EA040
	.extern ov108_021EA260
	.extern ov108_021EA334

	.text

	.text
	thumb_func_start ov108_021E940C
ov108_021E940C: ; 0x021E940C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _021E9434
	mov r1, #1
	bl ov108_021E9F94
	add r0, r5, #0
	mov r1, #2
	bl ov108_021E9F20
	add r0, r5, #0
	bl ov108_021EA260
	add r0, r5, #0
	mov r1, #0
	bl ov108_021EA334
	mov r4, #0
	b _021E945A
_021E9434:
	mov r1, #0
	bl ov108_021E9F94
	ldr r0, _021E947C ; =0x00000494
	add r0, r5, r0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r5, #0
	mov r1, #0
	bl ov108_021E9F20
	add r0, r5, #0
	bl ov108_021EA040
	add r0, r5, #0
	mov r1, #2
	bl ov108_021EA334
	mov r4, #1
_021E945A:
	ldr r0, _021E9480 ; =0x0000044C
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl Sprite_SetDrawFlag
	ldr r0, _021E9484 ; =0x00000444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E947C: .word 0x00000494
_021E9480: .word 0x0000044C
_021E9484: .word 0x00000444
	thumb_func_end ov108_021E940C

