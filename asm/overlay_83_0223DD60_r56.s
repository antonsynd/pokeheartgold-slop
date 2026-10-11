	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241368
	.public ov83_022413C4
	.public ov83_0224140C
	.public ov83_0224143C
	.extern ov83_022414CC
	.extern ov83_02241504

    .text

	.text
	thumb_func_start ov83_02241368
ov83_02241368: ; 0x02241368
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0xa
	add r5, r0, #0
	cmp r3, #3
	bhi _022413A6
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02241380: ; jump table
	.short _02241388 - _02241380 - 2 ; case 0
	.short _02241390 - _02241380 - 2 ; case 1
	.short _02241398 - _02241380 - 2 ; case 2
	.short _022413A0 - _02241380 - 2 ; case 3
_02241388:
	mov r4, #0x31
	bl ov83_022413C4
	b _022413A6
_02241390:
	mov r4, #0x32
	bl ov83_0224143C
	b _022413A6
_02241398:
	mov r4, #0x33
	bl ov83_022414CC
	b _022413A6
_022413A0:
	mov r4, #0x34
	bl ov83_02241504
_022413A6:
	ldr r1, _022413C0 ; =0x000007AC
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_02037030
	cmp r0, #1
	bne _022413BA
	mov r0, #1
	pop {r3, r4, r5, pc}
_022413BA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022413C0: .word 0x000007AC
	thumb_func_end ov83_02241368

	thumb_func_start ov83_022413C4
ov83_022413C4: ; 0x022413C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02241400 ; =0x0000050C
	add r4, r1, #0
	ldr r0, [r6, r0]
	bl Save_PlayerData_GetProfile
	ldr r1, _02241404 ; =0x000007AC
	strh r4, [r6, r1]
	bl PlayerProfile_GetTrainerGender
	ldr r1, _02241408 ; =0x000007AE
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_022413E4:
	ldr r0, _02241400 ; =0x0000050C
	ldrb r1, [r6, #9]
	lsl r2, r4, #0x18
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov83_0224777C
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _022413E4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241400: .word 0x0000050C
_02241404: .word 0x000007AC
_02241408: .word 0x000007AE
	thumb_func_end ov83_022413C4

	thumb_func_start ov83_0224140C
ov83_0224140C: ; 0x0224140C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xf]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0xf]
	bl sub_0203769C
	cmp r5, r0
	beq _02241436
	ldr r0, _02241438 ; =0x000007FF
	mov r3, #0
	add r5, r6, #4
_02241428:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02241428
_02241436:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02241438: .word 0x000007FF
	thumb_func_end ov83_0224140C

	thumb_func_start ov83_0224143C
ov83_0224143C: ; 0x0224143C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02241470 ; =0x000007AC
	add r4, r2, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0224145A
	ldrb r0, [r5, #0x12]
	cmp r0, #0xff
	bne _0224145A
	strb r4, [r5, #0x12]
_0224145A:
	ldrb r1, [r5, #0x12]
	mov r0, #0x7b
	lsl r0, r0, #4
	strh r1, [r5, r0]
	ldrh r2, [r5, #0x10]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241470: .word 0x000007AC
	thumb_func_end ov83_0224143C

