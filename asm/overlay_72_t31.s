	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022392BC
	.extern ov72_0223A444

	.text

	.text
	thumb_func_start ov72_022392BC
ov72_022392BC: ; 0x022392BC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov00_021ECDC8
	cmp r0, #5
	bhi _02239362
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022392D6: ; jump table
	.short _022392E8 - _022392D6 - 2 ; case 0
	.short _02239362 - _022392D6 - 2 ; case 1
	.short _02239362 - _022392D6 - 2 ; case 2
	.short _022392E2 - _022392D6 - 2 ; case 3
	.short _022392E8 - _022392D6 - 2 ; case 4
	.short _022392E8 - _022392D6 - 2 ; case 5
_022392E2:
	mov r0, #6
	str r0, [r4, #0x1c]
	b _02239362
_022392E8:
	add r0, r4, #0
	bl ov72_0223A444
	add r0, sp, #4
	add r1, sp, #0
	bl ov00_021EC11C
	mov r1, #0xf5
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	add r0, r1, #4
	str r2, [r4, r0]
	bl ov00_021EC210
	bl ov00_021EC8D8
	mov r0, #0x37
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _02239350
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02239320: ; jump table
	.short _02239350 - _02239320 - 2 ; case 0
	.short _02239330 - _02239320 - 2 ; case 1
	.short _02239330 - _02239320 - 2 ; case 2
	.short _02239342 - _02239320 - 2 ; case 3
	.short _02239334 - _02239320 - 2 ; case 4
	.short _0223934C - _02239320 - 2 ; case 5
	.short _0223933E - _02239320 - 2 ; case 6
	.short _0223934C - _02239320 - 2 ; case 7
_02239330:
	str r0, [r4, #0x1c]
	b _02239350
_02239334:
	bl ov00_021FA0D8
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _02239350
_0223933E:
	str r0, [r4, #0x1c]
	b _02239350
_02239342:
	bl ov00_021ED9B4
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _02239350
_0223934C:
	bl sub_020399EC
_02239350:
	ldr r1, [sp, #4]
	ldr r0, _02239368 ; =0xFFFFB1E0
	cmp r1, r0
	bge _02239362
	ldr r0, _0223936C ; =0xFFFF8AD1
	cmp r1, r0
	blt _02239362
	mov r0, #0x37
	str r0, [r4, #0x1c]
_02239362:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_02239368: .word 0xFFFFB1E0
_0223936C: .word 0xFFFF8AD1
	thumb_func_end ov72_022392BC

