	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222C4D0
	.extern ov80_0222BE24

	.text

	.text
	thumb_func_start ov80_0222C4D0
ov80_0222C4D0: ; 0x0222C4D0
	push {r4, r5, r6, lr}
	add r1, r0, #0
	add r1, #0x78
	ldrh r1, [r1]
	ldr r4, [r0]
	bl ov80_0222BE24
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	ldr r1, [r4, #0x34]
	bl Handle2dMenuInput_DeleteOnFinish
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0222C516
	bl System_GetTouchNew
	cmp r0, #1
	bne _0222C512
	ldr r0, _0222C528 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x74]
	bl Get2dMenuSelection
	add r6, r0, #0
	ldr r0, [r4, #0x74]
	ldr r1, [r4, #0x34]
	bl Clear2dMenuWindowAndDelete
	b _0222C516
_0222C512:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222C516:
	cmp r6, #0
	bne _0222C51E
	mov r0, #0
	b _0222C520
_0222C51E:
	mov r0, #1
_0222C520:
	strh r0, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0222C528: .word 0x000005DC
	thumb_func_end ov80_0222C4D0

