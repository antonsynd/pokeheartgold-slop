	.include "asm/macros.inc"
	.include "overlay_18_021F7ED4.inc"
	.include "global.inc"

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	thumb_func_start ov18_021F7ED4
ov18_021F7ED4: ; 0x021F7ED4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r2, [sp, #0x10]
	add r5, r0, #0
	ldr r2, _021F815C ; =0x00000878
	add r7, r1, #0
	add r1, r5, r2
	mov r0, #0
	sub r2, #0xc0
	str r3, [sp, #0x14]
	bl MIi_CpuClear32
	ldr r1, _021F8160 ; =0x000003DA
	mov r0, #0x25
	bl Heap_AllocAtEnd
	add r6, r0, #0
	bne _021F7EFC
	bl GF_AssertFail
_021F7EFC:
	ldr r2, _021F8160 ; =0x000003DA
	add r0, r6, #0
	mov r1, #0
	bl memset
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _021F8160 ; =0x000003DA
	mov r0, #0x25
	bl Heap_AllocAtEnd
	add r4, r0, #0
	bne _021F7F1A
	bl GF_AssertFail
_021F7F1A:
	ldr r2, _021F8160 ; =0x000003DA
	add r0, r4, #0
	mov r1, #0
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	cmp r7, #0
	add r1, sp, #0x20
	bne _021F7F36
	mov r0, #1
	bl ov18_021F8168
	b _021F7F3A
_021F7F36:
	bl ov18_021F8168
_021F7F3A:
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	add r1, sp, #0x1c
	str r0, [sp]
	ldr r2, [r5]
	add r0, r6, #0
	ldr r2, [r2]
	add r3, r7, #0
	bl ov18_021F8198
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5]
	add r2, sp, #0x18
	ldr r0, [r0]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	bl ov18_021F822C
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5]
	add r2, sp, #0x18
	ldr r0, [r0]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	bl ov18_021F82CC
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _021F8090
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5]
	add r2, sp, #0x18
	ldr r0, [r0]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	bl ov18_021F831C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _021F8090
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5]
	add r2, sp, #0x18
	ldr r0, [r0]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	bl ov18_021F831C
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _021F8090
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5]
	add r2, sp, #0x18
	ldr r0, [r0]
	add r3, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	bl ov18_021F8468
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _021F8142
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _021F8164 ; =0x00001860
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021F8092
	ldr r1, [sp, #0x50]
	mov r0, #4
	tst r0, r1
	beq _021F8092
	str r6, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #6
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r4, #0
	ldr r0, [r0]
	add r3, sp, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov18_021F8584
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _021F80B0
_021F8090:
	b _021F8142
_021F8092:
	str r6, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5]
	add r2, r4, #0
	ldr r0, [r0]
	add r3, sp, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov18_021F8584
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _021F8142
_021F80B0:
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r2, [sp, #0x44]
	ldr r0, [r0]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r4, #0
	bl ov18_021F8640
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	str r2, [sp, #0x1c]
	mov r1, #0
	lsl r2, r2, #1
	bl memset
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r2, [sp, #0x4c]
	ldr r0, [r0]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	add r3, r4, #0
	bl ov18_021F86D0
	ldr r1, [r5]
	ldr r0, _021F815C ; =0x00000878
	ldr r1, [r1]
	ldr r3, [sp, #0x18]
	add r0, r5, r0
	add r2, r4, #0
	bl ov18_021F81D8
_021F8142:
	add r0, r7, #0
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl Heap_Free
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021F815C: .word 0x00000878
_021F8160: .word 0x000003DA
_021F8164: .word 0x00001860
	thumb_func_end ov18_021F7ED4

	thumb_func_start ov18_021F8168
ov18_021F8168: ; 0x021F8168
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	; u32 size;
	; void * ret;
	; GF_ASSERT(a < 82);
	cmp r5, #0x52
	blo _021F8178
	bl GF_AssertFail
_021F8178:
	; ret = GfGfxLoader_LoadFromNarc_GetSizeOut(GetPokedexDataNarcID(), a0 + 11, FALSE, HEAP_ID_POKEDEX_APP, FALSE, &size);
	bl GetPokedexDataNarcID
	mov r2, #0
	str r2, [sp]
	add r1, sp, #8
	add r5, #0xb
	str r1, [sp, #4]
	add r1, r5, #0
	mov r3, #0x25
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	; *a1 = size / 2;
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	; return ret;
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov18_021F8168

	thumb_func_start ov18_021F8198
ov18_021F8198: ; 0x021F8198
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [sp, #0x20]
	add r5, r1, #0
	mov r6, #0
	add r4, r3, #0
	str r0, [sp]
	str r2, [sp, #4]
	str r6, [r5]
	cmp r7, #0
	bls _021F81D2
_021F81AE:
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	beq _021F81CA
	ldr r1, [r5]
	ldrh r0, [r4]
	lsl r2, r1, #1
	ldr r1, [sp]
	strh r0, [r1, r2]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021F81CA:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r7
	blo _021F81AE
_021F81D2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F8198

	thumb_func_start ov18_021F81D8
ov18_021F81D8: ; 0x021F81D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	add r5, r0, #0
	ldr r1, _021F8228 ; =0x000007B4
	add r0, r3, #0
	strh r0, [r5, r1]
	mov r7, #0
	add r0, r1, #2
	add r4, r2, #0
	strh r7, [r5, r0]
	str r3, [sp, #4]
	add r0, r3, #0
	beq _021F8224
	add r0, r1, #2
	add r6, r5, r0
_021F81F8:
	ldrh r0, [r4]
	strh r0, [r5]
	ldrh r1, [r4]
	ldr r0, [sp]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F8214
	mov r0, #2
	strh r0, [r5, #2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	b _021F8218
_021F8214:
	mov r0, #1
	strh r0, [r5, #2]
_021F8218:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r7, r0
	blo _021F81F8
_021F8224:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F8228: .word 0x000007B4
	thumb_func_end ov18_021F81D8

	thumb_func_start ov18_021F822C
ov18_021F822C: ; 0x021F822C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	add r5, r2, #0
	mov r4, #0
	str r3, [sp, #0x10]
	cmp r0, #5
	bhi _021F82A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
ov18_021F8248: ; jump table
	.short ov18_021F8254 - ov18_021F8248 - 2 ; case 0
	.short ov18_021F8268 - ov18_021F8248 - 2 ; case 1
	.short ov18_021F8276 - ov18_021F8248 - 2 ; case 2
	.short ov18_021F8282 - ov18_021F8248 - 2 ; case 3
	.short ov18_021F828E - ov18_021F8248 - 2 ; case 4
	.short ov18_021F829A - ov18_021F8248 - 2 ; case 5
ov18_021F8254:
	ldr r2, [sp, #0x30]
	add r0, r7, #0
	add r1, r3, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r0, [sp, #0x30]
	add sp, #0x18
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
ov18_021F8268:
	mov r0, #2
	add r1, sp, #0x14
	bl ov18_021F8168
	add r6, r0, #0
	mov r4, #1
	b _021F82AA
ov18_021F8276:
	mov r0, #3
	add r1, sp, #0x14
	bl ov18_021F8168
	add r6, r0, #0
	b _021F82AA
ov18_021F8282:
	mov r0, #4
	add r1, sp, #0x14
	bl ov18_021F8168
	add r6, r0, #0
	b _021F82AA
ov18_021F828E:
	mov r0, #5
	add r1, sp, #0x14
	bl ov18_021F8168
	add r6, r0, #0
	b _021F82AA
ov18_021F829A:
	mov r0, #6
	add r1, sp, #0x14
	bl ov18_021F8168
	add r6, r0, #0
	b _021F82AA
_021F82A6:
	bl GF_AssertFail
_021F82AA:
	str r6, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x30]
	add r0, r7, #0
	add r1, r5, #0
	bl ov18_021F8764
	add r0, r6, #0
	bl Heap_Free
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_021F822C

	thumb_func_start ov18_021F82CC
ov18_021F82CC: ; 0x021F82CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0x1a
	bne _021F82EE
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r0, [sp, #0x28]
	add sp, #0x14
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021F82EE:
	add r0, r0, #7
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	ldr r0, [sp, #0x28]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, r5, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r6, #0
	add r2, r7, #0
	bl ov18_021F8764
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov18_021F82CC

	thumb_func_start ov18_021F831C
ov18_021F831C: ; 0x021F831C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov18_021F8970
	cmp r0, #0x11
	bls _021F8330
	b _021F843E
_021F8330:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
ov18_021F833C: ; jump table
	.short ov18_021F8372 - ov18_021F833C - 2 ; case 0
	.short ov18_021F837E - ov18_021F833C - 2 ; case 1
	.short ov18_021F838A - ov18_021F833C - 2 ; case 2
	.short ov18_021F8396 - ov18_021F833C - 2 ; case 3
	.short ov18_021F83A2 - ov18_021F833C - 2 ; case 4
	.short ov18_021F83AE - ov18_021F833C - 2 ; case 5
	.short ov18_021F83BA - ov18_021F833C - 2 ; case 6
	.short ov18_021F83C6 - ov18_021F833C - 2 ; case 7
	.short ov18_021F83D2 - ov18_021F833C - 2 ; case 8
	.short ov18_021F83DE - ov18_021F833C - 2 ; case 9
	.short ov18_021F83EA - ov18_021F833C - 2 ; case 10
	.short ov18_021F83F6 - ov18_021F833C - 2 ; case 11
	.short ov18_021F8402 - ov18_021F833C - 2 ; case 12
	.short ov18_021F840E - ov18_021F833C - 2 ; case 13
	.short ov18_021F841A - ov18_021F833C - 2 ; case 14
	.short ov18_021F8426 - ov18_021F833C - 2 ; case 15
	.short ov18_021F8432 - ov18_021F833C - 2 ; case 16
	.short ov18_021F8360 - ov18_021F833C - 2 ; case 17
ov18_021F8360:
	ldr r5, [sp, #0x28]
	add r0, r7, #0
	add r1, r6, #0
	lsl r2, r5, #1
	bl memcpy
	add sp, #0x14
	str r5, [r4]
	pop {r4, r5, r6, r7, pc}
ov18_021F8372:
	mov r0, #0x33
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F837E:
	mov r0, #0x34
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F838A:
	mov r0, #0x35
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F8396:
	mov r0, #0x36
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83A2:
	mov r0, #0x37
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83AE:
	mov r0, #0x38
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83BA:
	mov r0, #0x39
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83C6:
	mov r0, #0x3a
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83D2:
	mov r0, #0x3b
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83DE:
	mov r0, #0x3c
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83EA:
	mov r0, #0x3d
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F83F6:
	mov r0, #0x3e
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F8402:
	mov r0, #0x3f
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F840E:
	mov r0, #0x40
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F841A:
	mov r0, #0x41
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F8426:
	mov r0, #0x42
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
ov18_021F8432:
	mov r0, #0x43
	add r1, sp, #0x10
	bl ov18_021F8168
	add r5, r0, #0
	b _021F8442
_021F843E:
	bl GF_AssertFail
_021F8442:
	ldr r0, [sp, #0x28]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	add r2, r5, #0
	bl ov18_021F8764
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov18_021F831C

	thumb_func_start ov18_021F8468
ov18_021F8468: ; 0x021F8468
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	cmp r0, #0xe
	bhi _021F855C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
ov18_021F8482: ; jump table
	.short ov18_021F8544 - ov18_021F8482 - 2 ; case 0
	.short ov18_021F8514 - ov18_021F8482 - 2 ; case 1
	.short ov18_021F8520 - ov18_021F8482 - 2 ; case 2
	.short ov18_021F852C - ov18_021F8482 - 2 ; case 3
	.short ov18_021F84E4 - ov18_021F8482 - 2 ; case 4
	.short ov18_021F84D8 - ov18_021F8482 - 2 ; case 5
	.short ov18_021F8508 - ov18_021F8482 - 2 ; case 6
	.short ov18_021F84B4 - ov18_021F8482 - 2 ; case 7
	.short ov18_021F8550 - ov18_021F8482 - 2 ; case 8
	.short ov18_021F84FC - ov18_021F8482 - 2 ; case 9
	.short ov18_021F8538 - ov18_021F8482 - 2 ; case 10
	.short ov18_021F84CC - ov18_021F8482 - 2 ; case 11
	.short ov18_021F84F0 - ov18_021F8482 - 2 ; case 12
	.short ov18_021F84C0 - ov18_021F8482 - 2 ; case 13
	.short ov18_021F84A0 - ov18_021F8482 - 2 ; case 14
ov18_021F84A0:
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	add r1, r5, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r0, [sp, #0x28]
	add sp, #0x14
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
ov18_021F84B4:
	mov r0, #0x44
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F84C0:
	mov r0, #0x45
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F84CC:
	mov r0, #0x46
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F84D8:
	mov r0, #0x47
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F84E4:
	mov r0, #0x48
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F84F0:
	mov r0, #0x49
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F84FC:
	mov r0, #0x4a
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F8508:
	mov r0, #0x4b
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F8514:
	mov r0, #0x4c
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F8520:
	mov r0, #0x4d
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F852C:
	mov r0, #0x4e
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F8538:
	mov r0, #0x4f
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F8544:
	mov r0, #0x50
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
ov18_021F8550:
	mov r0, #0x51
	add r1, sp, #0x10
	bl ov18_021F8168
	add r7, r0, #0
	b _021F8560
_021F855C:
	bl GF_AssertFail
_021F8560:
	ldr r0, [sp, #0x28]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r6, #0
	add r2, r7, #0
	bl ov18_021F8764
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov18_021F8468

	thumb_func_start ov18_021F8584
ov18_021F8584: ; 0x021F8584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	str r0, [sp, #0x30]
	mov r0, #8
	add r4, r3, #0
	str r2, [sp, #4]
	ldr r6, [sp, #0x2c]
	tst r0, r7
	beq _021F85AC
	ldr r1, [sp, #0x28]
	add r0, r2, #0
	lsl r2, r6, #1
	bl memcpy
	add sp, #0x10
	str r6, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021F85AC:
	cmp r7, #6
	bne _021F85FA
	mov r0, #0
	str r0, [sp, #0xc]
	cmp r6, #0
	bls _021F8638
	ldr r5, [sp, #0x28]
_021F85BA:
	ldr r2, [sp]
	ldr r0, _021F863C ; =0x00001854
	ldrh r1, [r5]
	ldr r0, [r2, r0]
	add r2, r7, #0
	ldrb r0, [r0, r1]
	tst r2, r0
	beq _021F85EA
	mov r2, #1
	tst r0, r2
	bne _021F85EA
	ldr r0, [sp, #0x30]
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	beq _021F85EA
	ldr r1, [r4]
	ldrh r0, [r5]
	lsl r2, r1, #1
	ldr r1, [sp, #4]
	strh r0, [r1, r2]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F85EA:
	ldr r0, [sp, #0xc]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r6
	blo _021F85BA
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021F85FA:
	mov r0, #0
	str r0, [sp, #8]
	cmp r6, #0
	bls _021F8638
	ldr r5, [sp, #0x28]
_021F8604:
	ldr r2, [sp]
	ldr r0, _021F863C ; =0x00001854
	ldrh r1, [r5]
	ldr r0, [r2, r0]
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _021F862C
	ldr r0, [sp, #0x30]
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0
	beq _021F862C
	ldr r1, [r4]
	ldrh r0, [r5]
	lsl r2, r1, #1
	ldr r1, [sp, #4]
	strh r0, [r1, r2]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F862C:
	ldr r0, [sp, #8]
	add r5, r5, #2
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r6
	blo _021F8604
_021F8638:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F863C: .word 0x00001854
	thumb_func_end ov18_021F8584

	thumb_func_start ov18_021F8640
ov18_021F8640: ; 0x021F8640
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	str r3, [sp]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r5, [sp, #0x20]
	str r0, [sp, #0x2c]
	cmp r1, #0
	bne _021F866E
	cmp r2, #0x98
	bne _021F866E
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x24]
	add r0, r3, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r0, [sp, #0x28]
	add sp, #0xc
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021F866E:
	ldr r0, [sp, #0x28]
	mov r7, #0
	cmp r0, #0
	bls _021F86C4
	lsl r0, r1, #2
	str r0, [sp, #8]
	lsl r0, r2, #2
	ldr r4, [sp, #0x24]
	str r0, [sp, #4]
_021F8680:
	ldr r0, _021F86C8 ; =0x00001848
	ldrh r2, [r4]
	ldr r1, [r6, r0]
	ldr r3, [sp, #8]
	lsl r0, r2, #2
	ldr r1, [r1, r0]
	ldr r0, _021F86CC ; =0x00001850
	ldr r0, [r6, r0]
	ldrh r3, [r3, r0]
	cmp r1, r3
	blt _021F86BA
	ldr r3, [sp, #4]
	ldrh r0, [r3, r0]
	cmp r1, r0
	bgt _021F86BA
	ldr r0, [sp, #0x2c]
	add r1, r2, #0
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F86BA
	ldr r1, [r5]
	ldrh r0, [r4]
	lsl r2, r1, #1
	ldr r1, [sp]
	strh r0, [r1, r2]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021F86BA:
	ldr r0, [sp, #0x28]
	add r7, r7, #1
	add r4, r4, #2
	cmp r7, r0
	blo _021F8680
_021F86C4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F86C8: .word 0x00001848
_021F86CC: .word 0x00001850
	thumb_func_end ov18_021F8640

	thumb_func_start ov18_021F86D0
ov18_021F86D0: ; 0x021F86D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	str r3, [sp]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r5, [sp, #0x20]
	str r0, [sp, #0x2c]
	cmp r1, #0
	bne _021F86FE
	cmp r2, #0x98
	bne _021F86FE
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x24]
	add r0, r3, #0
	lsl r2, r2, #1
	bl memcpy
	ldr r0, [sp, #0x28]
	add sp, #0xc
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021F86FE:
	ldr r0, [sp, #0x28]
	mov r7, #0
	cmp r0, #0
	bls _021F8758
	lsl r0, r1, #2
	str r0, [sp, #8]
	lsl r0, r2, #2
	ldr r4, [sp, #0x24]
	str r0, [sp, #4]
_021F8710:
	ldr r0, _021F875C ; =0x0000184C
	ldrh r2, [r4]
	ldr r1, [r6, r0]
	ldr r3, [sp, #8]
	lsl r0, r2, #2
	ldr r1, [r1, r0]
	ldr r0, _021F8760 ; =0x00001850
	ldr r0, [r6, r0]
	add r3, r3, r0
	ldrh r3, [r3, #2]
	cmp r1, r3
	blt _021F874E
	ldr r3, [sp, #4]
	add r0, r3, r0
	ldrh r0, [r0, #2]
	cmp r1, r0
	bgt _021F874E
	ldr r0, [sp, #0x2c]
	add r1, r2, #0
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F874E
	ldr r1, [r5]
	ldrh r0, [r4]
	lsl r2, r1, #1
	ldr r1, [sp]
	strh r0, [r1, r2]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021F874E:
	ldr r0, [sp, #0x28]
	add r7, r7, #1
	add r4, r4, #2
	cmp r7, r0
	blo _021F8710
_021F8758:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F875C: .word 0x0000184C
_021F8760: .word 0x00001850
	thumb_func_end ov18_021F86D0

	thumb_func_start ov18_021F8764
ov18_021F8764: ; 0x021F8764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #4]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	mov r1, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	str r2, [sp, #8]
	str r1, [r0]
	ldr r0, [sp, #0x30]
	add r5, r3, #0
	str r1, [sp, #0xc]
	cmp r0, #1
	bne _021F87D0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bls _021F8820
	ldr r1, [sp, #0x28]
	mov r0, #0
_021F8790:
	add r4, r0, #0
	cmp r5, #0
	bls _021F87BE
	ldrh r2, [r1]
	ldr r6, [sp, #8]
_021F879A:
	ldrh r3, [r6]
	cmp r2, r3
	bne _021F87B6
	ldr r3, [sp, #4]
	ldr r3, [r3]
	lsl r4, r3, #1
	ldr r3, [sp]
	strh r2, [r3, r4]
	ldr r2, [sp, #4]
	ldr r2, [r2]
	add r3, r2, #1
	ldr r2, [sp, #4]
	str r3, [r2]
	b _021F87BE
_021F87B6:
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r5
	blo _021F879A
_021F87BE:
	ldr r2, [sp, #0xc]
	add r1, r1, #2
	add r3, r2, #1
	ldr r2, [sp, #0x2c]
	str r3, [sp, #0xc]
	cmp r3, r2
	blo _021F8790
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021F87D0:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bls _021F8820
	ldr r7, [sp, #0x28]
_021F87D8:
	mov r6, #0
	cmp r5, #0
	bls _021F8812
	ldr r4, [sp, #8]
_021F87E0:
	ldrh r1, [r7]
	ldrh r0, [r4]
	cmp r1, r0
	bne _021F880A
	ldr r0, [sp, #0x34]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F880A
	ldr r0, [sp, #4]
	ldrh r2, [r7]
	ldr r0, [r0]
	lsl r1, r0, #1
	ldr r0, [sp]
	strh r2, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
	b _021F8812
_021F880A:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r5
	blo _021F87E0
_021F8812:
	ldr r0, [sp, #0xc]
	add r7, r7, #2
	add r1, r0, #1
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _021F87D8
_021F8820:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov18_021F8764

	thumb_func_start ov18_021F8824
ov18_021F8824: ; 0x021F8824
	ldr r1, _021F8834 ; =0x0000185A
	ldrb r2, [r0, r1]
	sub r1, r1, #1
	ldrb r1, [r0, r1]
	mov r0, #0xf
	mul r0, r1
	add r0, r2, r0
	bx lr
	.balign 4, 0
_021F8834: .word 0x0000185A
	thumb_func_end ov18_021F8824

	thumb_func_start ov18_021F8838
ov18_021F8838: ; 0x021F8838
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F8824
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _021F884C ; =0x00001030
	ldrh r0, [r1, r0]
	pop {r4, pc}
	nop
_021F884C: .word 0x00001030
	thumb_func_end ov18_021F8838

	thumb_func_start ov18_021F8850
ov18_021F8850: ; 0x021F8850
	push {r4, r5}
	ldr r2, _021F8880 ; =0x000007B4
	mov r4, #0
	ldrh r5, [r0, r2]
	add r3, r4, #0
	cmp r5, #0
	bls _021F8878
_021F885E:
	cmp r4, #0
	bne _021F8864
	ldrh r4, [r0]
_021F8864:
	ldrh r2, [r0]
	cmp r1, r2
	bne _021F8870
	add r0, r1, #0
	pop {r4, r5}
	bx lr
_021F8870:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r5
	blo _021F885E
_021F8878:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	nop
_021F8880: .word 0x000007B4
	thumb_func_end ov18_021F8850

	thumb_func_start ov18_021F8884
ov18_021F8884: ; 0x021F8884
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021F8900 ; =0x00001030
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, r2
	mov r0, #0
	lsr r2, r2, #1
	bl MIi_CpuClear32
	cmp r4, #1
	ldr r0, _021F8904 ; =0x0000102C
	bne _021F88D6
	ldrh r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	bls _021F88FE
	ldr r7, _021F8904 ; =0x0000102C
	add r4, r5, #0
_021F88A8:
	ldr r0, _021F8908 ; =0x00001858
	ldr r1, _021F890C ; =0x00000878
	ldrb r0, [r5, r0]
	ldrh r1, [r4, r1]
	bl Pokedex_ConvertToCurrentDexNo
	ldr r1, _021F890C ; =0x00000878
	sub r0, r0, #1
	ldrh r2, [r4, r1]
	lsl r0, r0, #2
	ldr r1, _021F8900 ; =0x00001030
	add r0, r5, r0
	strh r2, [r0, r1]
	ldr r1, _021F8910 ; =0x0000087A
	add r6, r6, #1
	ldrh r2, [r4, r1]
	ldr r1, _021F8914 ; =0x00001032
	add r4, r4, #4
	strh r2, [r0, r1]
	ldrh r0, [r5, r7]
	cmp r6, r0
	blo _021F88A8
	pop {r3, r4, r5, r6, r7, pc}
_021F88D6:
	ldrh r0, [r5, r0]
	mov r1, #0
	cmp r0, #0
	bls _021F88FE
	ldr r3, _021F8918 ; =0x00001034
	ldr r4, _021F8910 ; =0x0000087A
	add r7, r3, #0
	add r0, r5, #0
	add r6, r3, #2
	sub r7, #8
_021F88EA:
	ldr r2, _021F890C ; =0x00000878
	add r1, r1, #1
	ldrh r2, [r0, r2]
	strh r2, [r0, r3]
	ldrh r2, [r0, r4]
	strh r2, [r0, r6]
	ldrh r2, [r5, r7]
	add r0, r0, #4
	cmp r1, r2
	blo _021F88EA
_021F88FE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F8900: .word 0x00001030
_021F8904: .word 0x0000102C
_021F8908: .word 0x00001858
_021F890C: .word 0x00000878
_021F8910: .word 0x0000087A
_021F8914: .word 0x00001032
_021F8918: .word 0x00001034
	thumb_func_end ov18_021F8884

	thumb_func_start ov18_021F891C
ov18_021F891C: ; 0x021F891C
	push {r3, lr}
	add r2, r0, #0
	cmp r1, #0
	bne _021F892A
	ldr r0, _021F8944 ; =0x0000102C
	ldrh r0, [r2, r0]
	pop {r3, pc}
_021F892A:
	ldr r1, _021F8944 ; =0x0000102C
	ldr r0, _021F8948 ; =0x00001858
	ldrh r1, [r2, r1]
	ldrb r0, [r2, r0]
	sub r1, r1, #1
	lsl r1, r1, #2
	add r2, r2, r1
	ldr r1, _021F894C ; =0x00000878
	ldrh r1, [r2, r1]
	bl Pokedex_ConvertToCurrentDexNo
	pop {r3, pc}
	nop
_021F8944: .word 0x0000102C
_021F8948: .word 0x00001858
_021F894C: .word 0x00000878
	thumb_func_end ov18_021F891C

	thumb_func_start ov18_021F8950
ov18_021F8950: ; 0x021F8950
	push {r3, lr}
	cmp r1, #0
	bne _021F8962
	bl ov18_021F891C
	mov r1, #0xf
	bl _u32_div_f
	pop {r3, pc}
_021F8962:
	bl ov18_021F891C
	sub r0, r0, #1
	mov r1, #0xf
	bl _u32_div_f
	pop {r3, pc}
	thumb_func_end ov18_021F8950

	thumb_func_start ov18_021F8970
ov18_021F8970: ; 0x021F8970
	bx lr
	.balign 4, 0
	thumb_func_end ov18_021F8970

	thumb_func_start ov18_021F8974
ov18_021F8974: ; 0x021F8974
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x96
	ldr r0, [r5, #0x14]
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0x96
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	add r2, r4, #0
	mov r1, #0x18
_021F8992:
	ldrb r0, [r5]
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021F8992
	ldr r1, [r4, #0x14]
	mov r0, #0x44
	bl NARC_New
	str r0, [r4, #0x1c]
	mov r0, #9
	mov r2, #0
	lsl r0, r0, #6
	strh r2, [r4, r0]
	add r0, #0x14
	str r2, [r4, r0]
	ldr r0, _021F89C4 ; =ov18_021F89F8
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x18]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021F89C4: .word ov18_021F89F8
	thumb_func_end ov18_021F8974

	thumb_func_start ov18_021F89C8
ov18_021F89C8: ; 0x021F89C8
	mov r1, #0x95
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov18_021F89C8

	thumb_func_start ov18_021F89D0
ov18_021F89D0: ; 0x021F89D0
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F91F0
	add r0, r4, #0
	bl ov18_021F8F10
	add r0, r4, #0
	bl ov18_021F8BEC
	ldr r0, [r4, #0x1c]
	bl NARC_Delete
	ldr r0, [r4, #0x18]
	bl SysTask_Destroy
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end ov18_021F89D0

	thumb_func_start ov18_021F89F8
ov18_021F89F8: ; 0x021F89F8
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #9
	lsl r1, r1, #6
	ldrh r0, [r4, r1]
	cmp r0, #4
	bhi _021F8AA0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
ov18_021F8A14: ; jump table
	.short ov18_021F8A1E - ov18_021F8A14 - 2 ; case 0
	.short ov18_021F8A52 - ov18_021F8A14 - 2 ; case 1
	.short ov18_021F8A66 - ov18_021F8A14 - 2 ; case 2
	.short ov18_021F8A8A - ov18_021F8A14 - 2 ; case 3
	.short _021F8AA0 - ov18_021F8A14 - 2 ; case 4
ov18_021F8A1E:
	ldr r0, _021F8AB4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	bl ov18_021F8AB8
	add r0, r4, #0
	bl ov18_021F8B10
	add r0, r4, #0
	bl ov18_021F8CCC
	add r0, r4, #0
	bl ov18_021F8FA0
	add r0, r4, #0
	bl ov18_021F95CC
	add r0, r4, #0
	bl ov18_021F8C0C
	mov r0, #9
	mov r1, #1
	lsl r0, r0, #6
	strh r1, [r4, r0]
	b _021F8AA0
ov18_021F8A52:
	add r0, r4, #0
	bl ov18_021F8C48
	cmp r0, #1
	bne _021F8AA0
	mov r0, #9
	mov r1, #2
	lsl r0, r0, #6
	strh r1, [r4, r0]
	b _021F8AA0
ov18_021F8A66:
	add r2, r1, #0
	sub r2, #0x41
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r0, #0xe
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r3, r2, #0
	bl PlayCryEx
	mov r0, #9
	mov r1, #3
	lsl r0, r0, #6
	strh r1, [r4, r0]
	b _021F8AA0
ov18_021F8A8A:
	bl IsCryFinished
	cmp r0, #0
	bne _021F8AA0
	mov r0, #0x95
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #4
	sub r0, #0x14
	strh r1, [r4, r0]
_021F8AA0:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	bl SpriteList_RenderAndAnimateSprites
	add r0, r4, #0
	bl ov18_021F8C68
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021F8AB4: .word 0x04000050
	thumb_func_end ov18_021F89F8

