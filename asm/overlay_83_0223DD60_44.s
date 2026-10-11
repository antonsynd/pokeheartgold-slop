	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0224042C
	.public ov83_022412A0
	.public ov83_02241354
	.public ov83_02241730
	.public ov83_02241B18

    .text

	thumb_func_start ov83_022412A0
ov83_022412A0: ; 0x022412A0
	push {r4, lr}
	add r4, r0, #0
	bl ov83_02241730
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02241B18
	ldr r2, _022412D4 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	ldr r0, _022412D8 ; =0x00000778
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov83_0224755C
	pop {r4, pc}
	.balign 4, 0
_022412D4: .word 0x00000868
_022412D8: .word 0x00000778
	thumb_func_end ov83_022412A0

