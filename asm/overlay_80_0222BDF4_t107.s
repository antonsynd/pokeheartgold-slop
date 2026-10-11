	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222D2EC

	.text

	.text
	thumb_func_start ov80_0222D2EC
ov80_0222D2EC: ; 0x0222D2EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222D324 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0222D302
	bl System_GetTouchNew
	cmp r0, #0
	beq _0222D306
_0222D302:
	mov r0, #1
	pop {r4, pc}
_0222D306:
	add r0, r4, #0
	add r0, #0x78
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x78
	add r4, #0x78
	strh r1, [r0]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0222D320
	mov r0, #1
	pop {r4, pc}
_0222D320:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222D324: .word gSystem
	thumb_func_end ov80_0222D2EC

