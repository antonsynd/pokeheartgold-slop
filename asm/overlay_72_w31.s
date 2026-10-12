	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239220
	.extern ov72_0223A444

	.text

	.text
	thumb_func_start ov72_02239220
ov72_02239220: ; 0x02239220
	push {r3, r4, lr}
	sub sp, #0x44
	add r4, r0, #0
	bl ov00_021EC60C
	bl ov00_021EC5B4
	cmp r0, #0
	beq _022392A0
	bl ov00_021EC724
	cmp r0, #8
	bhi _0223927E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239246: ; jump table
	.short _0223927E - _02239246 - 2 ; case 0
	.short _0223927E - _02239246 - 2 ; case 1
	.short _0223927E - _02239246 - 2 ; case 2
	.short _0223927E - _02239246 - 2 ; case 3
	.short _02239296 - _02239246 - 2 ; case 4
	.short _0223927E - _02239246 - 2 ; case 5
	.short _0223927E - _02239246 - 2 ; case 6
	.short _02239258 - _02239246 - 2 ; case 7
	.short _0223927E - _02239246 - 2 ; case 8
_02239258:
	add r0, sp, #4
	bl ov00_021EC0FC
	mov r1, #0xf5
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	add r0, r1, #4
	str r2, [r4, r0]
	bl ov00_021EC210
	bl ov00_021EC8D8
	add r0, r4, #0
	bl ov72_0223A444
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _022392A0
_0223927E:
	add r0, sp, #0
	bl ov00_021EC0FC
	add r0, r4, #0
	bl ov72_0223A444
	mov r1, #0x35
	str r1, [r4, #0x1c]
	ldr r0, _022392A8 ; =0x00000F5C
	sub r1, #0x37
	str r1, [r4, r0]
	b _022392A0
_02239296:
	add r0, sp, #8
	bl ov00_021EC9E0
	mov r0, #4
	str r0, [r4, #0x1c]
_022392A0:
	mov r0, #3
	add sp, #0x44
	pop {r3, r4, pc}
	nop
_022392A8: .word 0x00000F5C
	thumb_func_end ov72_02239220

