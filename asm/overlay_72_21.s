	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022387D0
	.public ov72_02239198
	.public ov72_0223AF48

	.text

	thumb_func_start ov72_02239198
ov72_02239198: ; 0x02239198
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022391E4 ; =0x0000136C
	add r0, r4, r0
	bl ov72_0223AF48
	cmp r0, #0
	beq _022391E0
	cmp r0, #2
	bne _022391C0
	bl ov00_021EC5B4
	cmp r0, #0
	bne _022391BA
	mov r0, #0
	str r0, [r4, #0x1c]
	b _022391E0
_022391BA:
	mov r0, #0x29
	str r0, [r4, #0x1c]
	b _022391E0
_022391C0:
	bl ov00_021EC5B4
	cmp r0, #0
	bne _022391D6
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov72_022387D0
	mov r0, #0x2e
	b _022391D8
_022391D6:
	mov r0, #0x29
_022391D8:
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0, #0x20]
_022391E0:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_022391E4: .word 0x0000136C
	thumb_func_end ov72_02239198

