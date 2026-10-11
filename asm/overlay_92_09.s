	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225D970

	.text

	thumb_func_start ov92_0225D970
ov92_0225D970: ; 0x0225D970
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x6c]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _0225D9A4
	bl NNS_G3dGlbFlushP
	mov r0, #0x1c
	add r1, r6, #0
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x19
	add r1, r4, #0
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add r0, r5, #0
	add r0, #0x60
	bl NNS_G3dGlbSetBaseScale
	add r0, r5, #0
	bl NNS_G3dDraw
_0225D9A4:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov92_0225D970

