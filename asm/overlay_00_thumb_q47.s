	.include "macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6D7C
	.extern _0221A680
	.extern ov00_021E6240
	.extern ov00_021E6428
	.extern ov00_021E6484
	.extern ov00_021E6554
	.extern ov00_021E6ED8
	.extern ov00_021E6FBC
	.extern ov00_021E6FE0
	.extern ov00_021E7300
	.extern ov00_021E7314

	.text

	.text
	thumb_func_start ov00_021E6D7C
ov00_021E6D7C: ; 0x021E6D7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov00_021E7314
	cmp r0, #0
	beq _021E6D92
	mov r0, #3
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E6D92:
	ldr r1, _021E6E84 ; =_0221A680
	ldr r0, _021E6E88 ; =0x00001070
	ldr r2, [r1]
	ldr r3, [r2, r0]
	cmp r3, #4
	beq _021E6DC2
	add r3, r0, #0
	add r3, #0x5c
	ldr r3, [r2, r3]
	add r4, r3, #1
	add r3, r0, #0
	add r3, #0x5c
	str r4, [r2, r3]
	ldr r1, [r1]
	add r0, #0x5c
	ldr r0, [r1, r0]
	cmp r0, #0x78
	ble _021E6DBC
	mov r0, #2
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E6DBC:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E6DC2:
	bl ov00_021E7300
	ldr r2, _021E6E84 ; =_0221A680
	ldr r1, _021E6E8C ; =0x000010D8
	ldr r0, [r2]
	mov r3, #0
	str r3, [r0, r1]
	add r0, r1, #0
	ldr r3, [r2]
	mov r6, #1
	add r0, #0xd
	strb r6, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2]
	sub r0, #0x44
	str r5, [r3, r0]
	sub r1, #0x5c
	ldr r0, [r2]
	cmp r7, #0
	str r4, [r0, r1]
	beq _021E6DEE
	mov r4, #2
_021E6DEE:
	ldr r0, _021E6E84 ; =_0221A680
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _021E6E90 ; =0x000010A0
	cmp r5, #0
	str r2, [r1, r0]
	bge _021E6E12
	lsl r0, r4, #0x18
	mov r2, #0
	ldr r1, _021E6E94 ; =ov00_021E6ED8
	ldr r3, _021E6E98 ; =ov00_021E6FE0
	lsr r0, r0, #0x18
	str r2, [sp]
	bl DWC_SetupGameServer
	mov r3, #1
	ldr r1, _021E6E84 ; =_0221A680
	b _021E6E24
_021E6E12:
	ldr r1, _021E6E9C ; =ov00_021E6FBC
	mov r2, #0
	ldr r3, _021E6E98 ; =ov00_021E6FE0
	add r0, r5, #0
	str r2, [sp]
	bl DWC_ConnectToGameServerAsync
	ldr r1, _021E6E84 ; =_0221A680
	mov r3, #2
_021E6E24:
	ldr r2, [r1]
	ldr r1, _021E6EA0 ; =0x00001074
	cmp r0, #0
	str r3, [r2, r1]
	ldr r0, _021E6EA4 ; =0x000010CC
	bne _021E6E4E
	ldr r1, _021E6E84 ; =_0221A680
	ldr r3, [r1]
	ldr r2, [r3, r0]
	add r2, r2, #1
	str r2, [r3, r0]
	ldr r1, [r1]
	ldr r0, [r1, r0]
	cmp r0, #0x78
	ble _021E6E48
	mov r0, #2
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E6E48:
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E6E4E:
	ldr r1, _021E6E84 ; =_0221A680
	mov r3, #0
	ldr r2, [r1]
	str r3, [r2, r0]
	ldr r1, [r1]
	mov r2, #5
	sub r0, #0x5c
	str r2, [r1, r0]
	ldr r0, _021E6EA8 ; =ov00_021E6428
	bl DWC_SetUserSendCallback
	ldr r0, _021E6EAC ; =ov00_021E6484
	bl DWC_SetUserRecvCallback
	ldr r0, _021E6EB0 ; =ov00_021E6554
	mov r1, #0
	bl DWC_SetConnectionClosedCallback
	ldr r0, _021E6EB4 ; =ov00_021E6240
	bl DWC_SetUserRecvTimeoutCallback
	ldr r1, _021E6E84 ; =_0221A680
	mov r0, #0
	ldr r2, [r1]
	ldr r1, _021E6EB8 ; =0x00001078
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6E84: .word _0221A680
_021E6E88: .word 0x00001070
_021E6E8C: .word 0x000010D8
_021E6E90: .word 0x000010A0
_021E6E94: .word ov00_021E6ED8
_021E6E98: .word ov00_021E6FE0
_021E6E9C: .word ov00_021E6FBC
_021E6EA0: .word 0x00001074
_021E6EA4: .word 0x000010CC
_021E6EA8: .word ov00_021E6428
_021E6EAC: .word ov00_021E6484
_021E6EB0: .word ov00_021E6554
_021E6EB4: .word ov00_021E6240
_021E6EB8: .word 0x00001078
	thumb_func_end ov00_021E6D7C

