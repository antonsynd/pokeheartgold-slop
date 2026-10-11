	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E74C

	.text

	.text
	thumb_func_start ov10_0221E74C
ov10_0221E74C: ; 0x0221E74C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r1, r3, #0
	ldr r3, [sp, #0x10]
	cmp r3, #5
	bhi _0221E824
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0221E764: ; jump table
	.short _0221E770 - _0221E764 - 2 ; case 0
	.short _0221E78E - _0221E764 - 2 ; case 1
	.short _0221E7AC - _0221E764 - 2 ; case 2
	.short _0221E806 - _0221E764 - 2 ; case 3
	.short _0221E7CA - _0221E764 - 2 ; case 4
	.short _0221E7E8 - _0221E764 - 2 ; case 5
_0221E770:
	ldr r3, _0221E82C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0221E830 ; =0x00002D8C
	add r6, r0, r6
	ldr r6, [r6, r5]
	str r6, [r2]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldr r0, [r0, r5]
	str r0, [r1]
	pop {r4, r5, r6, pc}
_0221E78E:
	ldr r3, _0221E82C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0221E834 ; =0x00002D42
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1]
	pop {r4, r5, r6, pc}
_0221E7AC:
	ldr r3, _0221E82C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0221E838 ; =0x00002D44
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1]
	pop {r4, r5, r6, pc}
_0221E7CA:
	ldr r3, _0221E82C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0221E83C ; =0x00002D48
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1]
	pop {r4, r5, r6, pc}
_0221E7E8:
	ldr r3, _0221E82C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0221E840 ; =0x00002D4A
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1]
	pop {r4, r5, r6, pc}
_0221E806:
	ldr r3, _0221E82C ; =0x000003CF
	ldrb r5, [r0, r3]
	mov r3, #0xc0
	add r6, r5, #0
	mul r6, r3
	ldr r5, _0221E844 ; =0x00002D46
	add r6, r0, r6
	ldrh r6, [r6, r5]
	str r6, [r2]
	add r2, r4, #0
	mul r2, r3
	add r0, r0, r2
	ldrh r0, [r0, r5]
	str r0, [r1]
	pop {r4, r5, r6, pc}
_0221E824:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	nop
_0221E82C: .word 0x000003CF
_0221E830: .word 0x00002D8C
_0221E834: .word 0x00002D42
_0221E838: .word 0x00002D44
_0221E83C: .word 0x00002D48
_0221E840: .word 0x00002D4A
_0221E844: .word 0x00002D46
	thumb_func_end ov10_0221E74C

