	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02235900

	.text

	.text
	thumb_func_start ov40_02235900
ov40_02235900: ; 0x02235900
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02235918
	bl ov41_0224B5C8
_02235918:
	bl GF_RunVramTransferTasks
	ldr r0, [r4, #0x28]
	bl PaletteData_PushTransparentBuffers
	ldr r0, [r4, #0x24]
	bl DoScheduledBgGpuUpdates
	ldr r3, _02235938 ; =0x027E0000
	ldr r1, _0223593C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02235938: .word 0x027E0000
_0223593C: .word 0x00003FF8
	thumb_func_end ov40_02235900

