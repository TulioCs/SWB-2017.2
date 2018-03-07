
ctarget: formato do arquivo elf64-x86-64


Desmontagem da seção .init:

0000000000400e98 <_init>:
  400e98:	48 83 ec 08          	sub    $0x8,%rsp
  400e9c:	48 8b 05 45 41 20 00 	mov    0x204145(%rip),%rax        # 604fe8 <__gmon_start__>
  400ea3:	48 85 c0             	test   %rax,%rax
  400ea6:	74 05                	je     400ead <_init+0x15>
  400ea8:	e8 63 02 00 00       	callq  401110 <.plt.got>
  400ead:	e8 9e 03 00 00       	callq  401250 <frame_dummy>
  400eb2:	e8 39 27 00 00       	callq  4035f0 <__do_global_ctors_aux>
  400eb7:	48 83 c4 08          	add    $0x8,%rsp
  400ebb:	c3                   	retq   

Desmontagem da seção .plt:

0000000000400ec0 <.plt>:
  400ec0:	ff 35 42 41 20 00    	pushq  0x204142(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ec6:	ff 25 44 41 20 00    	jmpq   *0x204144(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ed0 <strcasecmp@plt>:
  400ed0:	ff 25 42 41 20 00    	jmpq   *0x204142(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400ed6:	68 00 00 00 00       	pushq  $0x0
  400edb:	e9 e0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400ee0 <__errno_location@plt>:
  400ee0:	ff 25 3a 41 20 00    	jmpq   *0x20413a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400ee6:	68 01 00 00 00       	pushq  $0x1
  400eeb:	e9 d0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400ef0 <srandom@plt>:
  400ef0:	ff 25 32 41 20 00    	jmpq   *0x204132(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400ef6:	68 02 00 00 00       	pushq  $0x2
  400efb:	e9 c0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f00 <strncmp@plt>:
  400f00:	ff 25 2a 41 20 00    	jmpq   *0x20412a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400f06:	68 03 00 00 00       	pushq  $0x3
  400f0b:	e9 b0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f10 <strcpy@plt>:
  400f10:	ff 25 22 41 20 00    	jmpq   *0x204122(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400f16:	68 04 00 00 00       	pushq  $0x4
  400f1b:	e9 a0 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f20 <puts@plt>:
  400f20:	ff 25 1a 41 20 00    	jmpq   *0x20411a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400f26:	68 05 00 00 00       	pushq  $0x5
  400f2b:	e9 90 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f30 <write@plt>:
  400f30:	ff 25 12 41 20 00    	jmpq   *0x204112(%rip)        # 605048 <write@GLIBC_2.2.5>
  400f36:	68 06 00 00 00       	pushq  $0x6
  400f3b:	e9 80 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f40 <__stack_chk_fail@plt>:
  400f40:	ff 25 0a 41 20 00    	jmpq   *0x20410a(%rip)        # 605050 <__stack_chk_fail@GLIBC_2.4>
  400f46:	68 07 00 00 00       	pushq  $0x7
  400f4b:	e9 70 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f50 <mmap@plt>:
  400f50:	ff 25 02 41 20 00    	jmpq   *0x204102(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400f56:	68 08 00 00 00       	pushq  $0x8
  400f5b:	e9 60 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f60 <printf@plt>:
  400f60:	ff 25 fa 40 20 00    	jmpq   *0x2040fa(%rip)        # 605060 <printf@GLIBC_2.2.5>
  400f66:	68 09 00 00 00       	pushq  $0x9
  400f6b:	e9 50 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f70 <memset@plt>:
  400f70:	ff 25 f2 40 20 00    	jmpq   *0x2040f2(%rip)        # 605068 <memset@GLIBC_2.2.5>
  400f76:	68 0a 00 00 00       	pushq  $0xa
  400f7b:	e9 40 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f80 <alarm@plt>:
  400f80:	ff 25 ea 40 20 00    	jmpq   *0x2040ea(%rip)        # 605070 <alarm@GLIBC_2.2.5>
  400f86:	68 0b 00 00 00       	pushq  $0xb
  400f8b:	e9 30 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400f90 <close@plt>:
  400f90:	ff 25 e2 40 20 00    	jmpq   *0x2040e2(%rip)        # 605078 <close@GLIBC_2.2.5>
  400f96:	68 0c 00 00 00       	pushq  $0xc
  400f9b:	e9 20 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400fa0 <read@plt>:
  400fa0:	ff 25 da 40 20 00    	jmpq   *0x2040da(%rip)        # 605080 <read@GLIBC_2.2.5>
  400fa6:	68 0d 00 00 00       	pushq  $0xd
  400fab:	e9 10 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400fb0 <__libc_start_main@plt>:
  400fb0:	ff 25 d2 40 20 00    	jmpq   *0x2040d2(%rip)        # 605088 <__libc_start_main@GLIBC_2.2.5>
  400fb6:	68 0e 00 00 00       	pushq  $0xe
  400fbb:	e9 00 ff ff ff       	jmpq   400ec0 <.plt>

0000000000400fc0 <signal@plt>:
  400fc0:	ff 25 ca 40 20 00    	jmpq   *0x2040ca(%rip)        # 605090 <signal@GLIBC_2.2.5>
  400fc6:	68 0f 00 00 00       	pushq  $0xf
  400fcb:	e9 f0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000400fd0 <gethostbyname@plt>:
  400fd0:	ff 25 c2 40 20 00    	jmpq   *0x2040c2(%rip)        # 605098 <gethostbyname@GLIBC_2.2.5>
  400fd6:	68 10 00 00 00       	pushq  $0x10
  400fdb:	e9 e0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000400fe0 <__memmove_chk@plt>:
  400fe0:	ff 25 ba 40 20 00    	jmpq   *0x2040ba(%rip)        # 6050a0 <__memmove_chk@GLIBC_2.3.4>
  400fe6:	68 11 00 00 00       	pushq  $0x11
  400feb:	e9 d0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000400ff0 <fprintf@plt>:
  400ff0:	ff 25 b2 40 20 00    	jmpq   *0x2040b2(%rip)        # 6050a8 <fprintf@GLIBC_2.2.5>
  400ff6:	68 12 00 00 00       	pushq  $0x12
  400ffb:	e9 c0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401000 <strtol@plt>:
  401000:	ff 25 aa 40 20 00    	jmpq   *0x2040aa(%rip)        # 6050b0 <strtol@GLIBC_2.2.5>
  401006:	68 13 00 00 00       	pushq  $0x13
  40100b:	e9 b0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401010 <memcpy@plt>:
  401010:	ff 25 a2 40 20 00    	jmpq   *0x2040a2(%rip)        # 6050b8 <memcpy@GLIBC_2.14>
  401016:	68 14 00 00 00       	pushq  $0x14
  40101b:	e9 a0 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401020 <time@plt>:
  401020:	ff 25 9a 40 20 00    	jmpq   *0x20409a(%rip)        # 6050c0 <time@GLIBC_2.2.5>
  401026:	68 15 00 00 00       	pushq  $0x15
  40102b:	e9 90 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401030 <random@plt>:
  401030:	ff 25 92 40 20 00    	jmpq   *0x204092(%rip)        # 6050c8 <random@GLIBC_2.2.5>
  401036:	68 16 00 00 00       	pushq  $0x16
  40103b:	e9 80 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401040 <_IO_getc@plt>:
  401040:	ff 25 8a 40 20 00    	jmpq   *0x20408a(%rip)        # 6050d0 <_IO_getc@GLIBC_2.2.5>
  401046:	68 17 00 00 00       	pushq  $0x17
  40104b:	e9 70 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401050 <__isoc99_sscanf@plt>:
  401050:	ff 25 82 40 20 00    	jmpq   *0x204082(%rip)        # 6050d8 <__isoc99_sscanf@GLIBC_2.7>
  401056:	68 18 00 00 00       	pushq  $0x18
  40105b:	e9 60 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401060 <munmap@plt>:
  401060:	ff 25 7a 40 20 00    	jmpq   *0x20407a(%rip)        # 6050e0 <munmap@GLIBC_2.2.5>
  401066:	68 19 00 00 00       	pushq  $0x19
  40106b:	e9 50 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401070 <__printf_chk@plt>:
  401070:	ff 25 72 40 20 00    	jmpq   *0x204072(%rip)        # 6050e8 <__printf_chk@GLIBC_2.3.4>
  401076:	68 1a 00 00 00       	pushq  $0x1a
  40107b:	e9 40 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401080 <fopen@plt>:
  401080:	ff 25 6a 40 20 00    	jmpq   *0x20406a(%rip)        # 6050f0 <fopen@GLIBC_2.2.5>
  401086:	68 1b 00 00 00       	pushq  $0x1b
  40108b:	e9 30 fe ff ff       	jmpq   400ec0 <.plt>

0000000000401090 <getopt@plt>:
  401090:	ff 25 62 40 20 00    	jmpq   *0x204062(%rip)        # 6050f8 <getopt@GLIBC_2.2.5>
  401096:	68 1c 00 00 00       	pushq  $0x1c
  40109b:	e9 20 fe ff ff       	jmpq   400ec0 <.plt>

00000000004010a0 <strtoul@plt>:
  4010a0:	ff 25 5a 40 20 00    	jmpq   *0x20405a(%rip)        # 605100 <strtoul@GLIBC_2.2.5>
  4010a6:	68 1d 00 00 00       	pushq  $0x1d
  4010ab:	e9 10 fe ff ff       	jmpq   400ec0 <.plt>

00000000004010b0 <gethostname@plt>:
  4010b0:	ff 25 52 40 20 00    	jmpq   *0x204052(%rip)        # 605108 <gethostname@GLIBC_2.2.5>
  4010b6:	68 1e 00 00 00       	pushq  $0x1e
  4010bb:	e9 00 fe ff ff       	jmpq   400ec0 <.plt>

00000000004010c0 <exit@plt>:
  4010c0:	ff 25 4a 40 20 00    	jmpq   *0x20404a(%rip)        # 605110 <exit@GLIBC_2.2.5>
  4010c6:	68 1f 00 00 00       	pushq  $0x1f
  4010cb:	e9 f0 fd ff ff       	jmpq   400ec0 <.plt>

00000000004010d0 <connect@plt>:
  4010d0:	ff 25 42 40 20 00    	jmpq   *0x204042(%rip)        # 605118 <connect@GLIBC_2.2.5>
  4010d6:	68 20 00 00 00       	pushq  $0x20
  4010db:	e9 e0 fd ff ff       	jmpq   400ec0 <.plt>

00000000004010e0 <__fprintf_chk@plt>:
  4010e0:	ff 25 3a 40 20 00    	jmpq   *0x20403a(%rip)        # 605120 <__fprintf_chk@GLIBC_2.3.4>
  4010e6:	68 21 00 00 00       	pushq  $0x21
  4010eb:	e9 d0 fd ff ff       	jmpq   400ec0 <.plt>

00000000004010f0 <__sprintf_chk@plt>:
  4010f0:	ff 25 32 40 20 00    	jmpq   *0x204032(%rip)        # 605128 <__sprintf_chk@GLIBC_2.3.4>
  4010f6:	68 22 00 00 00       	pushq  $0x22
  4010fb:	e9 c0 fd ff ff       	jmpq   400ec0 <.plt>

0000000000401100 <socket@plt>:
  401100:	ff 25 2a 40 20 00    	jmpq   *0x20402a(%rip)        # 605130 <socket@GLIBC_2.2.5>
  401106:	68 23 00 00 00       	pushq  $0x23
  40110b:	e9 b0 fd ff ff       	jmpq   400ec0 <.plt>

Desmontagem da seção .plt.got:

0000000000401110 <.plt.got>:
  401110:	ff 25 d2 3e 20 00    	jmpq   *0x203ed2(%rip)        # 604fe8 <__gmon_start__>
  401116:	66 90                	xchg   %ax,%ax

Desmontagem da seção .text:

0000000000401120 <_start>:
  401120:	31 ed                	xor    %ebp,%ebp
  401122:	49 89 d1             	mov    %rdx,%r9
  401125:	5e                   	pop    %rsi
  401126:	48 89 e2             	mov    %rsp,%rdx
  401129:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40112d:	50                   	push   %rax
  40112e:	54                   	push   %rsp
  40112f:	49 c7 c0 e0 35 40 00 	mov    $0x4035e0,%r8
  401136:	48 c7 c1 70 35 40 00 	mov    $0x403570,%rcx
  40113d:	48 c7 c7 50 14 40 00 	mov    $0x401450,%rdi
  401144:	e8 67 fe ff ff       	callq  400fb0 <__libc_start_main@plt>
  401149:	f4                   	hlt    
  40114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401150 <deregister_tm_clones>:
  401150:	48 8d 3d 59 43 20 00 	lea    0x204359(%rip),%rdi        # 6054b0 <__TMC_END__>
  401157:	48 8d 05 59 43 20 00 	lea    0x204359(%rip),%rax        # 6054b7 <__TMC_END__+0x7>
  40115e:	55                   	push   %rbp
  40115f:	48 29 f8             	sub    %rdi,%rax
  401162:	48 89 e5             	mov    %rsp,%rbp
  401165:	48 83 f8 0e          	cmp    $0xe,%rax
  401169:	76 15                	jbe    401180 <deregister_tm_clones+0x30>
  40116b:	48 8b 05 6e 3e 20 00 	mov    0x203e6e(%rip),%rax        # 604fe0 <_ITM_deregisterTMCloneTable>
  401172:	48 85 c0             	test   %rax,%rax
  401175:	74 09                	je     401180 <deregister_tm_clones+0x30>
  401177:	5d                   	pop    %rbp
  401178:	ff e0                	jmpq   *%rax
  40117a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401180:	5d                   	pop    %rbp
  401181:	c3                   	retq   
  401182:	0f 1f 40 00          	nopl   0x0(%rax)
  401186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40118d:	00 00 00 

0000000000401190 <register_tm_clones>:
  401190:	48 8d 3d 19 43 20 00 	lea    0x204319(%rip),%rdi        # 6054b0 <__TMC_END__>
  401197:	48 8d 35 12 43 20 00 	lea    0x204312(%rip),%rsi        # 6054b0 <__TMC_END__>
  40119e:	55                   	push   %rbp
  40119f:	48 29 fe             	sub    %rdi,%rsi
  4011a2:	48 89 e5             	mov    %rsp,%rbp
  4011a5:	48 c1 fe 03          	sar    $0x3,%rsi
  4011a9:	48 89 f0             	mov    %rsi,%rax
  4011ac:	48 c1 e8 3f          	shr    $0x3f,%rax
  4011b0:	48 01 c6             	add    %rax,%rsi
  4011b3:	48 d1 fe             	sar    %rsi
  4011b6:	74 18                	je     4011d0 <register_tm_clones+0x40>
  4011b8:	48 8b 05 39 3e 20 00 	mov    0x203e39(%rip),%rax        # 604ff8 <_ITM_registerTMCloneTable>
  4011bf:	48 85 c0             	test   %rax,%rax
  4011c2:	74 0c                	je     4011d0 <register_tm_clones+0x40>
  4011c4:	5d                   	pop    %rbp
  4011c5:	ff e0                	jmpq   *%rax
  4011c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4011ce:	00 00 
  4011d0:	5d                   	pop    %rbp
  4011d1:	c3                   	retq   
  4011d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4011d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011dd:	00 00 00 

00000000004011e0 <__do_global_dtors_aux>:
  4011e0:	80 3d 01 43 20 00 00 	cmpb   $0x0,0x204301(%rip)        # 6054e8 <completed.6943>
  4011e7:	75 62                	jne    40124b <__do_global_dtors_aux+0x6b>
  4011e9:	55                   	push   %rbp
  4011ea:	48 8d 15 47 3c 20 00 	lea    0x203c47(%rip),%rdx        # 604e38 <__DTOR_LIST__>
  4011f1:	48 8b 05 f8 42 20 00 	mov    0x2042f8(%rip),%rax        # 6054f0 <dtor_idx.6945>
  4011f8:	48 89 e5             	mov    %rsp,%rbp
  4011fb:	41 54                	push   %r12
  4011fd:	53                   	push   %rbx
  4011fe:	48 8d 1d 3b 3c 20 00 	lea    0x203c3b(%rip),%rbx        # 604e40 <__DTOR_END__>
  401205:	4c 8d 25 2c 3c 20 00 	lea    0x203c2c(%rip),%r12        # 604e38 <__DTOR_LIST__>
  40120c:	48 29 d3             	sub    %rdx,%rbx
  40120f:	48 c1 fb 03          	sar    $0x3,%rbx
  401213:	48 83 eb 01          	sub    $0x1,%rbx
  401217:	48 39 d8             	cmp    %rbx,%rax
  40121a:	73 1f                	jae    40123b <__do_global_dtors_aux+0x5b>
  40121c:	0f 1f 40 00          	nopl   0x0(%rax)
  401220:	48 83 c0 01          	add    $0x1,%rax
  401224:	48 89 05 c5 42 20 00 	mov    %rax,0x2042c5(%rip)        # 6054f0 <dtor_idx.6945>
  40122b:	41 ff 14 c4          	callq  *(%r12,%rax,8)
  40122f:	48 8b 05 ba 42 20 00 	mov    0x2042ba(%rip),%rax        # 6054f0 <dtor_idx.6945>
  401236:	48 39 d8             	cmp    %rbx,%rax
  401239:	72 e5                	jb     401220 <__do_global_dtors_aux+0x40>
  40123b:	e8 10 ff ff ff       	callq  401150 <deregister_tm_clones>
  401240:	5b                   	pop    %rbx
  401241:	41 5c                	pop    %r12
  401243:	5d                   	pop    %rbp
  401244:	c6 05 9d 42 20 00 01 	movb   $0x1,0x20429d(%rip)        # 6054e8 <completed.6943>
  40124b:	f3 c3                	repz retq 
  40124d:	0f 1f 00             	nopl   (%rax)

0000000000401250 <frame_dummy>:
  401250:	48 8d 3d f1 3b 20 00 	lea    0x203bf1(%rip),%rdi        # 604e48 <__JCR_END__>
  401257:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  40125b:	75 0b                	jne    401268 <frame_dummy+0x18>
  40125d:	e9 2e ff ff ff       	jmpq   401190 <register_tm_clones>
  401262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401268:	48 8b 05 81 3d 20 00 	mov    0x203d81(%rip),%rax        # 604ff0 <_Jv_RegisterClasses>
  40126f:	48 85 c0             	test   %rax,%rax
  401272:	74 e9                	je     40125d <frame_dummy+0xd>
  401274:	55                   	push   %rbp
  401275:	48 89 e5             	mov    %rsp,%rbp
  401278:	ff d0                	callq  *%rax
  40127a:	5d                   	pop    %rbp
  40127b:	e9 10 ff ff ff       	jmpq   401190 <register_tm_clones>

0000000000401280 <usage>:
  401280:	48 83 ec 08          	sub    $0x8,%rsp
  401284:	48 89 fe             	mov    %rdi,%rsi
  401287:	83 3d 9a 42 20 00 00 	cmpl   $0x0,0x20429a(%rip)        # 605528 <is_checker>
  40128e:	74 39                	je     4012c9 <usage+0x49>
  401290:	bf 48 36 40 00       	mov    $0x403648,%edi
  401295:	b8 00 00 00 00       	mov    $0x0,%eax
  40129a:	e8 c1 fc ff ff       	callq  400f60 <printf@plt>
  40129f:	bf 80 36 40 00       	mov    $0x403680,%edi
  4012a4:	e8 77 fc ff ff       	callq  400f20 <puts@plt>
  4012a9:	bf f8 37 40 00       	mov    $0x4037f8,%edi
  4012ae:	e8 6d fc ff ff       	callq  400f20 <puts@plt>
  4012b3:	bf a8 36 40 00       	mov    $0x4036a8,%edi
  4012b8:	e8 63 fc ff ff       	callq  400f20 <puts@plt>
  4012bd:	bf 12 38 40 00       	mov    $0x403812,%edi
  4012c2:	e8 59 fc ff ff       	callq  400f20 <puts@plt>
  4012c7:	eb 2d                	jmp    4012f6 <usage+0x76>
  4012c9:	bf 2e 38 40 00       	mov    $0x40382e,%edi
  4012ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d3:	e8 88 fc ff ff       	callq  400f60 <printf@plt>
  4012d8:	bf d0 36 40 00       	mov    $0x4036d0,%edi
  4012dd:	e8 3e fc ff ff       	callq  400f20 <puts@plt>
  4012e2:	bf f8 36 40 00       	mov    $0x4036f8,%edi
  4012e7:	e8 34 fc ff ff       	callq  400f20 <puts@plt>
  4012ec:	bf 4c 38 40 00       	mov    $0x40384c,%edi
  4012f1:	e8 2a fc ff ff       	callq  400f20 <puts@plt>
  4012f6:	bf 00 00 00 00       	mov    $0x0,%edi
  4012fb:	e8 c0 fd ff ff       	callq  4010c0 <exit@plt>

0000000000401300 <initialize_target>:
  401300:	55                   	push   %rbp
  401301:	53                   	push   %rbx
  401302:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  401309:	89 f5                	mov    %esi,%ebp
  40130b:	89 3d 07 42 20 00    	mov    %edi,0x204207(%rip)        # 605518 <check_level>
  401311:	8b 3d 51 3e 20 00    	mov    0x203e51(%rip),%edi        # 605168 <target_id>
  401317:	e8 2a 22 00 00       	callq  403546 <gencookie>
  40131c:	89 05 02 42 20 00    	mov    %eax,0x204202(%rip)        # 605524 <cookie>
  401322:	89 c7                	mov    %eax,%edi
  401324:	e8 1d 22 00 00       	callq  403546 <gencookie>
  401329:	89 05 f1 41 20 00    	mov    %eax,0x2041f1(%rip)        # 605520 <authkey>
  40132f:	8b 05 33 3e 20 00    	mov    0x203e33(%rip),%eax        # 605168 <target_id>
  401335:	8d 78 01             	lea    0x1(%rax),%edi
  401338:	e8 b3 fb ff ff       	callq  400ef0 <srandom@plt>
  40133d:	e8 ee fc ff ff       	callq  401030 <random@plt>
  401342:	89 c7                	mov    %eax,%edi
  401344:	e8 ca 02 00 00       	callq  401613 <scramble>
  401349:	89 c3                	mov    %eax,%ebx
  40134b:	85 ed                	test   %ebp,%ebp
  40134d:	74 18                	je     401367 <initialize_target+0x67>
  40134f:	bf 00 00 00 00       	mov    $0x0,%edi
  401354:	e8 c7 fc ff ff       	callq  401020 <time@plt>
  401359:	89 c7                	mov    %eax,%edi
  40135b:	e8 90 fb ff ff       	callq  400ef0 <srandom@plt>
  401360:	e8 cb fc ff ff       	callq  401030 <random@plt>
  401365:	eb 05                	jmp    40136c <initialize_target+0x6c>
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	01 c3                	add    %eax,%ebx
  40136e:	0f b7 db             	movzwl %bx,%ebx
  401371:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  401378:	89 c0                	mov    %eax,%eax
  40137a:	48 89 05 1f 41 20 00 	mov    %rax,0x20411f(%rip)        # 6054a0 <buf_offset>
  401381:	c6 05 c0 4d 20 00 63 	movb   $0x63,0x204dc0(%rip)        # 606148 <target_prefix>
  401388:	83 3d 19 41 20 00 00 	cmpl   $0x0,0x204119(%rip)        # 6054a8 <notify>
  40138f:	0f 84 b1 00 00 00    	je     401446 <initialize_target+0x146>
  401395:	83 3d 8c 41 20 00 00 	cmpl   $0x0,0x20418c(%rip)        # 605528 <is_checker>
  40139c:	0f 85 a4 00 00 00    	jne    401446 <initialize_target+0x146>
  4013a2:	be 00 01 00 00       	mov    $0x100,%esi
  4013a7:	48 89 e7             	mov    %rsp,%rdi
  4013aa:	e8 01 fd ff ff       	callq  4010b0 <gethostname@plt>
  4013af:	85 c0                	test   %eax,%eax
  4013b1:	74 25                	je     4013d8 <initialize_target+0xd8>
  4013b3:	bf 28 37 40 00       	mov    $0x403728,%edi
  4013b8:	e8 63 fb ff ff       	callq  400f20 <puts@plt>
  4013bd:	bf 08 00 00 00       	mov    $0x8,%edi
  4013c2:	e8 f9 fc ff ff       	callq  4010c0 <exit@plt>
  4013c7:	48 89 e6             	mov    %rsp,%rsi
  4013ca:	e8 01 fb ff ff       	callq  400ed0 <strcasecmp@plt>
  4013cf:	85 c0                	test   %eax,%eax
  4013d1:	74 21                	je     4013f4 <initialize_target+0xf4>
  4013d3:	83 c3 01             	add    $0x1,%ebx
  4013d6:	eb 05                	jmp    4013dd <initialize_target+0xdd>
  4013d8:	bb 00 00 00 00       	mov    $0x0,%ebx
  4013dd:	48 63 c3             	movslq %ebx,%rax
  4013e0:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  4013e7:	00 
  4013e8:	48 85 ff             	test   %rdi,%rdi
  4013eb:	75 da                	jne    4013c7 <initialize_target+0xc7>
  4013ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f2:	eb 05                	jmp    4013f9 <initialize_target+0xf9>
  4013f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4013f9:	85 c0                	test   %eax,%eax
  4013fb:	75 17                	jne    401414 <initialize_target+0x114>
  4013fd:	48 89 e6             	mov    %rsp,%rsi
  401400:	bf 60 37 40 00       	mov    $0x403760,%edi
  401405:	e8 56 fb ff ff       	callq  400f60 <printf@plt>
  40140a:	bf 08 00 00 00       	mov    $0x8,%edi
  40140f:	e8 ac fc ff ff       	callq  4010c0 <exit@plt>
  401414:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40141b:	00 
  40141c:	e8 77 1e 00 00       	callq  403298 <init_driver>
  401421:	85 c0                	test   %eax,%eax
  401423:	79 21                	jns    401446 <initialize_target+0x146>
  401425:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40142c:	00 
  40142d:	bf a0 37 40 00       	mov    $0x4037a0,%edi
  401432:	b8 00 00 00 00       	mov    $0x0,%eax
  401437:	e8 24 fb ff ff       	callq  400f60 <printf@plt>
  40143c:	bf 08 00 00 00       	mov    $0x8,%edi
  401441:	e8 7a fc ff ff       	callq  4010c0 <exit@plt>
  401446:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40144d:	5b                   	pop    %rbx
  40144e:	5d                   	pop    %rbp
  40144f:	c3                   	retq   

0000000000401450 <main>:
  401450:	41 56                	push   %r14
  401452:	41 55                	push   %r13
  401454:	41 54                	push   %r12
  401456:	55                   	push   %rbp
  401457:	53                   	push   %rbx
  401458:	41 89 fc             	mov    %edi,%r12d
  40145b:	48 89 f3             	mov    %rsi,%rbx
  40145e:	be 78 25 40 00       	mov    $0x402578,%esi
  401463:	bf 0b 00 00 00       	mov    $0xb,%edi
  401468:	e8 53 fb ff ff       	callq  400fc0 <signal@plt>
  40146d:	be 24 25 40 00       	mov    $0x402524,%esi
  401472:	bf 07 00 00 00       	mov    $0x7,%edi
  401477:	e8 44 fb ff ff       	callq  400fc0 <signal@plt>
  40147c:	be cc 25 40 00       	mov    $0x4025cc,%esi
  401481:	bf 04 00 00 00       	mov    $0x4,%edi
  401486:	e8 35 fb ff ff       	callq  400fc0 <signal@plt>
  40148b:	83 3d 96 40 20 00 00 	cmpl   $0x0,0x204096(%rip)        # 605528 <is_checker>
  401492:	74 20                	je     4014b4 <main+0x64>
  401494:	be 20 26 40 00       	mov    $0x402620,%esi
  401499:	bf 0e 00 00 00       	mov    $0xe,%edi
  40149e:	e8 1d fb ff ff       	callq  400fc0 <signal@plt>
  4014a3:	bf 05 00 00 00       	mov    $0x5,%edi
  4014a8:	e8 d3 fa ff ff       	callq  400f80 <alarm@plt>
  4014ad:	bd 6a 38 40 00       	mov    $0x40386a,%ebp
  4014b2:	eb 05                	jmp    4014b9 <main+0x69>
  4014b4:	bd 65 38 40 00       	mov    $0x403865,%ebp
  4014b9:	48 8b 05 00 40 20 00 	mov    0x204000(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4014c0:	48 89 05 49 40 20 00 	mov    %rax,0x204049(%rip)        # 605510 <infile>
  4014c7:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4014cd:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4014d3:	e9 b9 00 00 00       	jmpq   401591 <main+0x141>
  4014d8:	83 e8 61             	sub    $0x61,%eax
  4014db:	3c 10                	cmp    $0x10,%al
  4014dd:	0f 87 93 00 00 00    	ja     401576 <main+0x126>
  4014e3:	0f b6 c0             	movzbl %al,%eax
  4014e6:	ff 24 c5 b0 38 40 00 	jmpq   *0x4038b0(,%rax,8)
  4014ed:	48 8b 3b             	mov    (%rbx),%rdi
  4014f0:	e8 8b fd ff ff       	callq  401280 <usage>
  4014f5:	be 2d 3b 40 00       	mov    $0x403b2d,%esi
  4014fa:	48 8b 3d c7 3f 20 00 	mov    0x203fc7(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401501:	e8 7a fb ff ff       	callq  401080 <fopen@plt>
  401506:	48 89 05 03 40 20 00 	mov    %rax,0x204003(%rip)        # 605510 <infile>
  40150d:	48 85 c0             	test   %rax,%rax
  401510:	75 7f                	jne    401591 <main+0x141>
  401512:	48 8b 15 af 3f 20 00 	mov    0x203faf(%rip),%rdx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401519:	be 72 38 40 00       	mov    $0x403872,%esi
  40151e:	48 8b 3d bb 3f 20 00 	mov    0x203fbb(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401525:	e8 c6 fa ff ff       	callq  400ff0 <fprintf@plt>
  40152a:	b8 01 00 00 00       	mov    $0x1,%eax
  40152f:	e9 d6 00 00 00       	jmpq   40160a <main+0x1ba>
  401534:	ba 10 00 00 00       	mov    $0x10,%edx
  401539:	be 00 00 00 00       	mov    $0x0,%esi
  40153e:	48 8b 3d 83 3f 20 00 	mov    0x203f83(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401545:	e8 56 fb ff ff       	callq  4010a0 <strtoul@plt>
  40154a:	41 89 c6             	mov    %eax,%r14d
  40154d:	eb 42                	jmp    401591 <main+0x141>
  40154f:	ba 0a 00 00 00       	mov    $0xa,%edx
  401554:	be 00 00 00 00       	mov    $0x0,%esi
  401559:	48 8b 3d 68 3f 20 00 	mov    0x203f68(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401560:	e8 9b fa ff ff       	callq  401000 <strtol@plt>
  401565:	41 89 c5             	mov    %eax,%r13d
  401568:	eb 27                	jmp    401591 <main+0x141>
  40156a:	c7 05 34 3f 20 00 00 	movl   $0x0,0x203f34(%rip)        # 6054a8 <notify>
  401571:	00 00 00 
  401574:	eb 1b                	jmp    401591 <main+0x141>
  401576:	40 0f be f6          	movsbl %sil,%esi
  40157a:	bf 8f 38 40 00       	mov    $0x40388f,%edi
  40157f:	b8 00 00 00 00       	mov    $0x0,%eax
  401584:	e8 d7 f9 ff ff       	callq  400f60 <printf@plt>
  401589:	48 8b 3b             	mov    (%rbx),%rdi
  40158c:	e8 ef fc ff ff       	callq  401280 <usage>
  401591:	48 89 ea             	mov    %rbp,%rdx
  401594:	48 89 de             	mov    %rbx,%rsi
  401597:	44 89 e7             	mov    %r12d,%edi
  40159a:	e8 f1 fa ff ff       	callq  401090 <getopt@plt>
  40159f:	89 c6                	mov    %eax,%esi
  4015a1:	3c ff                	cmp    $0xff,%al
  4015a3:	0f 85 2f ff ff ff    	jne    4014d8 <main+0x88>
  4015a9:	be 00 00 00 00       	mov    $0x0,%esi
  4015ae:	44 89 ef             	mov    %r13d,%edi
  4015b1:	e8 4a fd ff ff       	callq  401300 <initialize_target>
  4015b6:	83 3d 6b 3f 20 00 00 	cmpl   $0x0,0x203f6b(%rip)        # 605528 <is_checker>
  4015bd:	74 25                	je     4015e4 <main+0x194>
  4015bf:	44 3b 35 5a 3f 20 00 	cmp    0x203f5a(%rip),%r14d        # 605520 <authkey>
  4015c6:	74 1c                	je     4015e4 <main+0x194>
  4015c8:	44 89 f6             	mov    %r14d,%esi
  4015cb:	bf c8 37 40 00       	mov    $0x4037c8,%edi
  4015d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d5:	e8 86 f9 ff ff       	callq  400f60 <printf@plt>
  4015da:	b8 00 00 00 00       	mov    $0x0,%eax
  4015df:	e8 a0 0b 00 00       	callq  402184 <check_fail>
  4015e4:	8b 35 3a 3f 20 00    	mov    0x203f3a(%rip),%esi        # 605524 <cookie>
  4015ea:	bf a2 38 40 00       	mov    $0x4038a2,%edi
  4015ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4015f4:	e8 67 f9 ff ff       	callq  400f60 <printf@plt>
  4015f9:	48 8b 3d a0 3e 20 00 	mov    0x203ea0(%rip),%rdi        # 6054a0 <buf_offset>
  401600:	e8 27 11 00 00       	callq  40272c <stable_launch>
  401605:	b8 00 00 00 00       	mov    $0x0,%eax
  40160a:	5b                   	pop    %rbx
  40160b:	5d                   	pop    %rbp
  40160c:	41 5c                	pop    %r12
  40160e:	41 5d                	pop    %r13
  401610:	41 5e                	pop    %r14
  401612:	c3                   	retq   

0000000000401613 <scramble>:
  401613:	b8 00 00 00 00       	mov    $0x0,%eax
  401618:	eb 11                	jmp    40162b <scramble+0x18>
  40161a:	69 d0 ba 94 00 00    	imul   $0x94ba,%eax,%edx
  401620:	01 fa                	add    %edi,%edx
  401622:	89 c1                	mov    %eax,%ecx
  401624:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  401628:	83 c0 01             	add    $0x1,%eax
  40162b:	83 f8 09             	cmp    $0x9,%eax
  40162e:	76 ea                	jbe    40161a <scramble+0x7>
  401630:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401634:	69 c0 d6 36 00 00    	imul   $0x36d6,%eax,%eax
  40163a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40163e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401642:	69 c0 d4 9c 00 00    	imul   $0x9cd4,%eax,%eax
  401648:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40164c:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401650:	69 c0 3b a4 00 00    	imul   $0xa43b,%eax,%eax
  401656:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40165a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40165e:	69 c0 20 bb 00 00    	imul   $0xbb20,%eax,%eax
  401664:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401668:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40166c:	69 c0 7e b4 00 00    	imul   $0xb47e,%eax,%eax
  401672:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401676:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40167a:	69 c0 29 29 00 00    	imul   $0x2929,%eax,%eax
  401680:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401684:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401688:	69 c0 46 07 00 00    	imul   $0x746,%eax,%eax
  40168e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401692:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401696:	69 c0 01 58 00 00    	imul   $0x5801,%eax,%eax
  40169c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016a0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016a4:	69 c0 d4 f0 00 00    	imul   $0xf0d4,%eax,%eax
  4016aa:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016ae:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016b2:	69 c0 af 2d 00 00    	imul   $0x2daf,%eax,%eax
  4016b8:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016bc:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016c0:	69 c0 d9 b9 00 00    	imul   $0xb9d9,%eax,%eax
  4016c6:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016ca:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016ce:	69 c0 06 36 00 00    	imul   $0x3606,%eax,%eax
  4016d4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016d8:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016dc:	69 c0 88 2a 00 00    	imul   $0x2a88,%eax,%eax
  4016e2:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016e6:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016ea:	69 c0 74 11 00 00    	imul   $0x1174,%eax,%eax
  4016f0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016f4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016f8:	69 c0 af 45 00 00    	imul   $0x45af,%eax,%eax
  4016fe:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401702:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401706:	69 c0 d3 98 00 00    	imul   $0x98d3,%eax,%eax
  40170c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401710:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401714:	69 c0 e3 d6 00 00    	imul   $0xd6e3,%eax,%eax
  40171a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40171e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401722:	69 c0 48 33 00 00    	imul   $0x3348,%eax,%eax
  401728:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40172c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401730:	69 c0 0f eb 00 00    	imul   $0xeb0f,%eax,%eax
  401736:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40173a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40173e:	69 c0 01 35 00 00    	imul   $0x3501,%eax,%eax
  401744:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401748:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40174c:	69 c0 27 98 00 00    	imul   $0x9827,%eax,%eax
  401752:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401756:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40175a:	69 c0 e6 88 00 00    	imul   $0x88e6,%eax,%eax
  401760:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401764:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401768:	69 c0 02 05 00 00    	imul   $0x502,%eax,%eax
  40176e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401772:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401776:	69 c0 07 80 00 00    	imul   $0x8007,%eax,%eax
  40177c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401780:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401784:	69 c0 98 ff 00 00    	imul   $0xff98,%eax,%eax
  40178a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40178e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401792:	69 c0 1c aa 00 00    	imul   $0xaa1c,%eax,%eax
  401798:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40179c:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017a0:	69 c0 89 a6 00 00    	imul   $0xa689,%eax,%eax
  4017a6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017aa:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4017ae:	69 c0 a0 ed 00 00    	imul   $0xeda0,%eax,%eax
  4017b4:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4017b8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017bc:	69 c0 68 9e 00 00    	imul   $0x9e68,%eax,%eax
  4017c2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4017c6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017ca:	69 c0 2a d5 00 00    	imul   $0xd52a,%eax,%eax
  4017d0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017d4:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4017d8:	69 c0 67 32 00 00    	imul   $0x3267,%eax,%eax
  4017de:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4017e2:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4017e6:	69 c0 9c 60 00 00    	imul   $0x609c,%eax,%eax
  4017ec:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4017f0:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017f4:	69 c0 a5 a3 00 00    	imul   $0xa3a5,%eax,%eax
  4017fa:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4017fe:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401802:	69 c0 69 84 00 00    	imul   $0x8469,%eax,%eax
  401808:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40180c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401810:	69 c0 4e 82 00 00    	imul   $0x824e,%eax,%eax
  401816:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40181a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40181e:	69 c0 42 2e 00 00    	imul   $0x2e42,%eax,%eax
  401824:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401828:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40182c:	69 c0 95 17 00 00    	imul   $0x1795,%eax,%eax
  401832:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401836:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40183a:	69 c0 e2 b9 00 00    	imul   $0xb9e2,%eax,%eax
  401840:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401844:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401848:	69 c0 11 98 00 00    	imul   $0x9811,%eax,%eax
  40184e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401852:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401856:	69 c0 6f 12 00 00    	imul   $0x126f,%eax,%eax
  40185c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401860:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401864:	69 c0 9f e7 00 00    	imul   $0xe79f,%eax,%eax
  40186a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40186e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401872:	69 c0 1b 51 00 00    	imul   $0x511b,%eax,%eax
  401878:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40187c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401880:	69 c0 ae 9c 00 00    	imul   $0x9cae,%eax,%eax
  401886:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40188a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40188e:	69 c0 3b 5f 00 00    	imul   $0x5f3b,%eax,%eax
  401894:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401898:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40189c:	69 c0 d1 3d 00 00    	imul   $0x3dd1,%eax,%eax
  4018a2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4018a6:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4018aa:	69 c0 2e 1f 00 00    	imul   $0x1f2e,%eax,%eax
  4018b0:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018b4:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4018b8:	69 c0 63 a2 00 00    	imul   $0xa263,%eax,%eax
  4018be:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4018c2:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018c6:	69 c0 82 79 00 00    	imul   $0x7982,%eax,%eax
  4018cc:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018d0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4018d4:	69 c0 b0 13 00 00    	imul   $0x13b0,%eax,%eax
  4018da:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4018de:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4018e2:	69 c0 bc d4 00 00    	imul   $0xd4bc,%eax,%eax
  4018e8:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4018ec:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4018f0:	69 c0 57 b7 00 00    	imul   $0xb757,%eax,%eax
  4018f6:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4018fa:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018fe:	69 c0 73 b0 00 00    	imul   $0xb073,%eax,%eax
  401904:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401908:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40190c:	69 c0 28 ba 00 00    	imul   $0xba28,%eax,%eax
  401912:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401916:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40191a:	69 c0 84 eb 00 00    	imul   $0xeb84,%eax,%eax
  401920:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401924:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401928:	69 c0 3f a4 00 00    	imul   $0xa43f,%eax,%eax
  40192e:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401932:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401936:	69 c0 e2 e9 00 00    	imul   $0xe9e2,%eax,%eax
  40193c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401940:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401944:	69 c0 7f ba 00 00    	imul   $0xba7f,%eax,%eax
  40194a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40194e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401952:	69 c0 07 1a 00 00    	imul   $0x1a07,%eax,%eax
  401958:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40195c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401960:	69 c0 ba 79 00 00    	imul   $0x79ba,%eax,%eax
  401966:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40196a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40196e:	69 c0 44 92 00 00    	imul   $0x9244,%eax,%eax
  401974:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401978:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40197c:	69 c0 a8 ad 00 00    	imul   $0xada8,%eax,%eax
  401982:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401986:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40198a:	69 c0 c3 27 00 00    	imul   $0x27c3,%eax,%eax
  401990:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401994:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401998:	69 c0 3e 31 00 00    	imul   $0x313e,%eax,%eax
  40199e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4019a2:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4019a6:	69 c0 13 96 00 00    	imul   $0x9613,%eax,%eax
  4019ac:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4019b0:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019b4:	69 c0 31 9f 00 00    	imul   $0x9f31,%eax,%eax
  4019ba:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4019be:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4019c2:	69 c0 ec da 00 00    	imul   $0xdaec,%eax,%eax
  4019c8:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4019cc:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4019d0:	69 c0 ce 6d 00 00    	imul   $0x6dce,%eax,%eax
  4019d6:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4019da:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4019de:	69 c0 75 25 00 00    	imul   $0x2575,%eax,%eax
  4019e4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4019e8:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4019ec:	69 c0 b4 f5 00 00    	imul   $0xf5b4,%eax,%eax
  4019f2:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4019f6:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019fa:	69 c0 2f 7a 00 00    	imul   $0x7a2f,%eax,%eax
  401a00:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a04:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401a08:	69 c0 ed 0e 00 00    	imul   $0xeed,%eax,%eax
  401a0e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401a12:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401a16:	69 c0 d2 25 00 00    	imul   $0x25d2,%eax,%eax
  401a1c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a20:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a24:	69 c0 10 9f 00 00    	imul   $0x9f10,%eax,%eax
  401a2a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a2e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a32:	69 c0 99 20 00 00    	imul   $0x2099,%eax,%eax
  401a38:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a3c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a40:	69 c0 1c b9 00 00    	imul   $0xb91c,%eax,%eax
  401a46:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a4a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401a4e:	69 c0 55 d0 00 00    	imul   $0xd055,%eax,%eax
  401a54:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401a58:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a5c:	69 c0 51 64 00 00    	imul   $0x6451,%eax,%eax
  401a62:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a66:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401a6a:	69 c0 cf b6 00 00    	imul   $0xb6cf,%eax,%eax
  401a70:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a74:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a78:	69 c0 5d 99 00 00    	imul   $0x995d,%eax,%eax
  401a7e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a82:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a86:	69 c0 7d da 00 00    	imul   $0xda7d,%eax,%eax
  401a8c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a90:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a94:	69 c0 b1 b7 00 00    	imul   $0xb7b1,%eax,%eax
  401a9a:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a9e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401aa2:	69 c0 17 8f 00 00    	imul   $0x8f17,%eax,%eax
  401aa8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401aac:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401ab0:	69 c0 c8 40 00 00    	imul   $0x40c8,%eax,%eax
  401ab6:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401aba:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401abe:	69 c0 76 4d 00 00    	imul   $0x4d76,%eax,%eax
  401ac4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401ac8:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401acc:	69 c0 86 c5 00 00    	imul   $0xc586,%eax,%eax
  401ad2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401ad6:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401ada:	69 c0 70 d0 00 00    	imul   $0xd070,%eax,%eax
  401ae0:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401ae4:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401ae8:	69 c0 b8 2b 00 00    	imul   $0x2bb8,%eax,%eax
  401aee:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401af2:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401af6:	69 c0 df 9d 00 00    	imul   $0x9ddf,%eax,%eax
  401afc:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401b00:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401b04:	69 c0 1b 36 00 00    	imul   $0x361b,%eax,%eax
  401b0a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401b0e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401b12:	69 c0 92 e3 00 00    	imul   $0xe392,%eax,%eax
  401b18:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401b1c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b20:	69 c0 56 71 00 00    	imul   $0x7156,%eax,%eax
  401b26:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401b2a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401b2e:	69 c0 fb 55 00 00    	imul   $0x55fb,%eax,%eax
  401b34:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401b38:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401b3c:	69 c0 ff ab 00 00    	imul   $0xabff,%eax,%eax
  401b42:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401b46:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401b4a:	69 c0 36 6b 00 00    	imul   $0x6b36,%eax,%eax
  401b50:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401b54:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b58:	69 c0 ac 59 00 00    	imul   $0x59ac,%eax,%eax
  401b5e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401b62:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401b66:	69 c0 eb 7d 00 00    	imul   $0x7deb,%eax,%eax
  401b6c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401b70:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b74:	69 c0 1c fb 00 00    	imul   $0xfb1c,%eax,%eax
  401b7a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401b7e:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401b82:	69 c0 de 36 00 00    	imul   $0x36de,%eax,%eax
  401b88:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401b8c:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401b90:	69 c0 8f c1 00 00    	imul   $0xc18f,%eax,%eax
  401b96:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401b9a:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b9e:	69 c0 61 72 00 00    	imul   $0x7261,%eax,%eax
  401ba4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401ba8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401bac:	69 c0 fa 4b 00 00    	imul   $0x4bfa,%eax,%eax
  401bb2:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401bb6:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401bba:	69 c0 88 5b 00 00    	imul   $0x5b88,%eax,%eax
  401bc0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401bc4:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401bc8:	69 c0 13 39 00 00    	imul   $0x3913,%eax,%eax
  401bce:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401bd2:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401bd6:	69 c0 7a 42 00 00    	imul   $0x427a,%eax,%eax
  401bdc:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401be0:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401be4:	69 c0 e0 b7 00 00    	imul   $0xb7e0,%eax,%eax
  401bea:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401bee:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401bf2:	69 c0 66 5e 00 00    	imul   $0x5e66,%eax,%eax
  401bf8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401bfc:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401c00:	69 c0 f3 d9 00 00    	imul   $0xd9f3,%eax,%eax
  401c06:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401c0a:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401c0e:	69 c0 de fe 00 00    	imul   $0xfede,%eax,%eax
  401c14:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401c18:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401c1c:	69 c0 2c c1 00 00    	imul   $0xc12c,%eax,%eax
  401c22:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401c26:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401c2a:	69 c0 4f cb 00 00    	imul   $0xcb4f,%eax,%eax
  401c30:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401c34:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401c38:	69 c0 c8 af 00 00    	imul   $0xafc8,%eax,%eax
  401c3e:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401c42:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401c46:	69 c0 36 2c 00 00    	imul   $0x2c36,%eax,%eax
  401c4c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401c50:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401c54:	69 c0 3d 56 00 00    	imul   $0x563d,%eax,%eax
  401c5a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401c5e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401c62:	69 c0 c9 e6 00 00    	imul   $0xe6c9,%eax,%eax
  401c68:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401c6c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401c70:	69 c0 69 e7 00 00    	imul   $0xe769,%eax,%eax
  401c76:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401c7a:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401c7e:	69 c0 e2 9e 00 00    	imul   $0x9ee2,%eax,%eax
  401c84:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401c88:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401c8c:	69 c0 fb 9b 00 00    	imul   $0x9bfb,%eax,%eax
  401c92:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401c96:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401c9a:	69 c0 16 ab 00 00    	imul   $0xab16,%eax,%eax
  401ca0:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401ca4:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401ca8:	69 c0 d2 f3 00 00    	imul   $0xf3d2,%eax,%eax
  401cae:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401cb2:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401cb6:	69 c0 3c 44 00 00    	imul   $0x443c,%eax,%eax
  401cbc:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401cc0:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401cc4:	69 c0 9d 13 00 00    	imul   $0x139d,%eax,%eax
  401cca:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401cce:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401cd2:	69 c0 e9 d4 00 00    	imul   $0xd4e9,%eax,%eax
  401cd8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401cdc:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401ce0:	69 c0 04 57 00 00    	imul   $0x5704,%eax,%eax
  401ce6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401cea:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401cee:	69 c0 83 73 00 00    	imul   $0x7383,%eax,%eax
  401cf4:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401cf8:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401cfc:	69 c0 db 3d 00 00    	imul   $0x3ddb,%eax,%eax
  401d02:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401d06:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401d0a:	69 c0 08 33 00 00    	imul   $0x3308,%eax,%eax
  401d10:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401d14:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401d18:	69 c0 0c 88 00 00    	imul   $0x880c,%eax,%eax
  401d1e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401d22:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401d26:	69 c0 88 98 00 00    	imul   $0x9888,%eax,%eax
  401d2c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401d30:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401d34:	69 c0 53 c2 00 00    	imul   $0xc253,%eax,%eax
  401d3a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401d3e:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401d42:	69 c0 17 f6 00 00    	imul   $0xf617,%eax,%eax
  401d48:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401d4c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401d50:	69 c0 7b d8 00 00    	imul   $0xd87b,%eax,%eax
  401d56:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401d5a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401d5e:	69 c0 20 dd 00 00    	imul   $0xdd20,%eax,%eax
  401d64:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401d68:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401d6c:	69 c0 64 8f 00 00    	imul   $0x8f64,%eax,%eax
  401d72:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401d76:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401d7a:	69 c0 84 49 00 00    	imul   $0x4984,%eax,%eax
  401d80:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401d84:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401d88:	69 c0 c6 75 00 00    	imul   $0x75c6,%eax,%eax
  401d8e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401d92:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401d96:	69 c0 e9 2e 00 00    	imul   $0x2ee9,%eax,%eax
  401d9c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401da0:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401da4:	69 c0 63 30 00 00    	imul   $0x3063,%eax,%eax
  401daa:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401dae:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401db2:	69 c0 f4 76 00 00    	imul   $0x76f4,%eax,%eax
  401db8:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401dbc:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401dc0:	69 c0 99 d7 00 00    	imul   $0xd799,%eax,%eax
  401dc6:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401dca:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401dce:	69 c0 97 9f 00 00    	imul   $0x9f97,%eax,%eax
  401dd4:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401dd8:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401ddc:	69 c0 49 29 00 00    	imul   $0x2949,%eax,%eax
  401de2:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401de6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401dea:	69 c0 18 03 00 00    	imul   $0x318,%eax,%eax
  401df0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401df4:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401df8:	69 c0 de 31 00 00    	imul   $0x31de,%eax,%eax
  401dfe:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401e02:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401e06:	69 c0 9f 8f 00 00    	imul   $0x8f9f,%eax,%eax
  401e0c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401e10:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401e14:	69 c0 f1 1a 00 00    	imul   $0x1af1,%eax,%eax
  401e1a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401e1e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401e22:	69 c0 ee 9d 00 00    	imul   $0x9dee,%eax,%eax
  401e28:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401e2c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401e30:	69 c0 b0 1a 00 00    	imul   $0x1ab0,%eax,%eax
  401e36:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401e3a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401e3e:	69 c0 e2 67 00 00    	imul   $0x67e2,%eax,%eax
  401e44:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401e48:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401e4c:	69 c0 44 03 00 00    	imul   $0x344,%eax,%eax
  401e52:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401e56:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401e5a:	69 c0 4b 2d 00 00    	imul   $0x2d4b,%eax,%eax
  401e60:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401e64:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401e68:	69 c0 27 3f 00 00    	imul   $0x3f27,%eax,%eax
  401e6e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401e72:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401e76:	69 c0 6e 02 00 00    	imul   $0x26e,%eax,%eax
  401e7c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401e80:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401e84:	69 c0 07 60 00 00    	imul   $0x6007,%eax,%eax
  401e8a:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401e8e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401e92:	69 c0 f1 f6 00 00    	imul   $0xf6f1,%eax,%eax
  401e98:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401e9c:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401ea0:	69 c0 d9 63 00 00    	imul   $0x63d9,%eax,%eax
  401ea6:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401eaa:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401eae:	69 c0 16 4d 00 00    	imul   $0x4d16,%eax,%eax
  401eb4:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401eb8:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401ebc:	69 c0 27 69 00 00    	imul   $0x6927,%eax,%eax
  401ec2:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401ec6:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401eca:	69 c0 78 3e 00 00    	imul   $0x3e78,%eax,%eax
  401ed0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401ed4:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401ed8:	69 c0 cf eb 00 00    	imul   $0xebcf,%eax,%eax
  401ede:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401ee2:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401ee6:	69 c0 38 8f 00 00    	imul   $0x8f38,%eax,%eax
  401eec:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401ef0:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401ef4:	69 c0 ce 53 00 00    	imul   $0x53ce,%eax,%eax
  401efa:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401efe:	ba 00 00 00 00       	mov    $0x0,%edx
  401f03:	b8 00 00 00 00       	mov    $0x0,%eax
  401f08:	eb 0b                	jmp    401f15 <scramble+0x902>
  401f0a:	89 d1                	mov    %edx,%ecx
  401f0c:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401f10:	01 c8                	add    %ecx,%eax
  401f12:	83 c2 01             	add    $0x1,%edx
  401f15:	83 fa 09             	cmp    $0x9,%edx
  401f18:	76 f0                	jbe    401f0a <scramble+0x8f7>
  401f1a:	f3 c3                	repz retq 

0000000000401f1c <getbuf>:
  401f1c:	48 83 ec 28          	sub    $0x28,%rsp
  401f20:	48 89 e7             	mov    %rsp,%rdi
  401f23:	e8 94 02 00 00       	callq  4021bc <Gets>
  401f28:	b8 01 00 00 00       	mov    $0x1,%eax
  401f2d:	48 83 c4 28          	add    $0x28,%rsp
  401f31:	c3                   	retq   

0000000000401f32 <touch1>:
  401f32:	48 83 ec 08          	sub    $0x8,%rsp
  401f36:	c7 05 dc 35 20 00 01 	movl   $0x1,0x2035dc(%rip)        # 60551c <vlevel>
  401f3d:	00 00 00 
  401f40:	48 8d 3d 3e 1a 00 00 	lea    0x1a3e(%rip),%rdi        # 403985 <_IO_stdin_used+0x345>
  401f47:	e8 d4 ef ff ff       	callq  400f20 <puts@plt>
  401f4c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f51:	e8 d6 04 00 00       	callq  40242c <validate>
  401f56:	bf 00 00 00 00       	mov    $0x0,%edi
  401f5b:	e8 60 f1 ff ff       	callq  4010c0 <exit@plt>

0000000000401f60 <touch2>:
  401f60:	48 83 ec 08          	sub    $0x8,%rsp
  401f64:	89 fa                	mov    %edi,%edx
  401f66:	c7 05 ac 35 20 00 02 	movl   $0x2,0x2035ac(%rip)        # 60551c <vlevel>
  401f6d:	00 00 00 
  401f70:	39 3d ae 35 20 00    	cmp    %edi,0x2035ae(%rip)        # 605524 <cookie>
  401f76:	74 2a                	je     401fa2 <touch2+0x42>
  401f78:	48 8d 35 51 1a 00 00 	lea    0x1a51(%rip),%rsi        # 4039d0 <_IO_stdin_used+0x390>
  401f7f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f84:	b8 00 00 00 00       	mov    $0x0,%eax
  401f89:	e8 e2 f0 ff ff       	callq  401070 <__printf_chk@plt>
  401f8e:	bf 02 00 00 00       	mov    $0x2,%edi
  401f93:	e8 64 05 00 00       	callq  4024fc <fail>
  401f98:	bf 00 00 00 00       	mov    $0x0,%edi
  401f9d:	e8 1e f1 ff ff       	callq  4010c0 <exit@plt>
  401fa2:	48 8d 35 ff 19 00 00 	lea    0x19ff(%rip),%rsi        # 4039a8 <_IO_stdin_used+0x368>
  401fa9:	bf 01 00 00 00       	mov    $0x1,%edi
  401fae:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb3:	e8 b8 f0 ff ff       	callq  401070 <__printf_chk@plt>
  401fb8:	bf 02 00 00 00       	mov    $0x2,%edi
  401fbd:	e8 6a 04 00 00       	callq  40242c <validate>
  401fc2:	eb d4                	jmp    401f98 <touch2+0x38>

0000000000401fc4 <hexmatch>:
  401fc4:	41 54                	push   %r12
  401fc6:	55                   	push   %rbp
  401fc7:	53                   	push   %rbx
  401fc8:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401fcc:	89 fd                	mov    %edi,%ebp
  401fce:	48 89 f3             	mov    %rsi,%rbx
  401fd1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fd8:	00 00 
  401fda:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401fdf:	31 c0                	xor    %eax,%eax
  401fe1:	e8 4a f0 ff ff       	callq  401030 <random@plt>
  401fe6:	48 89 c1             	mov    %rax,%rcx
  401fe9:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401ff0:	0a d7 a3 
  401ff3:	48 f7 ea             	imul   %rdx
  401ff6:	48 01 ca             	add    %rcx,%rdx
  401ff9:	48 c1 fa 06          	sar    $0x6,%rdx
  401ffd:	48 89 c8             	mov    %rcx,%rax
  402000:	48 c1 f8 3f          	sar    $0x3f,%rax
  402004:	48 29 c2             	sub    %rax,%rdx
  402007:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40200b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40200f:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  402016:	00 
  402017:	48 29 c1             	sub    %rax,%rcx
  40201a:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  40201e:	41 89 e8             	mov    %ebp,%r8d
  402021:	48 8d 0d 7a 19 00 00 	lea    0x197a(%rip),%rcx        # 4039a2 <_IO_stdin_used+0x362>
  402028:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40202f:	be 01 00 00 00       	mov    $0x1,%esi
  402034:	4c 89 e7             	mov    %r12,%rdi
  402037:	b8 00 00 00 00       	mov    $0x0,%eax
  40203c:	e8 af f0 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402041:	ba 09 00 00 00       	mov    $0x9,%edx
  402046:	4c 89 e6             	mov    %r12,%rsi
  402049:	48 89 df             	mov    %rbx,%rdi
  40204c:	e8 af ee ff ff       	callq  400f00 <strncmp@plt>
  402051:	85 c0                	test   %eax,%eax
  402053:	0f 94 c0             	sete   %al
  402056:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  40205b:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402062:	00 00 
  402064:	75 0c                	jne    402072 <hexmatch+0xae>
  402066:	0f b6 c0             	movzbl %al,%eax
  402069:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  40206d:	5b                   	pop    %rbx
  40206e:	5d                   	pop    %rbp
  40206f:	41 5c                	pop    %r12
  402071:	c3                   	retq   
  402072:	e8 c9 ee ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402077 <touch3>:
  402077:	53                   	push   %rbx
  402078:	48 89 fb             	mov    %rdi,%rbx
  40207b:	c7 05 97 34 20 00 03 	movl   $0x3,0x203497(%rip)        # 60551c <vlevel>
  402082:	00 00 00 
  402085:	48 89 fe             	mov    %rdi,%rsi
  402088:	8b 3d 96 34 20 00    	mov    0x203496(%rip),%edi        # 605524 <cookie>
  40208e:	e8 31 ff ff ff       	callq  401fc4 <hexmatch>
  402093:	85 c0                	test   %eax,%eax
  402095:	74 2d                	je     4020c4 <touch3+0x4d>
  402097:	48 89 da             	mov    %rbx,%rdx
  40209a:	48 8d 35 57 19 00 00 	lea    0x1957(%rip),%rsi        # 4039f8 <_IO_stdin_used+0x3b8>
  4020a1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ab:	e8 c0 ef ff ff       	callq  401070 <__printf_chk@plt>
  4020b0:	bf 03 00 00 00       	mov    $0x3,%edi
  4020b5:	e8 72 03 00 00       	callq  40242c <validate>
  4020ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4020bf:	e8 fc ef ff ff       	callq  4010c0 <exit@plt>
  4020c4:	48 89 da             	mov    %rbx,%rdx
  4020c7:	48 8d 35 52 19 00 00 	lea    0x1952(%rip),%rsi        # 403a20 <_IO_stdin_used+0x3e0>
  4020ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d8:	e8 93 ef ff ff       	callq  401070 <__printf_chk@plt>
  4020dd:	bf 03 00 00 00       	mov    $0x3,%edi
  4020e2:	e8 15 04 00 00       	callq  4024fc <fail>
  4020e7:	eb d1                	jmp    4020ba <touch3+0x43>

00000000004020e9 <test>:
  4020e9:	48 83 ec 08          	sub    $0x8,%rsp
  4020ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f2:	e8 25 fe ff ff       	callq  401f1c <getbuf>
  4020f7:	89 c2                	mov    %eax,%edx
  4020f9:	48 8d 35 48 19 00 00 	lea    0x1948(%rip),%rsi        # 403a48 <_IO_stdin_used+0x408>
  402100:	bf 01 00 00 00       	mov    $0x1,%edi
  402105:	b8 00 00 00 00       	mov    $0x0,%eax
  40210a:	e8 61 ef ff ff       	callq  401070 <__printf_chk@plt>
  40210f:	48 83 c4 08          	add    $0x8,%rsp
  402113:	c3                   	retq   

0000000000402114 <save_char>:
  402114:	8b 05 2a 40 20 00    	mov    0x20402a(%rip),%eax        # 606144 <gets_cnt>
  40211a:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40211f:	7f 4a                	jg     40216b <save_char+0x57>
  402121:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402124:	89 f9                	mov    %edi,%ecx
  402126:	c0 e9 04             	shr    $0x4,%cl
  402129:	4c 8d 05 40 1c 00 00 	lea    0x1c40(%rip),%r8        # 403d70 <trans_char>
  402130:	83 e1 0f             	and    $0xf,%ecx
  402133:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402138:	48 8d 0d 01 34 20 00 	lea    0x203401(%rip),%rcx        # 605540 <gets_buf>
  40213f:	48 63 f2             	movslq %edx,%rsi
  402142:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  402146:	8d 72 01             	lea    0x1(%rdx),%esi
  402149:	83 e7 0f             	and    $0xf,%edi
  40214c:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402151:	48 63 f6             	movslq %esi,%rsi
  402154:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402158:	83 c2 02             	add    $0x2,%edx
  40215b:	48 63 d2             	movslq %edx,%rdx
  40215e:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402162:	83 c0 01             	add    $0x1,%eax
  402165:	89 05 d9 3f 20 00    	mov    %eax,0x203fd9(%rip)        # 606144 <gets_cnt>
  40216b:	f3 c3                	repz retq 

000000000040216d <save_term>:
  40216d:	8b 05 d1 3f 20 00    	mov    0x203fd1(%rip),%eax        # 606144 <gets_cnt>
  402173:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402176:	48 98                	cltq   
  402178:	48 8d 15 c1 33 20 00 	lea    0x2033c1(%rip),%rdx        # 605540 <gets_buf>
  40217f:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402183:	c3                   	retq   

0000000000402184 <check_fail>:
  402184:	48 83 ec 08          	sub    $0x8,%rsp
  402188:	0f be 15 b9 3f 20 00 	movsbl 0x203fb9(%rip),%edx        # 606148 <target_prefix>
  40218f:	4c 8d 05 aa 33 20 00 	lea    0x2033aa(%rip),%r8        # 605540 <gets_buf>
  402196:	8b 0d 7c 33 20 00    	mov    0x20337c(%rip),%ecx        # 605518 <check_level>
  40219c:	48 8d 35 c8 18 00 00 	lea    0x18c8(%rip),%rsi        # 403a6b <_IO_stdin_used+0x42b>
  4021a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4021a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ad:	e8 be ee ff ff       	callq  401070 <__printf_chk@plt>
  4021b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b7:	e8 04 ef ff ff       	callq  4010c0 <exit@plt>

00000000004021bc <Gets>:
  4021bc:	41 54                	push   %r12
  4021be:	55                   	push   %rbp
  4021bf:	53                   	push   %rbx
  4021c0:	49 89 fc             	mov    %rdi,%r12
  4021c3:	c7 05 77 3f 20 00 00 	movl   $0x0,0x203f77(%rip)        # 606144 <gets_cnt>
  4021ca:	00 00 00 
  4021cd:	48 89 fb             	mov    %rdi,%rbx
  4021d0:	eb 11                	jmp    4021e3 <Gets+0x27>
  4021d2:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4021d6:	88 03                	mov    %al,(%rbx)
  4021d8:	0f b6 f8             	movzbl %al,%edi
  4021db:	e8 34 ff ff ff       	callq  402114 <save_char>
  4021e0:	48 89 eb             	mov    %rbp,%rbx
  4021e3:	48 8b 3d 26 33 20 00 	mov    0x203326(%rip),%rdi        # 605510 <infile>
  4021ea:	e8 51 ee ff ff       	callq  401040 <_IO_getc@plt>
  4021ef:	83 f8 ff             	cmp    $0xffffffff,%eax
  4021f2:	74 05                	je     4021f9 <Gets+0x3d>
  4021f4:	83 f8 0a             	cmp    $0xa,%eax
  4021f7:	75 d9                	jne    4021d2 <Gets+0x16>
  4021f9:	c6 03 00             	movb   $0x0,(%rbx)
  4021fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402201:	e8 67 ff ff ff       	callq  40216d <save_term>
  402206:	4c 89 e0             	mov    %r12,%rax
  402209:	5b                   	pop    %rbx
  40220a:	5d                   	pop    %rbp
  40220b:	41 5c                	pop    %r12
  40220d:	c3                   	retq   

000000000040220e <notify_server>:
  40220e:	55                   	push   %rbp
  40220f:	53                   	push   %rbx
  402210:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  402217:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40221e:	00 00 
  402220:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402227:	00 
  402228:	31 c0                	xor    %eax,%eax
  40222a:	83 3d f7 32 20 00 00 	cmpl   $0x0,0x2032f7(%rip)        # 605528 <is_checker>
  402231:	0f 85 d2 00 00 00    	jne    402309 <notify_server+0xfb>
  402237:	89 fb                	mov    %edi,%ebx
  402239:	8b 05 05 3f 20 00    	mov    0x203f05(%rip),%eax        # 606144 <gets_cnt>
  40223f:	83 c0 64             	add    $0x64,%eax
  402242:	3d 00 20 00 00       	cmp    $0x2000,%eax
  402247:	0f 8f dd 00 00 00    	jg     40232a <notify_server+0x11c>
  40224d:	0f be 05 f4 3e 20 00 	movsbl 0x203ef4(%rip),%eax        # 606148 <target_prefix>
  402254:	83 3d 4d 32 20 00 00 	cmpl   $0x0,0x20324d(%rip)        # 6054a8 <notify>
  40225b:	0f 84 e9 00 00 00    	je     40234a <notify_server+0x13c>
  402261:	8b 15 b9 32 20 00    	mov    0x2032b9(%rip),%edx        # 605520 <authkey>
  402267:	85 db                	test   %ebx,%ebx
  402269:	0f 84 e5 00 00 00    	je     402354 <notify_server+0x146>
  40226f:	48 8d 2d 0b 18 00 00 	lea    0x180b(%rip),%rbp        # 403a81 <_IO_stdin_used+0x441>
  402276:	48 89 e7             	mov    %rsp,%rdi
  402279:	48 8d 0d c0 32 20 00 	lea    0x2032c0(%rip),%rcx        # 605540 <gets_buf>
  402280:	51                   	push   %rcx
  402281:	56                   	push   %rsi
  402282:	50                   	push   %rax
  402283:	52                   	push   %rdx
  402284:	49 89 e9             	mov    %rbp,%r9
  402287:	44 8b 05 da 2e 20 00 	mov    0x202eda(%rip),%r8d        # 605168 <target_id>
  40228e:	48 8d 0d f6 17 00 00 	lea    0x17f6(%rip),%rcx        # 403a8b <_IO_stdin_used+0x44b>
  402295:	ba 00 20 00 00       	mov    $0x2000,%edx
  40229a:	be 01 00 00 00       	mov    $0x1,%esi
  40229f:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a4:	e8 47 ee ff ff       	callq  4010f0 <__sprintf_chk@plt>
  4022a9:	48 83 c4 20          	add    $0x20,%rsp
  4022ad:	83 3d f4 31 20 00 00 	cmpl   $0x0,0x2031f4(%rip)        # 6054a8 <notify>
  4022b4:	0f 84 df 00 00 00    	je     402399 <notify_server+0x18b>
  4022ba:	85 db                	test   %ebx,%ebx
  4022bc:	0f 84 c6 00 00 00    	je     402388 <notify_server+0x17a>
  4022c2:	48 89 e1             	mov    %rsp,%rcx
  4022c5:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4022cc:	00 
  4022cd:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022d3:	48 8b 15 96 2e 20 00 	mov    0x202e96(%rip),%rdx        # 605170 <lab>
  4022da:	48 8b 35 97 2e 20 00 	mov    0x202e97(%rip),%rsi        # 605178 <course>
  4022e1:	48 8b 3d 78 2e 20 00 	mov    0x202e78(%rip),%rdi        # 605160 <user_id>
  4022e8:	e8 b4 11 00 00       	callq  4034a1 <driver_post>
  4022ed:	85 c0                	test   %eax,%eax
  4022ef:	78 6f                	js     402360 <notify_server+0x152>
  4022f1:	48 8d 3d d8 18 00 00 	lea    0x18d8(%rip),%rdi        # 403bd0 <_IO_stdin_used+0x590>
  4022f8:	e8 23 ec ff ff       	callq  400f20 <puts@plt>
  4022fd:	48 8d 3d af 17 00 00 	lea    0x17af(%rip),%rdi        # 403ab3 <_IO_stdin_used+0x473>
  402304:	e8 17 ec ff ff       	callq  400f20 <puts@plt>
  402309:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402310:	00 
  402311:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402318:	00 00 
  40231a:	0f 85 07 01 00 00    	jne    402427 <notify_server+0x219>
  402320:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402327:	5b                   	pop    %rbx
  402328:	5d                   	pop    %rbp
  402329:	c3                   	retq   
  40232a:	48 8d 35 6f 18 00 00 	lea    0x186f(%rip),%rsi        # 403ba0 <_IO_stdin_used+0x560>
  402331:	bf 01 00 00 00       	mov    $0x1,%edi
  402336:	b8 00 00 00 00       	mov    $0x0,%eax
  40233b:	e8 30 ed ff ff       	callq  401070 <__printf_chk@plt>
  402340:	bf 01 00 00 00       	mov    $0x1,%edi
  402345:	e8 76 ed ff ff       	callq  4010c0 <exit@plt>
  40234a:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  40234f:	e9 13 ff ff ff       	jmpq   402267 <notify_server+0x59>
  402354:	48 8d 2d 2b 17 00 00 	lea    0x172b(%rip),%rbp        # 403a86 <_IO_stdin_used+0x446>
  40235b:	e9 16 ff ff ff       	jmpq   402276 <notify_server+0x68>
  402360:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402367:	00 
  402368:	48 8d 35 38 17 00 00 	lea    0x1738(%rip),%rsi        # 403aa7 <_IO_stdin_used+0x467>
  40236f:	bf 01 00 00 00       	mov    $0x1,%edi
  402374:	b8 00 00 00 00       	mov    $0x0,%eax
  402379:	e8 f2 ec ff ff       	callq  401070 <__printf_chk@plt>
  40237e:	bf 01 00 00 00       	mov    $0x1,%edi
  402383:	e8 38 ed ff ff       	callq  4010c0 <exit@plt>
  402388:	48 8d 3d 2e 17 00 00 	lea    0x172e(%rip),%rdi        # 403abd <_IO_stdin_used+0x47d>
  40238f:	e8 8c eb ff ff       	callq  400f20 <puts@plt>
  402394:	e9 70 ff ff ff       	jmpq   402309 <notify_server+0xfb>
  402399:	48 89 ea             	mov    %rbp,%rdx
  40239c:	48 8d 35 65 18 00 00 	lea    0x1865(%rip),%rsi        # 403c08 <_IO_stdin_used+0x5c8>
  4023a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ad:	e8 be ec ff ff       	callq  401070 <__printf_chk@plt>
  4023b2:	48 8b 15 a7 2d 20 00 	mov    0x202da7(%rip),%rdx        # 605160 <user_id>
  4023b9:	48 8d 35 04 17 00 00 	lea    0x1704(%rip),%rsi        # 403ac4 <_IO_stdin_used+0x484>
  4023c0:	bf 01 00 00 00       	mov    $0x1,%edi
  4023c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ca:	e8 a1 ec ff ff       	callq  401070 <__printf_chk@plt>
  4023cf:	48 8b 15 a2 2d 20 00 	mov    0x202da2(%rip),%rdx        # 605178 <course>
  4023d6:	48 8d 35 f4 16 00 00 	lea    0x16f4(%rip),%rsi        # 403ad1 <_IO_stdin_used+0x491>
  4023dd:	bf 01 00 00 00       	mov    $0x1,%edi
  4023e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e7:	e8 84 ec ff ff       	callq  401070 <__printf_chk@plt>
  4023ec:	48 8b 15 7d 2d 20 00 	mov    0x202d7d(%rip),%rdx        # 605170 <lab>
  4023f3:	48 8d 35 e3 16 00 00 	lea    0x16e3(%rip),%rsi        # 403add <_IO_stdin_used+0x49d>
  4023fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4023ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402404:	e8 67 ec ff ff       	callq  401070 <__printf_chk@plt>
  402409:	48 89 e2             	mov    %rsp,%rdx
  40240c:	48 8d 35 d3 16 00 00 	lea    0x16d3(%rip),%rsi        # 403ae6 <_IO_stdin_used+0x4a6>
  402413:	bf 01 00 00 00       	mov    $0x1,%edi
  402418:	b8 00 00 00 00       	mov    $0x0,%eax
  40241d:	e8 4e ec ff ff       	callq  401070 <__printf_chk@plt>
  402422:	e9 e2 fe ff ff       	jmpq   402309 <notify_server+0xfb>
  402427:	e8 14 eb ff ff       	callq  400f40 <__stack_chk_fail@plt>

000000000040242c <validate>:
  40242c:	53                   	push   %rbx
  40242d:	89 fb                	mov    %edi,%ebx
  40242f:	83 3d f2 30 20 00 00 	cmpl   $0x0,0x2030f2(%rip)        # 605528 <is_checker>
  402436:	74 72                	je     4024aa <validate+0x7e>
  402438:	39 3d de 30 20 00    	cmp    %edi,0x2030de(%rip)        # 60551c <vlevel>
  40243e:	75 32                	jne    402472 <validate+0x46>
  402440:	8b 15 d2 30 20 00    	mov    0x2030d2(%rip),%edx        # 605518 <check_level>
  402446:	39 d7                	cmp    %edx,%edi
  402448:	75 3e                	jne    402488 <validate+0x5c>
  40244a:	0f be 15 f7 3c 20 00 	movsbl 0x203cf7(%rip),%edx        # 606148 <target_prefix>
  402451:	4c 8d 05 e8 30 20 00 	lea    0x2030e8(%rip),%r8        # 605540 <gets_buf>
  402458:	89 f9                	mov    %edi,%ecx
  40245a:	48 8d 35 af 16 00 00 	lea    0x16af(%rip),%rsi        # 403b10 <_IO_stdin_used+0x4d0>
  402461:	bf 01 00 00 00       	mov    $0x1,%edi
  402466:	b8 00 00 00 00       	mov    $0x0,%eax
  40246b:	e8 00 ec ff ff       	callq  401070 <__printf_chk@plt>
  402470:	5b                   	pop    %rbx
  402471:	c3                   	retq   
  402472:	48 8d 3d 79 16 00 00 	lea    0x1679(%rip),%rdi        # 403af2 <_IO_stdin_used+0x4b2>
  402479:	e8 a2 ea ff ff       	callq  400f20 <puts@plt>
  40247e:	b8 00 00 00 00       	mov    $0x0,%eax
  402483:	e8 fc fc ff ff       	callq  402184 <check_fail>
  402488:	89 f9                	mov    %edi,%ecx
  40248a:	48 8d 35 9f 17 00 00 	lea    0x179f(%rip),%rsi        # 403c30 <_IO_stdin_used+0x5f0>
  402491:	bf 01 00 00 00       	mov    $0x1,%edi
  402496:	b8 00 00 00 00       	mov    $0x0,%eax
  40249b:	e8 d0 eb ff ff       	callq  401070 <__printf_chk@plt>
  4024a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a5:	e8 da fc ff ff       	callq  402184 <check_fail>
  4024aa:	3b 3d 6c 30 20 00    	cmp    0x20306c(%rip),%edi        # 60551c <vlevel>
  4024b0:	74 1a                	je     4024cc <validate+0xa0>
  4024b2:	48 8d 3d 39 16 00 00 	lea    0x1639(%rip),%rdi        # 403af2 <_IO_stdin_used+0x4b2>
  4024b9:	e8 62 ea ff ff       	callq  400f20 <puts@plt>
  4024be:	89 de                	mov    %ebx,%esi
  4024c0:	bf 00 00 00 00       	mov    $0x0,%edi
  4024c5:	e8 44 fd ff ff       	callq  40220e <notify_server>
  4024ca:	eb a4                	jmp    402470 <validate+0x44>
  4024cc:	0f be 0d 75 3c 20 00 	movsbl 0x203c75(%rip),%ecx        # 606148 <target_prefix>
  4024d3:	89 fa                	mov    %edi,%edx
  4024d5:	48 8d 35 7c 17 00 00 	lea    0x177c(%rip),%rsi        # 403c58 <_IO_stdin_used+0x618>
  4024dc:	bf 01 00 00 00       	mov    $0x1,%edi
  4024e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e6:	e8 85 eb ff ff       	callq  401070 <__printf_chk@plt>
  4024eb:	89 de                	mov    %ebx,%esi
  4024ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4024f2:	e8 17 fd ff ff       	callq  40220e <notify_server>
  4024f7:	e9 74 ff ff ff       	jmpq   402470 <validate+0x44>

00000000004024fc <fail>:
  4024fc:	48 83 ec 08          	sub    $0x8,%rsp
  402500:	83 3d 21 30 20 00 00 	cmpl   $0x0,0x203021(%rip)        # 605528 <is_checker>
  402507:	75 11                	jne    40251a <fail+0x1e>
  402509:	89 fe                	mov    %edi,%esi
  40250b:	bf 00 00 00 00       	mov    $0x0,%edi
  402510:	e8 f9 fc ff ff       	callq  40220e <notify_server>
  402515:	48 83 c4 08          	add    $0x8,%rsp
  402519:	c3                   	retq   
  40251a:	b8 00 00 00 00       	mov    $0x0,%eax
  40251f:	e8 60 fc ff ff       	callq  402184 <check_fail>

0000000000402524 <bushandler>:
  402524:	48 83 ec 08          	sub    $0x8,%rsp
  402528:	83 3d f9 2f 20 00 00 	cmpl   $0x0,0x202ff9(%rip)        # 605528 <is_checker>
  40252f:	74 16                	je     402547 <bushandler+0x23>
  402531:	48 8d 3d ed 15 00 00 	lea    0x15ed(%rip),%rdi        # 403b25 <_IO_stdin_used+0x4e5>
  402538:	e8 e3 e9 ff ff       	callq  400f20 <puts@plt>
  40253d:	b8 00 00 00 00       	mov    $0x0,%eax
  402542:	e8 3d fc ff ff       	callq  402184 <check_fail>
  402547:	48 8d 3d 42 17 00 00 	lea    0x1742(%rip),%rdi        # 403c90 <_IO_stdin_used+0x650>
  40254e:	e8 cd e9 ff ff       	callq  400f20 <puts@plt>
  402553:	48 8d 3d d5 15 00 00 	lea    0x15d5(%rip),%rdi        # 403b2f <_IO_stdin_used+0x4ef>
  40255a:	e8 c1 e9 ff ff       	callq  400f20 <puts@plt>
  40255f:	be 00 00 00 00       	mov    $0x0,%esi
  402564:	bf 00 00 00 00       	mov    $0x0,%edi
  402569:	e8 a0 fc ff ff       	callq  40220e <notify_server>
  40256e:	bf 01 00 00 00       	mov    $0x1,%edi
  402573:	e8 48 eb ff ff       	callq  4010c0 <exit@plt>

0000000000402578 <seghandler>:
  402578:	48 83 ec 08          	sub    $0x8,%rsp
  40257c:	83 3d a5 2f 20 00 00 	cmpl   $0x0,0x202fa5(%rip)        # 605528 <is_checker>
  402583:	74 16                	je     40259b <seghandler+0x23>
  402585:	48 8d 3d b9 15 00 00 	lea    0x15b9(%rip),%rdi        # 403b45 <_IO_stdin_used+0x505>
  40258c:	e8 8f e9 ff ff       	callq  400f20 <puts@plt>
  402591:	b8 00 00 00 00       	mov    $0x0,%eax
  402596:	e8 e9 fb ff ff       	callq  402184 <check_fail>
  40259b:	48 8d 3d 0e 17 00 00 	lea    0x170e(%rip),%rdi        # 403cb0 <_IO_stdin_used+0x670>
  4025a2:	e8 79 e9 ff ff       	callq  400f20 <puts@plt>
  4025a7:	48 8d 3d 81 15 00 00 	lea    0x1581(%rip),%rdi        # 403b2f <_IO_stdin_used+0x4ef>
  4025ae:	e8 6d e9 ff ff       	callq  400f20 <puts@plt>
  4025b3:	be 00 00 00 00       	mov    $0x0,%esi
  4025b8:	bf 00 00 00 00       	mov    $0x0,%edi
  4025bd:	e8 4c fc ff ff       	callq  40220e <notify_server>
  4025c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4025c7:	e8 f4 ea ff ff       	callq  4010c0 <exit@plt>

00000000004025cc <illegalhandler>:
  4025cc:	48 83 ec 08          	sub    $0x8,%rsp
  4025d0:	83 3d 51 2f 20 00 00 	cmpl   $0x0,0x202f51(%rip)        # 605528 <is_checker>
  4025d7:	74 16                	je     4025ef <illegalhandler+0x23>
  4025d9:	48 8d 3d 78 15 00 00 	lea    0x1578(%rip),%rdi        # 403b58 <_IO_stdin_used+0x518>
  4025e0:	e8 3b e9 ff ff       	callq  400f20 <puts@plt>
  4025e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ea:	e8 95 fb ff ff       	callq  402184 <check_fail>
  4025ef:	48 8d 3d e2 16 00 00 	lea    0x16e2(%rip),%rdi        # 403cd8 <_IO_stdin_used+0x698>
  4025f6:	e8 25 e9 ff ff       	callq  400f20 <puts@plt>
  4025fb:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 403b2f <_IO_stdin_used+0x4ef>
  402602:	e8 19 e9 ff ff       	callq  400f20 <puts@plt>
  402607:	be 00 00 00 00       	mov    $0x0,%esi
  40260c:	bf 00 00 00 00       	mov    $0x0,%edi
  402611:	e8 f8 fb ff ff       	callq  40220e <notify_server>
  402616:	bf 01 00 00 00       	mov    $0x1,%edi
  40261b:	e8 a0 ea ff ff       	callq  4010c0 <exit@plt>

0000000000402620 <sigalrmhandler>:
  402620:	48 83 ec 08          	sub    $0x8,%rsp
  402624:	83 3d fd 2e 20 00 00 	cmpl   $0x0,0x202efd(%rip)        # 605528 <is_checker>
  40262b:	74 16                	je     402643 <sigalrmhandler+0x23>
  40262d:	48 8d 3d 38 15 00 00 	lea    0x1538(%rip),%rdi        # 403b6c <_IO_stdin_used+0x52c>
  402634:	e8 e7 e8 ff ff       	callq  400f20 <puts@plt>
  402639:	b8 00 00 00 00       	mov    $0x0,%eax
  40263e:	e8 41 fb ff ff       	callq  402184 <check_fail>
  402643:	ba 05 00 00 00       	mov    $0x5,%edx
  402648:	48 8d 35 b9 16 00 00 	lea    0x16b9(%rip),%rsi        # 403d08 <_IO_stdin_used+0x6c8>
  40264f:	bf 01 00 00 00       	mov    $0x1,%edi
  402654:	b8 00 00 00 00       	mov    $0x0,%eax
  402659:	e8 12 ea ff ff       	callq  401070 <__printf_chk@plt>
  40265e:	be 00 00 00 00       	mov    $0x0,%esi
  402663:	bf 00 00 00 00       	mov    $0x0,%edi
  402668:	e8 a1 fb ff ff       	callq  40220e <notify_server>
  40266d:	bf 01 00 00 00       	mov    $0x1,%edi
  402672:	e8 49 ea ff ff       	callq  4010c0 <exit@plt>

0000000000402677 <launch>:
  402677:	55                   	push   %rbp
  402678:	48 89 e5             	mov    %rsp,%rbp
  40267b:	48 83 ec 10          	sub    $0x10,%rsp
  40267f:	48 89 fa             	mov    %rdi,%rdx
  402682:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402689:	00 00 
  40268b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40268f:	31 c0                	xor    %eax,%eax
  402691:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402695:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402699:	48 29 c4             	sub    %rax,%rsp
  40269c:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4026a1:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4026a5:	be f4 00 00 00       	mov    $0xf4,%esi
  4026aa:	e8 c1 e8 ff ff       	callq  400f70 <memset@plt>
  4026af:	48 8b 05 0a 2e 20 00 	mov    0x202e0a(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4026b6:	48 39 05 53 2e 20 00 	cmp    %rax,0x202e53(%rip)        # 605510 <infile>
  4026bd:	74 3a                	je     4026f9 <launch+0x82>
  4026bf:	c7 05 53 2e 20 00 00 	movl   $0x0,0x202e53(%rip)        # 60551c <vlevel>
  4026c6:	00 00 00 
  4026c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ce:	e8 16 fa ff ff       	callq  4020e9 <test>
  4026d3:	83 3d 4e 2e 20 00 00 	cmpl   $0x0,0x202e4e(%rip)        # 605528 <is_checker>
  4026da:	75 35                	jne    402711 <launch+0x9a>
  4026dc:	48 8d 3d a9 14 00 00 	lea    0x14a9(%rip),%rdi        # 403b8c <_IO_stdin_used+0x54c>
  4026e3:	e8 38 e8 ff ff       	callq  400f20 <puts@plt>
  4026e8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026ec:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4026f3:	00 00 
  4026f5:	75 30                	jne    402727 <launch+0xb0>
  4026f7:	c9                   	leaveq 
  4026f8:	c3                   	retq   
  4026f9:	48 8d 35 74 14 00 00 	lea    0x1474(%rip),%rsi        # 403b74 <_IO_stdin_used+0x534>
  402700:	bf 01 00 00 00       	mov    $0x1,%edi
  402705:	b8 00 00 00 00       	mov    $0x0,%eax
  40270a:	e8 61 e9 ff ff       	callq  401070 <__printf_chk@plt>
  40270f:	eb ae                	jmp    4026bf <launch+0x48>
  402711:	48 8d 3d 69 14 00 00 	lea    0x1469(%rip),%rdi        # 403b81 <_IO_stdin_used+0x541>
  402718:	e8 03 e8 ff ff       	callq  400f20 <puts@plt>
  40271d:	b8 00 00 00 00       	mov    $0x0,%eax
  402722:	e8 5d fa ff ff       	callq  402184 <check_fail>
  402727:	e8 14 e8 ff ff       	callq  400f40 <__stack_chk_fail@plt>

000000000040272c <stable_launch>:
  40272c:	53                   	push   %rbx
  40272d:	48 89 3d d4 2d 20 00 	mov    %rdi,0x202dd4(%rip)        # 605508 <global_offset>
  402734:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40273a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402740:	b9 32 01 00 00       	mov    $0x132,%ecx
  402745:	ba 07 00 00 00       	mov    $0x7,%edx
  40274a:	be 00 00 10 00       	mov    $0x100000,%esi
  40274f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402754:	e8 f7 e7 ff ff       	callq  400f50 <mmap@plt>
  402759:	48 89 c3             	mov    %rax,%rbx
  40275c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402762:	75 43                	jne    4027a7 <stable_launch+0x7b>
  402764:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40276b:	48 89 15 de 39 20 00 	mov    %rdx,0x2039de(%rip)        # 606150 <stack_top>
  402772:	48 89 e0             	mov    %rsp,%rax
  402775:	48 89 d4             	mov    %rdx,%rsp
  402778:	48 89 c2             	mov    %rax,%rdx
  40277b:	48 89 15 7e 2d 20 00 	mov    %rdx,0x202d7e(%rip)        # 605500 <global_save_stack>
  402782:	48 8b 3d 7f 2d 20 00 	mov    0x202d7f(%rip),%rdi        # 605508 <global_offset>
  402789:	e8 e9 fe ff ff       	callq  402677 <launch>
  40278e:	48 8b 05 6b 2d 20 00 	mov    0x202d6b(%rip),%rax        # 605500 <global_save_stack>
  402795:	48 89 c4             	mov    %rax,%rsp
  402798:	be 00 00 10 00       	mov    $0x100000,%esi
  40279d:	48 89 df             	mov    %rbx,%rdi
  4027a0:	e8 bb e8 ff ff       	callq  401060 <munmap@plt>
  4027a5:	5b                   	pop    %rbx
  4027a6:	c3                   	retq   
  4027a7:	be 00 00 10 00       	mov    $0x100000,%esi
  4027ac:	48 89 c7             	mov    %rax,%rdi
  4027af:	e8 ac e8 ff ff       	callq  401060 <munmap@plt>
  4027b4:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4027b9:	48 8d 15 80 15 00 00 	lea    0x1580(%rip),%rdx        # 403d40 <_IO_stdin_used+0x700>
  4027c0:	be 01 00 00 00       	mov    $0x1,%esi
  4027c5:	48 8b 3d 14 2d 20 00 	mov    0x202d14(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4027cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d1:	e8 0a e9 ff ff       	callq  4010e0 <__fprintf_chk@plt>
  4027d6:	bf 01 00 00 00       	mov    $0x1,%edi
  4027db:	e8 e0 e8 ff ff       	callq  4010c0 <exit@plt>

00000000004027e0 <rio_readinitb>:
  4027e0:	89 37                	mov    %esi,(%rdi)
  4027e2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4027e9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4027ed:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4027f1:	c3                   	retq   

00000000004027f2 <sigalrm_handler>:
  4027f2:	48 83 ec 08          	sub    $0x8,%rsp
  4027f6:	b9 00 00 00 00       	mov    $0x0,%ecx
  4027fb:	48 8d 15 7e 15 00 00 	lea    0x157e(%rip),%rdx        # 403d80 <trans_char+0x10>
  402802:	be 01 00 00 00       	mov    $0x1,%esi
  402807:	48 8b 3d d2 2c 20 00 	mov    0x202cd2(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40280e:	b8 00 00 00 00       	mov    $0x0,%eax
  402813:	e8 c8 e8 ff ff       	callq  4010e0 <__fprintf_chk@plt>
  402818:	bf 01 00 00 00       	mov    $0x1,%edi
  40281d:	e8 9e e8 ff ff       	callq  4010c0 <exit@plt>

0000000000402822 <rio_writen>:
  402822:	41 55                	push   %r13
  402824:	41 54                	push   %r12
  402826:	55                   	push   %rbp
  402827:	53                   	push   %rbx
  402828:	48 83 ec 08          	sub    $0x8,%rsp
  40282c:	41 89 fc             	mov    %edi,%r12d
  40282f:	49 89 d5             	mov    %rdx,%r13
  402832:	48 89 f5             	mov    %rsi,%rbp
  402835:	48 89 d3             	mov    %rdx,%rbx
  402838:	eb 06                	jmp    402840 <rio_writen+0x1e>
  40283a:	48 29 c3             	sub    %rax,%rbx
  40283d:	48 01 c5             	add    %rax,%rbp
  402840:	48 85 db             	test   %rbx,%rbx
  402843:	74 24                	je     402869 <rio_writen+0x47>
  402845:	48 89 da             	mov    %rbx,%rdx
  402848:	48 89 ee             	mov    %rbp,%rsi
  40284b:	44 89 e7             	mov    %r12d,%edi
  40284e:	e8 dd e6 ff ff       	callq  400f30 <write@plt>
  402853:	48 85 c0             	test   %rax,%rax
  402856:	7f e2                	jg     40283a <rio_writen+0x18>
  402858:	e8 83 e6 ff ff       	callq  400ee0 <__errno_location@plt>
  40285d:	83 38 04             	cmpl   $0x4,(%rax)
  402860:	75 15                	jne    402877 <rio_writen+0x55>
  402862:	b8 00 00 00 00       	mov    $0x0,%eax
  402867:	eb d1                	jmp    40283a <rio_writen+0x18>
  402869:	4c 89 e8             	mov    %r13,%rax
  40286c:	48 83 c4 08          	add    $0x8,%rsp
  402870:	5b                   	pop    %rbx
  402871:	5d                   	pop    %rbp
  402872:	41 5c                	pop    %r12
  402874:	41 5d                	pop    %r13
  402876:	c3                   	retq   
  402877:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40287e:	eb ec                	jmp    40286c <rio_writen+0x4a>

0000000000402880 <rio_read>:
  402880:	41 55                	push   %r13
  402882:	41 54                	push   %r12
  402884:	55                   	push   %rbp
  402885:	53                   	push   %rbx
  402886:	48 83 ec 08          	sub    $0x8,%rsp
  40288a:	48 89 fb             	mov    %rdi,%rbx
  40288d:	49 89 f5             	mov    %rsi,%r13
  402890:	49 89 d4             	mov    %rdx,%r12
  402893:	eb 0a                	jmp    40289f <rio_read+0x1f>
  402895:	e8 46 e6 ff ff       	callq  400ee0 <__errno_location@plt>
  40289a:	83 38 04             	cmpl   $0x4,(%rax)
  40289d:	75 5c                	jne    4028fb <rio_read+0x7b>
  40289f:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4028a2:	85 ed                	test   %ebp,%ebp
  4028a4:	7f 24                	jg     4028ca <rio_read+0x4a>
  4028a6:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4028aa:	8b 3b                	mov    (%rbx),%edi
  4028ac:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028b1:	48 89 ee             	mov    %rbp,%rsi
  4028b4:	e8 e7 e6 ff ff       	callq  400fa0 <read@plt>
  4028b9:	89 43 04             	mov    %eax,0x4(%rbx)
  4028bc:	85 c0                	test   %eax,%eax
  4028be:	78 d5                	js     402895 <rio_read+0x15>
  4028c0:	85 c0                	test   %eax,%eax
  4028c2:	74 40                	je     402904 <rio_read+0x84>
  4028c4:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4028c8:	eb d5                	jmp    40289f <rio_read+0x1f>
  4028ca:	89 e8                	mov    %ebp,%eax
  4028cc:	49 39 c4             	cmp    %rax,%r12
  4028cf:	77 03                	ja     4028d4 <rio_read+0x54>
  4028d1:	44 89 e5             	mov    %r12d,%ebp
  4028d4:	4c 63 e5             	movslq %ebp,%r12
  4028d7:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4028db:	4c 89 e2             	mov    %r12,%rdx
  4028de:	4c 89 ef             	mov    %r13,%rdi
  4028e1:	e8 2a e7 ff ff       	callq  401010 <memcpy@plt>
  4028e6:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4028ea:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4028ed:	4c 89 e0             	mov    %r12,%rax
  4028f0:	48 83 c4 08          	add    $0x8,%rsp
  4028f4:	5b                   	pop    %rbx
  4028f5:	5d                   	pop    %rbp
  4028f6:	41 5c                	pop    %r12
  4028f8:	41 5d                	pop    %r13
  4028fa:	c3                   	retq   
  4028fb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402902:	eb ec                	jmp    4028f0 <rio_read+0x70>
  402904:	b8 00 00 00 00       	mov    $0x0,%eax
  402909:	eb e5                	jmp    4028f0 <rio_read+0x70>

000000000040290b <rio_readlineb>:
  40290b:	41 55                	push   %r13
  40290d:	41 54                	push   %r12
  40290f:	55                   	push   %rbp
  402910:	53                   	push   %rbx
  402911:	48 83 ec 18          	sub    $0x18,%rsp
  402915:	49 89 fd             	mov    %rdi,%r13
  402918:	49 89 d4             	mov    %rdx,%r12
  40291b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402922:	00 00 
  402924:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402929:	31 c0                	xor    %eax,%eax
  40292b:	48 89 f5             	mov    %rsi,%rbp
  40292e:	bb 01 00 00 00       	mov    $0x1,%ebx
  402933:	4c 39 e3             	cmp    %r12,%rbx
  402936:	73 47                	jae    40297f <rio_readlineb+0x74>
  402938:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40293d:	ba 01 00 00 00       	mov    $0x1,%edx
  402942:	4c 89 ef             	mov    %r13,%rdi
  402945:	e8 36 ff ff ff       	callq  402880 <rio_read>
  40294a:	83 f8 01             	cmp    $0x1,%eax
  40294d:	75 1c                	jne    40296b <rio_readlineb+0x60>
  40294f:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402953:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402958:	88 55 00             	mov    %dl,0x0(%rbp)
  40295b:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402960:	74 1a                	je     40297c <rio_readlineb+0x71>
  402962:	48 83 c3 01          	add    $0x1,%rbx
  402966:	48 89 c5             	mov    %rax,%rbp
  402969:	eb c8                	jmp    402933 <rio_readlineb+0x28>
  40296b:	85 c0                	test   %eax,%eax
  40296d:	75 32                	jne    4029a1 <rio_readlineb+0x96>
  40296f:	48 83 fb 01          	cmp    $0x1,%rbx
  402973:	75 0a                	jne    40297f <rio_readlineb+0x74>
  402975:	b8 00 00 00 00       	mov    $0x0,%eax
  40297a:	eb 0a                	jmp    402986 <rio_readlineb+0x7b>
  40297c:	48 89 c5             	mov    %rax,%rbp
  40297f:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402983:	48 89 d8             	mov    %rbx,%rax
  402986:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40298b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402992:	00 00 
  402994:	75 14                	jne    4029aa <rio_readlineb+0x9f>
  402996:	48 83 c4 18          	add    $0x18,%rsp
  40299a:	5b                   	pop    %rbx
  40299b:	5d                   	pop    %rbp
  40299c:	41 5c                	pop    %r12
  40299e:	41 5d                	pop    %r13
  4029a0:	c3                   	retq   
  4029a1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029a8:	eb dc                	jmp    402986 <rio_readlineb+0x7b>
  4029aa:	e8 91 e5 ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004029af <urlencode>:
  4029af:	41 54                	push   %r12
  4029b1:	55                   	push   %rbp
  4029b2:	53                   	push   %rbx
  4029b3:	48 83 ec 10          	sub    $0x10,%rsp
  4029b7:	48 89 fb             	mov    %rdi,%rbx
  4029ba:	48 89 f5             	mov    %rsi,%rbp
  4029bd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029c4:	00 00 
  4029c6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4029cb:	31 c0                	xor    %eax,%eax
  4029cd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4029d4:	f2 ae                	repnz scas %es:(%rdi),%al
  4029d6:	48 f7 d1             	not    %rcx
  4029d9:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4029dc:	eb 0f                	jmp    4029ed <urlencode+0x3e>
  4029de:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4029e2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4029e6:	48 83 c3 01          	add    $0x1,%rbx
  4029ea:	44 89 e0             	mov    %r12d,%eax
  4029ed:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4029f1:	85 c0                	test   %eax,%eax
  4029f3:	0f 84 a8 00 00 00    	je     402aa1 <urlencode+0xf2>
  4029f9:	44 0f b6 03          	movzbl (%rbx),%r8d
  4029fd:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402a01:	0f 94 c2             	sete   %dl
  402a04:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402a08:	0f 94 c0             	sete   %al
  402a0b:	08 c2                	or     %al,%dl
  402a0d:	75 cf                	jne    4029de <urlencode+0x2f>
  402a0f:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402a13:	74 c9                	je     4029de <urlencode+0x2f>
  402a15:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402a19:	74 c3                	je     4029de <urlencode+0x2f>
  402a1b:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402a1f:	3c 09                	cmp    $0x9,%al
  402a21:	76 bb                	jbe    4029de <urlencode+0x2f>
  402a23:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402a27:	3c 19                	cmp    $0x19,%al
  402a29:	76 b3                	jbe    4029de <urlencode+0x2f>
  402a2b:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402a2f:	3c 19                	cmp    $0x19,%al
  402a31:	76 ab                	jbe    4029de <urlencode+0x2f>
  402a33:	41 80 f8 20          	cmp    $0x20,%r8b
  402a37:	74 56                	je     402a8f <urlencode+0xe0>
  402a39:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402a3d:	3c 5f                	cmp    $0x5f,%al
  402a3f:	0f 96 c2             	setbe  %dl
  402a42:	41 80 f8 09          	cmp    $0x9,%r8b
  402a46:	0f 94 c0             	sete   %al
  402a49:	08 c2                	or     %al,%dl
  402a4b:	74 4f                	je     402a9c <urlencode+0xed>
  402a4d:	48 89 e7             	mov    %rsp,%rdi
  402a50:	45 0f b6 c0          	movzbl %r8b,%r8d
  402a54:	48 8d 0d bd 13 00 00 	lea    0x13bd(%rip),%rcx        # 403e18 <trans_char+0xa8>
  402a5b:	ba 08 00 00 00       	mov    $0x8,%edx
  402a60:	be 01 00 00 00       	mov    $0x1,%esi
  402a65:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6a:	e8 81 e6 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402a6f:	0f b6 04 24          	movzbl (%rsp),%eax
  402a73:	88 45 00             	mov    %al,0x0(%rbp)
  402a76:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402a7b:	88 45 01             	mov    %al,0x1(%rbp)
  402a7e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402a83:	88 45 02             	mov    %al,0x2(%rbp)
  402a86:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402a8a:	e9 57 ff ff ff       	jmpq   4029e6 <urlencode+0x37>
  402a8f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402a93:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402a97:	e9 4a ff ff ff       	jmpq   4029e6 <urlencode+0x37>
  402a9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa1:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402aa6:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402aad:	00 00 
  402aaf:	75 09                	jne    402aba <urlencode+0x10b>
  402ab1:	48 83 c4 10          	add    $0x10,%rsp
  402ab5:	5b                   	pop    %rbx
  402ab6:	5d                   	pop    %rbp
  402ab7:	41 5c                	pop    %r12
  402ab9:	c3                   	retq   
  402aba:	e8 81 e4 ff ff       	callq  400f40 <__stack_chk_fail@plt>

0000000000402abf <submitr>:
  402abf:	41 57                	push   %r15
  402ac1:	41 56                	push   %r14
  402ac3:	41 55                	push   %r13
  402ac5:	41 54                	push   %r12
  402ac7:	55                   	push   %rbp
  402ac8:	53                   	push   %rbx
  402ac9:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402ad0:	49 89 fd             	mov    %rdi,%r13
  402ad3:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402ad7:	49 89 d7             	mov    %rdx,%r15
  402ada:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402adf:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402ae4:	4d 89 ce             	mov    %r9,%r14
  402ae7:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  402aee:	00 
  402aef:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402af6:	00 00 
  402af8:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402aff:	00 
  402b00:	31 c0                	xor    %eax,%eax
  402b02:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402b09:	00 
  402b0a:	ba 00 00 00 00       	mov    $0x0,%edx
  402b0f:	be 01 00 00 00       	mov    $0x1,%esi
  402b14:	bf 02 00 00 00       	mov    $0x2,%edi
  402b19:	e8 e2 e5 ff ff       	callq  401100 <socket@plt>
  402b1e:	85 c0                	test   %eax,%eax
  402b20:	0f 88 c8 01 00 00    	js     402cee <submitr+0x22f>
  402b26:	89 c5                	mov    %eax,%ebp
  402b28:	4c 89 ef             	mov    %r13,%rdi
  402b2b:	e8 a0 e4 ff ff       	callq  400fd0 <gethostbyname@plt>
  402b30:	48 85 c0             	test   %rax,%rax
  402b33:	0f 84 03 02 00 00    	je     402d3c <submitr+0x27d>
  402b39:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  402b3e:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402b45:	00 00 
  402b47:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402b4e:	00 00 
  402b50:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402b57:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402b5b:	48 8b 40 18          	mov    0x18(%rax),%rax
  402b5f:	48 8b 30             	mov    (%rax),%rsi
  402b62:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402b67:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402b6c:	e8 6f e4 ff ff       	callq  400fe0 <__memmove_chk@plt>
  402b71:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402b76:	66 c1 c8 08          	ror    $0x8,%ax
  402b7a:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402b7f:	ba 10 00 00 00       	mov    $0x10,%edx
  402b84:	4c 89 e6             	mov    %r12,%rsi
  402b87:	89 ef                	mov    %ebp,%edi
  402b89:	e8 42 e5 ff ff       	callq  4010d0 <connect@plt>
  402b8e:	85 c0                	test   %eax,%eax
  402b90:	0f 88 0d 02 00 00    	js     402da3 <submitr+0x2e4>
  402b96:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402b9d:	b8 00 00 00 00       	mov    $0x0,%eax
  402ba2:	48 89 f1             	mov    %rsi,%rcx
  402ba5:	4c 89 f7             	mov    %r14,%rdi
  402ba8:	f2 ae                	repnz scas %es:(%rdi),%al
  402baa:	48 f7 d1             	not    %rcx
  402bad:	48 89 ca             	mov    %rcx,%rdx
  402bb0:	48 89 f1             	mov    %rsi,%rcx
  402bb3:	4c 89 ff             	mov    %r15,%rdi
  402bb6:	f2 ae                	repnz scas %es:(%rdi),%al
  402bb8:	48 f7 d1             	not    %rcx
  402bbb:	49 89 c8             	mov    %rcx,%r8
  402bbe:	48 89 f1             	mov    %rsi,%rcx
  402bc1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402bc6:	f2 ae                	repnz scas %es:(%rdi),%al
  402bc8:	48 f7 d1             	not    %rcx
  402bcb:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402bd0:	48 89 f1             	mov    %rsi,%rcx
  402bd3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402bd8:	f2 ae                	repnz scas %es:(%rdi),%al
  402bda:	48 89 c8             	mov    %rcx,%rax
  402bdd:	48 f7 d0             	not    %rax
  402be0:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402be5:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402bea:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402bf1:	00 
  402bf2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402bf8:	0f 87 fe 01 00 00    	ja     402dfc <submitr+0x33d>
  402bfe:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402c05:	00 
  402c06:	b9 00 04 00 00       	mov    $0x400,%ecx
  402c0b:	b8 00 00 00 00       	mov    $0x0,%eax
  402c10:	48 89 f7             	mov    %rsi,%rdi
  402c13:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402c16:	4c 89 f7             	mov    %r14,%rdi
  402c19:	e8 91 fd ff ff       	callq  4029af <urlencode>
  402c1e:	85 c0                	test   %eax,%eax
  402c20:	0f 88 48 02 00 00    	js     402e6e <submitr+0x3af>
  402c26:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  402c2d:	00 
  402c2e:	41 55                	push   %r13
  402c30:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  402c37:	00 
  402c38:	50                   	push   %rax
  402c39:	4d 89 f9             	mov    %r15,%r9
  402c3c:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  402c41:	48 8d 0d 60 11 00 00 	lea    0x1160(%rip),%rcx        # 403da8 <trans_char+0x38>
  402c48:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c4d:	be 01 00 00 00       	mov    $0x1,%esi
  402c52:	4c 89 e7             	mov    %r12,%rdi
  402c55:	b8 00 00 00 00       	mov    $0x0,%eax
  402c5a:	e8 91 e4 ff ff       	callq  4010f0 <__sprintf_chk@plt>
  402c5f:	b8 00 00 00 00       	mov    $0x0,%eax
  402c64:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402c6b:	4c 89 e7             	mov    %r12,%rdi
  402c6e:	f2 ae                	repnz scas %es:(%rdi),%al
  402c70:	48 f7 d1             	not    %rcx
  402c73:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402c77:	4c 89 e6             	mov    %r12,%rsi
  402c7a:	89 ef                	mov    %ebp,%edi
  402c7c:	e8 a1 fb ff ff       	callq  402822 <rio_writen>
  402c81:	48 83 c4 10          	add    $0x10,%rsp
  402c85:	48 85 c0             	test   %rax,%rax
  402c88:	0f 88 6a 02 00 00    	js     402ef8 <submitr+0x439>
  402c8e:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402c93:	89 ee                	mov    %ebp,%esi
  402c95:	4c 89 e7             	mov    %r12,%rdi
  402c98:	e8 43 fb ff ff       	callq  4027e0 <rio_readinitb>
  402c9d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ca4:	00 
  402ca5:	ba 00 20 00 00       	mov    $0x2000,%edx
  402caa:	4c 89 e7             	mov    %r12,%rdi
  402cad:	e8 59 fc ff ff       	callq  40290b <rio_readlineb>
  402cb2:	48 85 c0             	test   %rax,%rax
  402cb5:	0f 8e ab 02 00 00    	jle    402f66 <submitr+0x4a7>
  402cbb:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402cc0:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402cc7:	00 
  402cc8:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402ccf:	00 
  402cd0:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402cd7:	00 
  402cd8:	48 8d 35 40 11 00 00 	lea    0x1140(%rip),%rsi        # 403e1f <trans_char+0xaf>
  402cdf:	b8 00 00 00 00       	mov    $0x0,%eax
  402ce4:	e8 67 e3 ff ff       	callq  401050 <__isoc99_sscanf@plt>
  402ce9:	e9 b3 03 00 00       	jmpq   4030a1 <submitr+0x5e2>
  402cee:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cf5:	3a 20 43 
  402cf8:	48 89 03             	mov    %rax,(%rbx)
  402cfb:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402d02:	20 75 6e 
  402d05:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402d09:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d10:	74 6f 20 
  402d13:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402d17:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402d1e:	65 20 73 
  402d21:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402d25:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402d2c:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402d32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d37:	e9 18 03 00 00       	jmpq   403054 <submitr+0x595>
  402d3c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d43:	3a 20 44 
  402d46:	48 89 03             	mov    %rax,(%rbx)
  402d49:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402d50:	20 75 6e 
  402d53:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402d57:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d5e:	74 6f 20 
  402d61:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402d65:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402d6c:	76 65 20 
  402d6f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402d73:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d7a:	72 20 61 
  402d7d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402d81:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402d88:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402d8e:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402d92:	89 ef                	mov    %ebp,%edi
  402d94:	e8 f7 e1 ff ff       	callq  400f90 <close@plt>
  402d99:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d9e:	e9 b1 02 00 00       	jmpq   403054 <submitr+0x595>
  402da3:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402daa:	3a 20 55 
  402dad:	48 89 03             	mov    %rax,(%rbx)
  402db0:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402db7:	20 74 6f 
  402dba:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402dbe:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402dc5:	65 63 74 
  402dc8:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402dcc:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402dd3:	68 65 20 
  402dd6:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402dda:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  402de1:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402de7:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402deb:	89 ef                	mov    %ebp,%edi
  402ded:	e8 9e e1 ff ff       	callq  400f90 <close@plt>
  402df2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402df7:	e9 58 02 00 00       	jmpq   403054 <submitr+0x595>
  402dfc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402e03:	3a 20 52 
  402e06:	48 89 03             	mov    %rax,(%rbx)
  402e09:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402e10:	20 73 74 
  402e13:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402e17:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402e1e:	74 6f 6f 
  402e21:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402e25:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402e2c:	65 2e 20 
  402e2f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402e33:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402e3a:	61 73 65 
  402e3d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402e41:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402e48:	49 54 52 
  402e4b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402e4f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402e56:	55 46 00 
  402e59:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402e5d:	89 ef                	mov    %ebp,%edi
  402e5f:	e8 2c e1 ff ff       	callq  400f90 <close@plt>
  402e64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e69:	e9 e6 01 00 00       	jmpq   403054 <submitr+0x595>
  402e6e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402e75:	3a 20 52 
  402e78:	48 89 03             	mov    %rax,(%rbx)
  402e7b:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402e82:	20 73 74 
  402e85:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402e89:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402e90:	63 6f 6e 
  402e93:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402e97:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402e9e:	20 61 6e 
  402ea1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ea5:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402eac:	67 61 6c 
  402eaf:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402eb3:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402eba:	6e 70 72 
  402ebd:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402ec1:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402ec8:	6c 65 20 
  402ecb:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402ecf:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402ed6:	63 74 65 
  402ed9:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402edd:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402ee3:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402ee7:	89 ef                	mov    %ebp,%edi
  402ee9:	e8 a2 e0 ff ff       	callq  400f90 <close@plt>
  402eee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ef3:	e9 5c 01 00 00       	jmpq   403054 <submitr+0x595>
  402ef8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402eff:	3a 20 43 
  402f02:	48 89 03             	mov    %rax,(%rbx)
  402f05:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402f0c:	20 75 6e 
  402f0f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402f13:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f1a:	74 6f 20 
  402f1d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402f21:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402f28:	20 74 6f 
  402f2b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402f2f:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402f36:	72 65 73 
  402f39:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402f3d:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402f44:	65 72 76 
  402f47:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402f4b:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402f51:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402f55:	89 ef                	mov    %ebp,%edi
  402f57:	e8 34 e0 ff ff       	callq  400f90 <close@plt>
  402f5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f61:	e9 ee 00 00 00       	jmpq   403054 <submitr+0x595>
  402f66:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f6d:	3a 20 43 
  402f70:	48 89 03             	mov    %rax,(%rbx)
  402f73:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402f7a:	20 75 6e 
  402f7d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402f81:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f88:	74 6f 20 
  402f8b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402f8f:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402f96:	66 69 72 
  402f99:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402f9d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402fa4:	61 64 65 
  402fa7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402fab:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402fb2:	6d 20 72 
  402fb5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402fb9:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402fc0:	20 73 65 
  402fc3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402fc7:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402fce:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402fd2:	89 ef                	mov    %ebp,%edi
  402fd4:	e8 b7 df ff ff       	callq  400f90 <close@plt>
  402fd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fde:	eb 74                	jmp    403054 <submitr+0x595>
  402fe0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fe7:	3a 20 43 
  402fea:	48 89 03             	mov    %rax,(%rbx)
  402fed:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402ff4:	20 75 6e 
  402ff7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ffb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403002:	74 6f 20 
  403005:	48 89 43 10          	mov    %rax,0x10(%rbx)
  403009:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  403010:	68 65 61 
  403013:	48 89 43 18          	mov    %rax,0x18(%rbx)
  403017:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40301e:	66 72 6f 
  403021:	48 89 43 20          	mov    %rax,0x20(%rbx)
  403025:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  40302c:	20 72 65 
  40302f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  403033:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40303a:	73 65 72 
  40303d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  403041:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  403048:	89 ef                	mov    %ebp,%edi
  40304a:	e8 41 df ff ff       	callq  400f90 <close@plt>
  40304f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403054:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40305b:	00 
  40305c:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  403063:	00 00 
  403065:	0f 85 fb 01 00 00    	jne    403266 <submitr+0x7a7>
  40306b:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403072:	5b                   	pop    %rbx
  403073:	5d                   	pop    %rbp
  403074:	41 5c                	pop    %r12
  403076:	41 5d                	pop    %r13
  403078:	41 5e                	pop    %r14
  40307a:	41 5f                	pop    %r15
  40307c:	c3                   	retq   
  40307d:	85 c0                	test   %eax,%eax
  40307f:	74 4e                	je     4030cf <submitr+0x610>
  403081:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403088:	00 
  403089:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40308e:	ba 00 20 00 00       	mov    $0x2000,%edx
  403093:	e8 73 f8 ff ff       	callq  40290b <rio_readlineb>
  403098:	48 85 c0             	test   %rax,%rax
  40309b:	0f 8e 3f ff ff ff    	jle    402fe0 <submitr+0x521>
  4030a1:	0f b6 94 24 50 20 00 	movzbl 0x2050(%rsp),%edx
  4030a8:	00 
  4030a9:	b8 0d 00 00 00       	mov    $0xd,%eax
  4030ae:	29 d0                	sub    %edx,%eax
  4030b0:	75 cb                	jne    40307d <submitr+0x5be>
  4030b2:	0f b6 94 24 51 20 00 	movzbl 0x2051(%rsp),%edx
  4030b9:	00 
  4030ba:	b8 0a 00 00 00       	mov    $0xa,%eax
  4030bf:	29 d0                	sub    %edx,%eax
  4030c1:	75 ba                	jne    40307d <submitr+0x5be>
  4030c3:	0f b6 84 24 52 20 00 	movzbl 0x2052(%rsp),%eax
  4030ca:	00 
  4030cb:	f7 d8                	neg    %eax
  4030cd:	eb ae                	jmp    40307d <submitr+0x5be>
  4030cf:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4030d6:	00 
  4030d7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4030dc:	ba 00 20 00 00       	mov    $0x2000,%edx
  4030e1:	e8 25 f8 ff ff       	callq  40290b <rio_readlineb>
  4030e6:	48 85 c0             	test   %rax,%rax
  4030e9:	7e 66                	jle    403151 <submitr+0x692>
  4030eb:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4030f0:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4030f7:	0f 85 d7 00 00 00    	jne    4031d4 <submitr+0x715>
  4030fd:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403104:	00 
  403105:	48 89 df             	mov    %rbx,%rdi
  403108:	e8 03 de ff ff       	callq  400f10 <strcpy@plt>
  40310d:	89 ef                	mov    %ebp,%edi
  40310f:	e8 7c de ff ff       	callq  400f90 <close@plt>
  403114:	0f b6 03             	movzbl (%rbx),%eax
  403117:	ba 4f 00 00 00       	mov    $0x4f,%edx
  40311c:	29 c2                	sub    %eax,%edx
  40311e:	0f 85 e9 00 00 00    	jne    40320d <submitr+0x74e>
  403124:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  403128:	b8 4b 00 00 00       	mov    $0x4b,%eax
  40312d:	29 c8                	sub    %ecx,%eax
  40312f:	0f 85 da 00 00 00    	jne    40320f <submitr+0x750>
  403135:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  403139:	b8 0a 00 00 00       	mov    $0xa,%eax
  40313e:	29 c8                	sub    %ecx,%eax
  403140:	0f 85 c9 00 00 00    	jne    40320f <submitr+0x750>
  403146:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  40314a:	f7 d8                	neg    %eax
  40314c:	e9 be 00 00 00       	jmpq   40320f <submitr+0x750>
  403151:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403158:	3a 20 43 
  40315b:	48 89 03             	mov    %rax,(%rbx)
  40315e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  403165:	20 75 6e 
  403168:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40316c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403173:	74 6f 20 
  403176:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40317a:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  403181:	73 74 61 
  403184:	48 89 43 18          	mov    %rax,0x18(%rbx)
  403188:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40318f:	65 73 73 
  403192:	48 89 43 20          	mov    %rax,0x20(%rbx)
  403196:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40319d:	72 6f 6d 
  4031a0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4031a4:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4031ab:	6c 74 20 
  4031ae:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4031b2:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4031b9:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4031bf:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4031c3:	89 ef                	mov    %ebp,%edi
  4031c5:	e8 c6 dd ff ff       	callq  400f90 <close@plt>
  4031ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031cf:	e9 80 fe ff ff       	jmpq   403054 <submitr+0x595>
  4031d4:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4031db:	00 
  4031dc:	48 8d 0d 05 0c 00 00 	lea    0xc05(%rip),%rcx        # 403de8 <trans_char+0x78>
  4031e3:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4031ea:	be 01 00 00 00       	mov    $0x1,%esi
  4031ef:	48 89 df             	mov    %rbx,%rdi
  4031f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4031f7:	e8 f4 de ff ff       	callq  4010f0 <__sprintf_chk@plt>
  4031fc:	89 ef                	mov    %ebp,%edi
  4031fe:	e8 8d dd ff ff       	callq  400f90 <close@plt>
  403203:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403208:	e9 47 fe ff ff       	jmpq   403054 <submitr+0x595>
  40320d:	89 d0                	mov    %edx,%eax
  40320f:	f7 d8                	neg    %eax
  403211:	0f 84 3d fe ff ff    	je     403054 <submitr+0x595>
  403217:	b9 05 00 00 00       	mov    $0x5,%ecx
  40321c:	48 8d 3d 0d 0c 00 00 	lea    0xc0d(%rip),%rdi        # 403e30 <trans_char+0xc0>
  403223:	48 89 de             	mov    %rbx,%rsi
  403226:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403228:	0f 97 c0             	seta   %al
  40322b:	0f 92 c1             	setb   %cl
  40322e:	29 c8                	sub    %ecx,%eax
  403230:	0f be c0             	movsbl %al,%eax
  403233:	85 c0                	test   %eax,%eax
  403235:	0f 84 19 fe ff ff    	je     403054 <submitr+0x595>
  40323b:	85 d2                	test   %edx,%edx
  40323d:	75 13                	jne    403252 <submitr+0x793>
  40323f:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  403243:	ba 4b 00 00 00       	mov    $0x4b,%edx
  403248:	29 c2                	sub    %eax,%edx
  40324a:	75 06                	jne    403252 <submitr+0x793>
  40324c:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  403250:	f7 da                	neg    %edx
  403252:	89 d0                	mov    %edx,%eax
  403254:	f7 d8                	neg    %eax
  403256:	0f 84 f8 fd ff ff    	je     403054 <submitr+0x595>
  40325c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403261:	e9 ee fd ff ff       	jmpq   403054 <submitr+0x595>
  403266:	e8 d5 dc ff ff       	callq  400f40 <__stack_chk_fail@plt>

000000000040326b <init_timeout>:
  40326b:	85 ff                	test   %edi,%edi
  40326d:	74 20                	je     40328f <init_timeout+0x24>
  40326f:	53                   	push   %rbx
  403270:	89 fb                	mov    %edi,%ebx
  403272:	85 ff                	test   %edi,%edi
  403274:	78 1b                	js     403291 <init_timeout+0x26>
  403276:	48 8d 35 75 f5 ff ff 	lea    -0xa8b(%rip),%rsi        # 4027f2 <sigalrm_handler>
  40327d:	bf 0e 00 00 00       	mov    $0xe,%edi
  403282:	e8 39 dd ff ff       	callq  400fc0 <signal@plt>
  403287:	89 df                	mov    %ebx,%edi
  403289:	e8 f2 dc ff ff       	callq  400f80 <alarm@plt>
  40328e:	5b                   	pop    %rbx
  40328f:	f3 c3                	repz retq 
  403291:	bb 00 00 00 00       	mov    $0x0,%ebx
  403296:	eb de                	jmp    403276 <init_timeout+0xb>

0000000000403298 <init_driver>:
  403298:	41 54                	push   %r12
  40329a:	55                   	push   %rbp
  40329b:	53                   	push   %rbx
  40329c:	48 83 ec 20          	sub    $0x20,%rsp
  4032a0:	48 89 fd             	mov    %rdi,%rbp
  4032a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4032aa:	00 00 
  4032ac:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4032b1:	31 c0                	xor    %eax,%eax
  4032b3:	be 01 00 00 00       	mov    $0x1,%esi
  4032b8:	bf 0d 00 00 00       	mov    $0xd,%edi
  4032bd:	e8 fe dc ff ff       	callq  400fc0 <signal@plt>
  4032c2:	be 01 00 00 00       	mov    $0x1,%esi
  4032c7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4032cc:	e8 ef dc ff ff       	callq  400fc0 <signal@plt>
  4032d1:	be 01 00 00 00       	mov    $0x1,%esi
  4032d6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4032db:	e8 e0 dc ff ff       	callq  400fc0 <signal@plt>
  4032e0:	ba 00 00 00 00       	mov    $0x0,%edx
  4032e5:	be 01 00 00 00       	mov    $0x1,%esi
  4032ea:	bf 02 00 00 00       	mov    $0x2,%edi
  4032ef:	e8 0c de ff ff       	callq  401100 <socket@plt>
  4032f4:	85 c0                	test   %eax,%eax
  4032f6:	0f 88 99 00 00 00    	js     403395 <init_driver+0xfd>
  4032fc:	89 c3                	mov    %eax,%ebx
  4032fe:	48 8d 3d 30 0b 00 00 	lea    0xb30(%rip),%rdi        # 403e35 <trans_char+0xc5>
  403305:	e8 c6 dc ff ff       	callq  400fd0 <gethostbyname@plt>
  40330a:	48 85 c0             	test   %rax,%rax
  40330d:	0f 84 ce 00 00 00    	je     4033e1 <init_driver+0x149>
  403313:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40331a:	00 
  40331b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  403322:	00 00 
  403324:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40332a:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40332e:	48 8b 40 18          	mov    0x18(%rax),%rax
  403332:	48 8b 30             	mov    (%rax),%rsi
  403335:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40333a:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40333f:	e8 9c dc ff ff       	callq  400fe0 <__memmove_chk@plt>
  403344:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  40334b:	ba 10 00 00 00       	mov    $0x10,%edx
  403350:	48 89 e6             	mov    %rsp,%rsi
  403353:	89 df                	mov    %ebx,%edi
  403355:	e8 76 dd ff ff       	callq  4010d0 <connect@plt>
  40335a:	85 c0                	test   %eax,%eax
  40335c:	0f 88 e7 00 00 00    	js     403449 <init_driver+0x1b1>
  403362:	89 df                	mov    %ebx,%edi
  403364:	e8 27 dc ff ff       	callq  400f90 <close@plt>
  403369:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40336f:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403373:	b8 00 00 00 00       	mov    $0x0,%eax
  403378:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40337d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403384:	00 00 
  403386:	0f 85 10 01 00 00    	jne    40349c <init_driver+0x204>
  40338c:	48 83 c4 20          	add    $0x20,%rsp
  403390:	5b                   	pop    %rbx
  403391:	5d                   	pop    %rbp
  403392:	41 5c                	pop    %r12
  403394:	c3                   	retq   
  403395:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40339c:	3a 20 43 
  40339f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033a3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4033aa:	20 75 6e 
  4033ad:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4033b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4033b8:	74 6f 20 
  4033bb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033bf:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4033c6:	65 20 73 
  4033c9:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4033cd:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4033d4:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4033da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033df:	eb 97                	jmp    403378 <init_driver+0xe0>
  4033e1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4033e8:	3a 20 44 
  4033eb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033ef:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4033f6:	20 75 6e 
  4033f9:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4033fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403404:	74 6f 20 
  403407:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40340b:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  403412:	76 65 20 
  403415:	48 89 45 18          	mov    %rax,0x18(%rbp)
  403419:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403420:	72 20 61 
  403423:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403427:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40342e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  403434:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403438:	89 df                	mov    %ebx,%edi
  40343a:	e8 51 db ff ff       	callq  400f90 <close@plt>
  40343f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403444:	e9 2f ff ff ff       	jmpq   403378 <init_driver+0xe0>
  403449:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403450:	3a 20 55 
  403453:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403457:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40345e:	20 74 6f 
  403461:	48 89 45 08          	mov    %rax,0x8(%rbp)
  403465:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40346c:	65 63 74 
  40346f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403473:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  40347a:	65 72 76 
  40347d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  403481:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403487:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  40348b:	89 df                	mov    %ebx,%edi
  40348d:	e8 fe da ff ff       	callq  400f90 <close@plt>
  403492:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403497:	e9 dc fe ff ff       	jmpq   403378 <init_driver+0xe0>
  40349c:	e8 9f da ff ff       	callq  400f40 <__stack_chk_fail@plt>

00000000004034a1 <driver_post>:
  4034a1:	53                   	push   %rbx
  4034a2:	4c 89 cb             	mov    %r9,%rbx
  4034a5:	45 85 c0             	test   %r8d,%r8d
  4034a8:	75 18                	jne    4034c2 <driver_post+0x21>
  4034aa:	48 85 ff             	test   %rdi,%rdi
  4034ad:	74 05                	je     4034b4 <driver_post+0x13>
  4034af:	80 3f 00             	cmpb   $0x0,(%rdi)
  4034b2:	75 37                	jne    4034eb <driver_post+0x4a>
  4034b4:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4034b9:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4034bd:	44 89 c0             	mov    %r8d,%eax
  4034c0:	5b                   	pop    %rbx
  4034c1:	c3                   	retq   
  4034c2:	48 89 ca             	mov    %rcx,%rdx
  4034c5:	48 8d 35 81 09 00 00 	lea    0x981(%rip),%rsi        # 403e4d <trans_char+0xdd>
  4034cc:	bf 01 00 00 00       	mov    $0x1,%edi
  4034d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4034d6:	e8 95 db ff ff       	callq  401070 <__printf_chk@plt>
  4034db:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4034e0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4034e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4034e9:	eb d5                	jmp    4034c0 <driver_post+0x1f>
  4034eb:	48 83 ec 08          	sub    $0x8,%rsp
  4034ef:	41 51                	push   %r9
  4034f1:	49 89 c9             	mov    %rcx,%r9
  4034f4:	49 89 d0             	mov    %rdx,%r8
  4034f7:	48 89 f9             	mov    %rdi,%rcx
  4034fa:	48 89 f2             	mov    %rsi,%rdx
  4034fd:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  403502:	48 8d 3d 2c 09 00 00 	lea    0x92c(%rip),%rdi        # 403e35 <trans_char+0xc5>
  403509:	e8 b1 f5 ff ff       	callq  402abf <submitr>
  40350e:	48 83 c4 10          	add    $0x10,%rsp
  403512:	eb ac                	jmp    4034c0 <driver_post+0x1f>

0000000000403514 <check>:
  403514:	89 f8                	mov    %edi,%eax
  403516:	c1 e8 1c             	shr    $0x1c,%eax
  403519:	85 c0                	test   %eax,%eax
  40351b:	74 1d                	je     40353a <check+0x26>
  40351d:	b9 00 00 00 00       	mov    $0x0,%ecx
  403522:	83 f9 1f             	cmp    $0x1f,%ecx
  403525:	7f 0d                	jg     403534 <check+0x20>
  403527:	89 f8                	mov    %edi,%eax
  403529:	d3 e8                	shr    %cl,%eax
  40352b:	3c 0a                	cmp    $0xa,%al
  40352d:	74 11                	je     403540 <check+0x2c>
  40352f:	83 c1 08             	add    $0x8,%ecx
  403532:	eb ee                	jmp    403522 <check+0xe>
  403534:	b8 01 00 00 00       	mov    $0x1,%eax
  403539:	c3                   	retq   
  40353a:	b8 00 00 00 00       	mov    $0x0,%eax
  40353f:	c3                   	retq   
  403540:	b8 00 00 00 00       	mov    $0x0,%eax
  403545:	c3                   	retq   

0000000000403546 <gencookie>:
  403546:	53                   	push   %rbx
  403547:	83 c7 01             	add    $0x1,%edi
  40354a:	e8 a1 d9 ff ff       	callq  400ef0 <srandom@plt>
  40354f:	e8 dc da ff ff       	callq  401030 <random@plt>
  403554:	89 c3                	mov    %eax,%ebx
  403556:	89 c7                	mov    %eax,%edi
  403558:	e8 b7 ff ff ff       	callq  403514 <check>
  40355d:	85 c0                	test   %eax,%eax
  40355f:	74 ee                	je     40354f <gencookie+0x9>
  403561:	89 d8                	mov    %ebx,%eax
  403563:	5b                   	pop    %rbx
  403564:	c3                   	retq   
  403565:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40356c:	00 00 00 
  40356f:	90                   	nop

0000000000403570 <__libc_csu_init>:
  403570:	41 57                	push   %r15
  403572:	41 56                	push   %r14
  403574:	41 89 ff             	mov    %edi,%r15d
  403577:	41 55                	push   %r13
  403579:	41 54                	push   %r12
  40357b:	4c 8d 25 a6 18 20 00 	lea    0x2018a6(%rip),%r12        # 604e28 <__CTOR_LIST__>
  403582:	55                   	push   %rbp
  403583:	48 8d 2d 9e 18 20 00 	lea    0x20189e(%rip),%rbp        # 604e28 <__CTOR_LIST__>
  40358a:	53                   	push   %rbx
  40358b:	49 89 f6             	mov    %rsi,%r14
  40358e:	49 89 d5             	mov    %rdx,%r13
  403591:	4c 29 e5             	sub    %r12,%rbp
  403594:	48 83 ec 08          	sub    $0x8,%rsp
  403598:	48 c1 fd 03          	sar    $0x3,%rbp
  40359c:	e8 f7 d8 ff ff       	callq  400e98 <_init>
  4035a1:	48 85 ed             	test   %rbp,%rbp
  4035a4:	74 20                	je     4035c6 <__libc_csu_init+0x56>
  4035a6:	31 db                	xor    %ebx,%ebx
  4035a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4035af:	00 
  4035b0:	4c 89 ea             	mov    %r13,%rdx
  4035b3:	4c 89 f6             	mov    %r14,%rsi
  4035b6:	44 89 ff             	mov    %r15d,%edi
  4035b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4035bd:	48 83 c3 01          	add    $0x1,%rbx
  4035c1:	48 39 eb             	cmp    %rbp,%rbx
  4035c4:	75 ea                	jne    4035b0 <__libc_csu_init+0x40>
  4035c6:	48 83 c4 08          	add    $0x8,%rsp
  4035ca:	5b                   	pop    %rbx
  4035cb:	5d                   	pop    %rbp
  4035cc:	41 5c                	pop    %r12
  4035ce:	41 5d                	pop    %r13
  4035d0:	41 5e                	pop    %r14
  4035d2:	41 5f                	pop    %r15
  4035d4:	c3                   	retq   
  4035d5:	90                   	nop
  4035d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4035dd:	00 00 00 

00000000004035e0 <__libc_csu_fini>:
  4035e0:	f3 c3                	repz retq 
  4035e2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4035e9:	00 00 00 
  4035ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004035f0 <__do_global_ctors_aux>:
  4035f0:	48 8b 05 31 18 20 00 	mov    0x201831(%rip),%rax        # 604e28 <__CTOR_LIST__>
  4035f7:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4035fb:	74 28                	je     403625 <__do_global_ctors_aux+0x35>
  4035fd:	55                   	push   %rbp
  4035fe:	48 89 e5             	mov    %rsp,%rbp
  403601:	53                   	push   %rbx
  403602:	48 8d 1d 1f 18 20 00 	lea    0x20181f(%rip),%rbx        # 604e28 <__CTOR_LIST__>
  403609:	48 83 ec 08          	sub    $0x8,%rsp
  40360d:	0f 1f 00             	nopl   (%rax)
  403610:	48 83 eb 08          	sub    $0x8,%rbx
  403614:	ff d0                	callq  *%rax
  403616:	48 8b 03             	mov    (%rbx),%rax
  403619:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40361d:	75 f1                	jne    403610 <__do_global_ctors_aux+0x20>
  40361f:	48 83 c4 08          	add    $0x8,%rsp
  403623:	5b                   	pop    %rbx
  403624:	5d                   	pop    %rbp
  403625:	f3 c3                	repz retq 

Desmontagem da seção .fini:

0000000000403628 <_fini>:
  403628:	48 83 ec 08          	sub    $0x8,%rsp
  40362c:	e8 af db ff ff       	callq  4011e0 <__do_global_dtors_aux>
  403631:	48 83 c4 08          	add    $0x8,%rsp
  403635:	c3                   	retq   
