	.include "macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E77BC
	.extern ov86_021E7688

	.text

	.text
	thumb_func_start ov86_021E77BC
ov86_021E77BC: ; 0x021E77BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	mov r7, #1
_021E77C8:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E77FA
	add r0, r5, #0
	add r1, r6, #0
	bl ov86_021E7688
	ldr r0, _021E7810 ; =0x00000252
	mov r2, #0x25
	ldrb r0, [r5, r0]
	ldr r3, _021E7814 ; =0x00000251
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, _021E7818 ; =0x00000253
	mov r1, #2
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0xc]
	bl BgTilemapRectChangePalette
_021E77FA:
	add r6, r6, #1
	add r4, #8
	cmp r6, #0x1a
	blo _021E77C8
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E7810: .word 0x00000252
_021E7814: .word 0x00000251
_021E7818: .word 0x00000253
	thumb_func_end ov86_021E77BC

