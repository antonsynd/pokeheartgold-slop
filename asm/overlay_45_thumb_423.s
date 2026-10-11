#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F544
	.public ov45_0222F628
	.public ov45_0222F6B0
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F544
ov45_0222F544: ; 0x0222F544
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F608 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F554
	bl GF_AssertFail
_0222F554:
	cmp r4, #0xb
	blt _0222F55C
	bl GF_AssertFail
_0222F55C:
	cmp r4, #0xa
	bhi _0222F5FE
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F56C: ; jump table
	.short _0222F582 - _0222F56C - 2 ; case 0
	.short _0222F58C - _0222F56C - 2 ; case 1
	.short _0222F596 - _0222F56C - 2 ; case 2
	.short _0222F5A0 - _0222F56C - 2 ; case 3
	.short _0222F5B8 - _0222F56C - 2 ; case 4
	.short _0222F5C2 - _0222F56C - 2 ; case 5
	.short _0222F5CC - _0222F56C - 2 ; case 6
	.short _0222F5D6 - _0222F56C - 2 ; case 7
	.short _0222F5EE - _0222F56C - 2 ; case 8
	.short _0222F5EE - _0222F56C - 2 ; case 9
	.short _0222F5EE - _0222F56C - 2 ; case 10
_0222F582:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F60C ; =0x000006A8
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F58C:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F610 ; =0x000006AC
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F596:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F614 ; =0x00000804
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F5A0:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F610 ; =0x000006AC
	ldr r1, [r1, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _0222F5B4
	mov r0, #1
	pop {r4, pc}
_0222F5B4:
	mov r0, #0
	pop {r4, pc}
_0222F5B8:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F618 ; =0x00000808
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F5C2:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F61C ; =0x0000080C
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F5CC:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F620 ; =0x00000964
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F5D6:
	ldr r0, _0222F608 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F61C ; =0x0000080C
	ldr r1, [r1, r0]
	mov r0, #0xfa
	lsl r0, r0, #2
	cmp r1, r0
	blt _0222F5EA
	mov r0, #1
	pop {r4, pc}
_0222F5EA:
	mov r0, #0
	pop {r4, pc}
_0222F5EE:
	ldr r0, _0222F608 ; =_022577C0
	sub r4, #8
	ldr r1, [r0]
	lsl r0, r4, #2
	add r1, r1, r0
	ldr r0, _0222F624 ; =0x00000974
	ldr r0, [r1, r0]
	pop {r4, pc}
_0222F5FE:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	nop
_0222F608: .word _022577C0
_0222F60C: .word 0x000006A8
_0222F610: .word 0x000006AC
_0222F614: .word 0x00000804
_0222F618: .word 0x00000808
_0222F61C: .word 0x0000080C
_0222F620: .word 0x00000964
_0222F624: .word 0x00000974
	thumb_func_end ov45_0222F544

	thumb_func_start ov45_0222F628
ov45_0222F628: ; 0x0222F628
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222F6A4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F638
	bl GF_AssertFail
_0222F638:
	cmp r4, #8
	blt _0222F640
	bl GF_AssertFail
_0222F640:
	cmp r4, #7
	bhi _0222F69C
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F650: ; jump table
	.short _0222F660 - _0222F650 - 2 ; case 0
	.short _0222F66C - _0222F650 - 2 ; case 1
	.short _0222F66C - _0222F650 - 2 ; case 2
	.short _0222F66C - _0222F650 - 2 ; case 3
	.short _0222F67E - _0222F650 - 2 ; case 4
	.short _0222F68A - _0222F650 - 2 ; case 5
	.short _0222F68A - _0222F650 - 2 ; case 6
	.short _0222F68A - _0222F650 - 2 ; case 7
_0222F660:
	ldr r0, _0222F6A4 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x6b
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
_0222F66C:
	ldr r0, _0222F6A4 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F6A8 ; =0x0000078C
	add r2, r1, r0
	sub r1, r4, #1
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0222F67E:
	ldr r0, _0222F6A4 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x81
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
_0222F68A:
	ldr r0, _0222F6A4 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F6AC ; =0x000008EC
	add r2, r1, r0
	sub r1, r4, #5
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_0222F69C:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0222F6A4: .word _022577C0
_0222F6A8: .word 0x0000078C
_0222F6AC: .word 0x000008EC
	thumb_func_end ov45_0222F628

	thumb_func_start ov45_0222F6B0
ov45_0222F6B0: ; 0x0222F6B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222F700 ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F6C2
	bl GF_AssertFail
_0222F6C2:
	cmp r5, #2
	blt _0222F6CA
	bl GF_AssertFail
_0222F6CA:
	cmp r4, #0xc
	blo _0222F6D2
	bl GF_AssertFail
_0222F6D2:
	cmp r5, #2
	blt _0222F6DA
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222F6DA:
	cmp r4, #0xc
	blo _0222F6E2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222F6E2:
	cmp r5, #0
	bne _0222F6F2
	ldr r0, _0222F700 ; =_022577C0
	ldr r0, [r0]
	add r1, r0, r4
	ldr r0, _0222F704 ; =0x000007F8
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0222F6F2:
	ldr r0, _0222F700 ; =_022577C0
	ldr r0, [r0]
	add r1, r0, r4
	ldr r0, _0222F708 ; =0x00000958
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_0222F700: .word _022577C0
_0222F704: .word 0x000007F8
_0222F708: .word 0x00000958
	thumb_func_end ov45_0222F6B0

