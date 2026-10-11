#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9480
	.public ov112_021E95A0
	.public ov112_021E9610
	.extern ov112_021F397E
	.extern ov112_021F4138
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9480
ov112_021E9480: ; 0x021E9480
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	lsl r0, r5, #0x10
	lsl r1, r2, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02070438
	ldr r1, _021E9598 ; =0x000001A5
	cmp r5, r1
	bgt _021E94EC
	bge _021E9550
	add r2, r1, #0
	sub r2, #0x46
	cmp r5, r2
	bgt _021E94B8
	add r2, r1, #0
	sub r2, #0x46
	cmp r5, r2
	bge _021E955C
	cmp r5, #0xac
	bgt _021E94B2
	beq _021E9580
	b _021E9586
_021E94B2:
	cmp r5, #0xc9
	beq _021E9568
	b _021E9586
_021E94B8:
	add r2, r1, #0
	sub r2, #0x23
	cmp r5, r2
	bgt _021E94CA
	add r2, r1, #0
	sub r2, #0x23
	cmp r5, r2
	beq _021E9562
	b _021E9586
_021E94CA:
	add r2, r1, #0
	sub r2, #8
	cmp r5, r2
	bgt _021E9586
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	blt _021E9586
	add r2, r1, #0
	sub r2, #9
	cmp r5, r2
	beq _021E9538
	add r2, r1, #0
	sub r2, #8
	cmp r5, r2
	beq _021E953E
	b _021E9586
_021E94EC:
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bgt _021E951C
	add r2, r1, #0
	add r2, #0x42
	cmp r5, r2
	bge _021E957A
	add r2, r1, #2
	cmp r5, r2
	bgt _021E9512
	add r2, r1, #1
	cmp r5, r2
	blt _021E9586
	beq _021E9544
	add r2, r1, #2
	cmp r5, r2
	beq _021E954A
	b _021E9586
_021E9512:
	add r2, r1, #0
	add r2, #0x3a
	cmp r5, r2
	beq _021E9574
	b _021E9586
_021E951C:
	add r2, r1, #0
	add r2, #0x47
	cmp r5, r2
	bgt _021E952E
	add r2, r1, #0
	add r2, #0x47
	cmp r5, r2
	beq _021E956E
	b _021E9586
_021E952E:
	add r2, r1, #0
	add r2, #0x48
	cmp r5, r2
	beq _021E9556
	b _021E9586
_021E9538:
	add r1, #0xc9
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E953E:
	add r1, #0xcc
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9544:
	add r1, #0xcf
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E954A:
	add r1, #0xd1
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9550:
	add r1, #0xd3
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9556:
	add r1, #0xd5
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E955C:
	add r1, #0xc5
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9562:
	add r1, #0xa5
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9568:
	add r1, #0xa9
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E956E:
	add r1, #0xe7
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9574:
	add r1, #0xe9
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E957A:
	add r1, #0xef
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9580:
	add r1, #0xf1
	add r0, r0, r1
	pop {r3, r4, r5, pc}
_021E9586:
	cmp r4, #1
	beq _021E958C
	mov r4, #0
_021E958C:
	ldr r0, _021E959C ; =ov112_021F397E
	lsl r2, r5, #2
	lsl r1, r4, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9598: .word 0x000001A5
_021E959C: .word ov112_021F397E
	thumb_func_end ov112_021E9480

	thumb_func_start ov112_021E95A0
ov112_021E95A0: ; 0x021E95A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _021E9604 ; =0x0001E440
	add r1, sp, #4
	ldr r0, [r6, r0]
	add r2, sp, #0
	bl sub_02032674
	ldr r0, [r6, #0x20]
	bl Save_Pokedex_Get
	bl Pokedex_GetNatDexFlag
	cmp r0, #0
	beq _021E95C4
	mov r7, #0x14
	b _021E95C6
_021E95C4:
	mov r7, #8
_021E95C6:
	mov r4, #0
	cmp r7, #0
	bls _021E95FE
	ldr r5, _021E9608 ; =ov112_021F4138
_021E95CE:
	ldr r1, [r5]
	ldr r0, [sp]
	cmp r1, r0
	bhi _021E95F6
	ldr r0, _021E9604 ; =0x0001E440
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl Pokewalker_CourseIsUnlocked
	cmp r0, #0
	bne _021E95F6
	ldr r0, _021E9604 ; =0x0001E440
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl Pokewalker_UnlockCourse
	ldr r0, _021E960C ; =0x0001EC78
	add sp, #8
	str r4, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E95F6:
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r7
	blo _021E95CE
_021E95FE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9604: .word 0x0001E440
_021E9608: .word ov112_021F4138
_021E960C: .word 0x0001EC78
	thumb_func_end ov112_021E95A0

	thumb_func_start ov112_021E9610
ov112_021E9610: ; 0x021E9610
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	str r1, [sp]
	bl Save_Pokedex_Get
	bl Pokedex_GetNatDexFlag
	cmp r0, #0
	beq _021E9628
	mov r5, #0x14
	b _021E962A
_021E9628:
	mov r5, #8
_021E962A:
	mov r4, #0
	cmp r5, #0
	ble _021E965C
	ldr r7, _021E9664 ; =0x0001E440
_021E9632:
	ldr r0, [r6, r7]
	add r1, r4, #0
	bl Pokewalker_CourseIsUnlocked
	cmp r0, #0
	bne _021E9656
	mov r0, #0xc0
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021E9668 ; =ov112_021F4138
	ldr r1, [r0, r1]
	ldr r0, [sp]
	cmp r1, r0
	bls _021E9652
	sub r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E9652:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9656:
	add r4, r4, #1
	cmp r4, r5
	blt _021E9632
_021E965C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9664: .word 0x0001E440
_021E9668: .word ov112_021F4138
	thumb_func_end ov112_021E9610

