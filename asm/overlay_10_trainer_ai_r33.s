	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CB80
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221CB80
ov10_0221CB80: ; 0x0221CB80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	cmp r0, #8
	bls _0221CB9A
	b _0221CCA4
_0221CB9A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221CBA6: ; jump table
	.short _0221CBCE - _0221CBA6 - 2 ; case 0
	.short _0221CBB8 - _0221CBA6 - 2 ; case 1
	.short _0221CBFC - _0221CBA6 - 2 ; case 2
	.short _0221CBE6 - _0221CBA6 - 2 ; case 3
	.short _0221CC14 - _0221CBA6 - 2 ; case 4
	.short _0221CC46 - _0221CBA6 - 2 ; case 5
	.short _0221CC28 - _0221CBA6 - 2 ; case 6
	.short _0221CC84 - _0221CBA6 - 2 ; case 7
	.short _0221CC66 - _0221CBA6 - 2 ; case 8
_0221CBB8:
	ldr r1, _0221CCAC ; =0x000003CF
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CBCE:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CBE6:
	ldr r1, _0221CCAC ; =0x000003CF
	add r0, r4, #0
	ldrb r1, [r4, r1]
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CBFC:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CC14:
	ldr r0, _0221CCB0 ; =0x00000356
	ldrh r1, [r4, r0]
	lsl r1, r1, #4
	add r2, r4, r1
	add r1, r0, #0
	add r1, #0x8c
	ldrb r1, [r2, r1]
	add r0, r0, #6
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0221CC28:
	ldr r1, _0221CCAC ; =0x000003CF
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CC46:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CC66:
	ldr r1, _0221CCAC ; =0x000003CF
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CC84:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	add r0, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
_0221CCA4:
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
	nop
_0221CCAC: .word 0x000003CF
_0221CCB0: .word 0x00000356
	thumb_func_end ov10_0221CB80

