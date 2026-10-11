	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5AE8
	.extern _0221A680
	.extern ov00_021E7300

	.text

	.text
	thumb_func_start ov00_021E5AE8
ov00_021E5AE8: ; 0x021E5AE8
	push {r3, lr}
	ldr r0, _021E5B58 ; =_0221A680
	ldr r0, [r0]
	cmp r0, #0
	beq _021E5B52
	bl ov00_021E7300
	ldr r0, _021E5B58 ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E5B5C ; =0x00000F98
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _021E5B20
	add r0, r0, #4
	ldr r0, [r2, r0]
	bl NNS_FndDestroyExpHeap
	ldr r0, _021E5B58 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5B5C ; =0x00000F98
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r0, _021E5B58 ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E5B5C ; =0x00000F98
	str r2, [r1, r0]
_021E5B20:
	ldr r0, _021E5B58 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E5B60 ; =0x00000F94
	ldr r0, [r1, r0]
	bl NNS_FndDestroyExpHeap
	ldr r0, _021E5B58 ; =_0221A680
	ldr r1, _021E5B64 ; =0x00001084
	ldr r2, [r0]
	ldr r0, [r2, r1]
	sub r1, #0xf4
	ldr r1, [r2, r1]
	bl Heap_FreeExplicit
	ldr r0, _021E5B58 ; =_0221A680
	ldr r1, _021E5B68 ; =0x00000F7C
	ldr r2, [r0]
	ldr r0, _021E5B64 ; =0x00001084
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	bl Heap_FreeExplicit
	ldr r0, _021E5B58 ; =_0221A680
	mov r1, #0
	str r1, [r0]
_021E5B52:
	bl ov00_021EC210
	pop {r3, pc}
	.balign 4, 0
_021E5B58: .word _0221A680
_021E5B5C: .word 0x00000F98
_021E5B60: .word 0x00000F94
_021E5B64: .word 0x00001084
_021E5B68: .word 0x00000F7C
	thumb_func_end ov00_021E5AE8

