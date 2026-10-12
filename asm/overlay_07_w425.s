	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022281C0
	.extern ov07_0221C448
	.extern ov07_02222268
	.extern ov07_022222B4
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_022226C4
	.extern ov07_022366EB
	.extern ov07_022366EC
	.extern ov07_022366ED
	.extern ov07_022366EE
	.extern ov07_022366EF

	.text

	.text
	thumb_func_start ov07_022281C0
ov07_022281C0: ; 0x022281C0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bls _022281D0
	b _02228330
_022281D0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022281DC: ; jump table
	.short _022281E8 - _022281DC - 2 ; case 0
	.short _02228222 - _022281DC - 2 ; case 1
	.short _02228264 - _022281DC - 2 ; case 2
	.short _0222828E - _022281DC - 2 ; case 3
	.short _022282B0 - _022281DC - 2 ; case 4
	.short _022282EE - _022281DC - 2 ; case 5
_022281E8:
	ldrb r1, [r4, #1]
	ldr r2, _02228370 ; =ov07_022366EC
	ldr r5, _02228374 ; =ov07_022366ED
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _02228378 ; =ov07_022366EE
	ldr r1, _0222837C ; =ov07_022366EB
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _02228380 ; =ov07_022366EF
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov07_02222590
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_02228222:
	add r0, r4, #0
	add r0, #0x10
	bl ov07_0222260C
	cmp r0, #0
	bne _02228234
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228234:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl Pokepic_SetAttr
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl Pokepic_SetAttr
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov07_022226C4
	add sp, #0xc
	pop {r4, r5, pc}
_02228264:
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_GetAttr
	mov r1, #0
	add r3, r0, #0
	lsl r3, r3, #0x10
	str r1, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	asr r3, r3, #0x10
	bl ov07_02222268
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0222828E:
	add r0, r4, #0
	add r0, #0x10
	bl ov07_022222B4
	cmp r0, #0
	bne _022282A0
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022282A0:
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_SetAttr
	add sp, #0xc
	pop {r4, r5, pc}
_022282B0:
	ldrb r1, [r4, #1]
	ldr r2, _02228370 ; =ov07_022366EC
	ldr r5, _02228374 ; =ov07_022366ED
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _02228378 ; =ov07_022366EE
	ldr r1, _0222837C ; =ov07_022366EB
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _02228380 ; =ov07_022366EF
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov07_02222590
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_GetAttr
	strh r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_022282EE:
	add r0, r4, #0
	add r0, #0x10
	bl ov07_0222260C
	cmp r0, #0
	bne _02228300
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02228300:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl Pokepic_SetAttr
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl Pokepic_SetAttr
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov07_022226C4
	add sp, #0xc
	pop {r4, r5, pc}
_02228330:
	mov r2, #4
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_SetAttr
	ldr r0, [r4, #0xc]
	mov r1, #6
	mov r2, #1
	bl Pokepic_SetAttr
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf4
	bl Pokepic_SetAttr
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02228370: .word ov07_022366EC
_02228374: .word ov07_022366ED
_02228378: .word ov07_022366EE
_0222837C: .word ov07_022366EB
_02228380: .word ov07_022366EF
	thumb_func_end ov07_022281C0

