#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021ED584
	.public ov01_021ED710
	.public ov01_021ED924
	.extern ov01_021EB818
	.extern ov01_021EB830
	.extern ov01_021EB840
	.extern ov01_021EBCA4
	.extern ov01_021EC5FC
	.extern ov01_021EC678
	.extern ov01_021EC790
	.extern ov01_021EC7AC
	.extern ov01_021EC7C8

	.text

	.text
	thumb_func_start ov01_021ED584
ov01_021ED584: ; 0x021ED584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021ED700 ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021ED59A
	b _021ED6FC
_021ED59A:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED5A6: ; jump table
	.short _021ED5B2 - _021ED5A6 - 2 ; case 0
	.short _021ED602 - _021ED5A6 - 2 ; case 1
	.short _021ED630 - _021ED5A6 - 2 ; case 2
	.short _021ED670 - _021ED5A6 - 2 ; case 3
	.short _021ED6A4 - _021ED5A6 - 2 ; case 4
	.short _021ED6DE - _021ED5A6 - 2 ; case 5
_021ED5B2:
	ldr r1, _021ED704 ; =0x00007555
	mov r2, #0x41
	str r1, [sp]
	ldr r1, _021ED708 ; =0x00007FFF
	add r0, #0xc
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x4c]
	add r1, #0x14
	mov r3, #6
	bl ov01_021EC5FC
	add r0, r5, #0
	mov r1, #0
	mov r2, #9
	mov r3, #0x1e
	bl ov01_021EB830
	mov r0, #0
	mov r1, #0x10
	bl ov01_021EB818
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED602:
	add r0, r5, #0
	add r0, #0x14
	bl ov01_021EC7AC
	add r6, r0, #0
	add r0, r5, #0
	bl ov01_021EB840
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov01_021EB818
	cmp r6, #1
	bne _021ED6FC
	cmp r7, #1
	bne _021ED6FC
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED630:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED656
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021ED704 ; =0x00007555
	ldr r0, [r0, #0x4c]
	ldr r3, _021ED708 ; =0x00007FFF
	mov r1, #6
	str r0, [r5, #0x14]
	bl ov01_021EC678
	add r5, #0x14
	add r0, r5, #0
	bl ov01_021EC7C8
_021ED656:
	mov r0, #9
	mov r1, #7
	bl ov01_021EB818
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED670:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021ED6FC
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED68E
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl ov01_021EC790
_021ED68E:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0x1e
	bl ov01_021EB830
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED6A4:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED6B8
	add r0, r5, #0
	add r0, #0x14
	bl ov01_021EC7AC
	add r6, r0, #0
	b _021ED6BA
_021ED6B8:
	mov r6, #1
_021ED6BA:
	add r0, r5, #0
	bl ov01_021EB840
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl ov01_021EB818
	cmp r6, #1
	bne _021ED6FC
	cmp r7, #1
	bne _021ED6FC
	ldr r0, _021ED70C ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED6DE:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ED6F6
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ED6F6:
	ldr r0, [r4, #4]
	bl ov01_021EBCA4
_021ED6FC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED700: .word 0x00000F58
_021ED704: .word 0x00007555
_021ED708: .word 0x00007FFF
_021ED70C: .word 0x00000F62
	thumb_func_end ov01_021ED584

	thumb_func_start ov01_021ED710
ov01_021ED710: ; 0x021ED710
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r6, r1, #0
	mov r0, #0x41
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r5, [r1, r0]
	ldr r0, _021ED900 ; =0x00000F58
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r6, r1]
	ldr r4, [r6, r0]
	cmp r1, #5
	bls _021ED72E
	b _021ED8FA
_021ED72E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED73A: ; jump table
	.short _021ED746 - _021ED73A - 2 ; case 0
	.short _021ED79E - _021ED73A - 2 ; case 1
	.short _021ED7A8 - _021ED73A - 2 ; case 2
	.short _021ED800 - _021ED73A - 2 ; case 3
	.short _021ED81A - _021ED73A - 2 ; case 4
	.short _021ED8F4 - _021ED73A - 2 ; case 5
_021ED746:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	bl ov01_02203EA0
	ldr r1, _021ED904 ; =0x0000062C
	mov r3, #0
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r5, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #0x2c
	sub r0, r1, #1
_021ED77A:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED77A
	ldr r0, [r5, #0x4c]
	add r1, sp, #0x2c
	bl ov01_021EA8C4
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, _021ED908 ; =0x00000F62
	mov r1, #1
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED79E:
	mov r1, #3
	add r0, #0xa
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED7A8:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	bl ov01_02203EA0
	ldr r1, _021ED904 ; =0x0000062C
	mov r3, #0
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r5, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #0xc
	sub r0, r1, #1
_021ED7DC:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED7DC
	ldr r0, [r5, #0x4c]
	add r1, sp, #0xc
	bl ov01_021EA8C4
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, _021ED908 ; =0x00000F62
	mov r1, #3
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED800:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r6, r1]
	cmp r1, #5
	bne _021ED8FA
	ldr r1, _021ED90C ; =0x00000632
	mov r2, #0
	strh r2, [r4, r1]
	mov r1, #4
	add r0, #0xa
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED81A:
	ldr r0, _021ED90C ; =0x00000632
	ldrh r1, [r4, r0]
	cmp r1, #3
	bhi _021ED8FA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED82E: ; jump table
	.short _021ED836 - _021ED82E - 2 ; case 0
	.short _021ED85A - _021ED82E - 2 ; case 1
	.short _021ED884 - _021ED82E - 2 ; case 2
	.short _021ED898 - _021ED82E - 2 ; case 3
_021ED836:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021ED910 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, _021ED90C ; =0x00000632
	add sp, #0x4c
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021ED85A:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021ED8FA
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _021ED910 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, _021ED90C ; =0x00000632
	add sp, #0x4c
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021ED884:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021ED8FA
	ldr r0, _021ED90C ; =0x00000632
	add sp, #0x4c
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021ED898:
	sub r1, r0, #2
	ldrh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	sub r0, r0, #2
	ldrh r0, [r4, r0]
	bl _dfltu
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021ED914 ; =0x40080000
	mov r0, #0
	bl _dmul
	ldr r3, _021ED918 ; =0x40380000
	mov r2, #0
	bl _ddiv
	add r3, r1, #0
	add r2, r0, #0
	ldr r1, _021ED91C ; =0x3FF00000
	mov r0, #0
	bl _dadd
	bl _d2f
	add r5, r0, #0
	ldr r0, _021ED904 ; =0x0000062C
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl ov01_02203F2C
	add r0, r5, #0
	bl _f2d
	ldr r3, _021ED920 ; =0x40100000
	mov r2, #0
	bl _dgeq
	blo _021ED8FA
	ldr r0, _021ED908 ; =0x00000F62
	mov r1, #5
	add sp, #0x4c
	strh r1, [r6, r0]
	pop {r3, r4, r5, r6, pc}
_021ED8F4:
	ldr r0, [r6, #4]
	bl ov01_021EBCA4
_021ED8FA:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_021ED900: .word 0x00000F58
_021ED904: .word 0x0000062C
_021ED908: .word 0x00000F62
_021ED90C: .word 0x00000632
_021ED910: .word 0x00007FFF
_021ED914: .word 0x40080000
_021ED918: .word 0x40380000
_021ED91C: .word 0x3FF00000
_021ED920: .word 0x40100000
	thumb_func_end ov01_021ED710

	thumb_func_start ov01_021ED924
ov01_021ED924: ; 0x021ED924
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r5, r1, #0
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r4, [r1, r0]
	ldr r0, _021EDA40 ; =0x00000F58
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r5, r1]
	ldr r6, [r5, r0]
	cmp r1, #5
	bhi _021EDA3A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED94C: ; jump table
	.short _021ED958 - _021ED94C - 2 ; case 0
	.short _021ED9B2 - _021ED94C - 2 ; case 1
	.short _021ED9BC - _021ED94C - 2 ; case 2
	.short _021EDA16 - _021ED94C - 2 ; case 3
	.short _021EDA2A - _021ED94C - 2 ; case 4
	.short _021EDA34 - _021ED94C - 2 ; case 5
_021ED958:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	bl ov01_02203EA0
	ldr r1, _021EDA44 ; =0x0000062C
	mov r3, #0
	str r0, [r6, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r4, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #0x28
	sub r0, r1, #1
_021ED98C:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED98C
	ldr r0, [r4, #0x4c]
	add r1, sp, #0x28
	bl ov01_021EA8C4
	ldr r0, _021EDA44 ; =0x0000062C
	ldr r1, _021EDA48 ; =0x40800000
	ldr r0, [r6, r0]
	bl ov01_02203F2C
	ldr r0, _021EDA4C ; =0x00000F62
	mov r1, #1
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021ED9B2:
	mov r1, #3
	add r0, #0xa
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021ED9BC:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	bl ov01_02203EA0
	ldr r1, _021EDA44 ; =0x0000062C
	mov r3, #0
	str r0, [r6, r1]
	mov r0, #0xa
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r4, #0x4c]
	sub r1, r3, #1
	mov r2, #1
	bl ov01_021EA864
	mov r1, #0
	mov r2, #0
	ldr r0, [r4, #0x4c]
	mvn r1, r1
	add r3, r2, #0
	bl ov01_021EA89C
	mov r1, #0
	add r2, sp, #8
	sub r0, r1, #1
_021ED9F0:
	add r1, r1, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #0x20
	blt _021ED9F0
	ldr r0, [r4, #0x4c]
	add r1, sp, #8
	bl ov01_021EA8C4
	ldr r0, _021EDA44 ; =0x0000062C
	ldr r1, _021EDA48 ; =0x40800000
	ldr r0, [r6, r0]
	bl ov01_02203F2C
	ldr r0, _021EDA4C ; =0x00000F62
	mov r1, #3
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021EDA16:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r5, r1]
	cmp r1, #5
	bne _021EDA3A
	mov r1, #4
	add r0, #0xa
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021EDA2A:
	mov r1, #5
	add r0, #0xa
	add sp, #0x48
	strh r1, [r5, r0]
	pop {r4, r5, r6, pc}
_021EDA34:
	ldr r0, [r5, #4]
	bl ov01_021EBCA4
_021EDA3A:
	add sp, #0x48
	pop {r4, r5, r6, pc}
	nop
_021EDA40: .word 0x00000F58
_021EDA44: .word 0x0000062C
_021EDA48: .word 0x40800000
_021EDA4C: .word 0x00000F62
	thumb_func_end ov01_021ED924

