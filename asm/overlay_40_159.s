	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222EFD8
	.public ov40_0222F5EC
	.public ov40_0222FA88
	.public ov40_02238358

	.text

	thumb_func_start ov40_02238358
ov40_02238358: ; 0x02238358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _022383B4 ; =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022383A6
	ldr r0, _022383B8 ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA88
	ldr r1, _022383BC ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov40_0222F5EC
	ldr r0, _022383BC ; =0x0000049C
	ldr r2, _022383C0 ; =0x00002E0C
	add r0, r5, r0
	add r1, r5, #0
	add r2, r4, r2
	bl ov40_0222EFD8
	ldr r2, _022383C4 ; =0x000004D8
	mov r0, #0x6f
	ldr r3, [r5, r2]
	mov r2, #0x18
	mul r2, r3
	lsl r0, r0, #4
	add r2, #0x44
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0x10
	asr r2, r2, #0x10
	bl sub_020878EC
_022383A6:
	mov r0, #0xcf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl TouchHitboxController_IsTriggered
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022383B4: .word 0x00002F64
_022383B8: .word 0x0000047C
_022383BC: .word 0x0000049C
_022383C0: .word 0x00002E0C
_022383C4: .word 0x000004D8
	thumb_func_end ov40_02238358

