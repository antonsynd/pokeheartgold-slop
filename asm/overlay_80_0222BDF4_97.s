	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222DCF0
	.public ov80_0223B9EC

	.text

	thumb_func_start ov80_0222DCF0
ov80_0222DCF0: ; 0x0222DCF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetData
	add r4, r0, #0
	ldr r1, [r4, #8]
	lsl r2, r1, #2
	ldr r1, _0222DD38 ; =ov80_0223B9EC
	ldr r1, [r1, r2]
	blx r1
	add r6, r0, #0
	bne _0222DD2C
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	ldr r0, [r5]
	ldr r1, [r4, #0x14]
	ldr r0, [r0]
	bl Frontier_SetData
	add r0, r4, #0
	bl Heap_Free
_0222DD2C:
	cmp r6, #0
	bne _0222DD34
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222DD34:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222DD38: .word ov80_0223B9EC
	thumb_func_end ov80_0222DCF0

