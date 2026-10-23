
_openfilestest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char* argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
  13:	8b 41 04             	mov    0x4(%ecx),%eax
    if (argc < 2 || argc > 2) {
  16:	83 39 02             	cmpl   $0x2,(%ecx)
  19:	74 13                	je     2e <main+0x2e>
        printf(1, "Usage: getfilenumtest <num_files_to_open>\nExample: getfilenumtest 3\t<-- opens 3 files for this process.\n");
  1b:	53                   	push   %ebx
  1c:	53                   	push   %ebx
  1d:	68 28 08 00 00       	push   $0x828
  22:	6a 01                	push   $0x1
  24:	e8 97 04 00 00       	call   4c0 <printf>
        exit();
  29:	e8 25 03 00 00       	call   353 <exit>
    }

    int n_files_to_open = atoi(argv[1]);
  2e:	83 ec 0c             	sub    $0xc,%esp
  31:	ff 70 04             	push   0x4(%eax)
  34:	e8 97 02 00 00       	call   2d0 <atoi>
    for (int i = 0; i < n_files_to_open; ++i) {
  39:	83 c4 10             	add    $0x10,%esp
    int n_files_to_open = atoi(argv[1]);
  3c:	89 c6                	mov    %eax,%esi
    for (int i = 0; i < n_files_to_open; ++i) {
  3e:	85 c0                	test   %eax,%eax
  40:	7e 3c                	jle    7e <main+0x7e>
  42:	31 db                	xor    %ebx,%ebx
  44:	eb 11                	jmp    57 <main+0x57>
  46:	66 90                	xchg   %ax,%ax
  48:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  4f:	00 
  50:	83 c3 01             	add    $0x1,%ebx
  53:	39 de                	cmp    %ebx,%esi
  55:	74 27                	je     7e <main+0x7e>
        int fd = open("README", O_RDONLY);
  57:	83 ec 08             	sub    $0x8,%esp
  5a:	6a 00                	push   $0x0
  5c:	68 2f 09 00 00       	push   $0x92f
  61:	e8 2d 03 00 00       	call   393 <open>

        if (fd < 0) {
  66:	83 c4 10             	add    $0x10,%esp
  69:	85 c0                	test   %eax,%eax
  6b:	79 e3                	jns    50 <main+0x50>
            printf(1, "Cannot open more files than the max limit of 16.\n");
  6d:	51                   	push   %ecx
  6e:	51                   	push   %ecx
  6f:	68 94 08 00 00       	push   $0x894
  74:	6a 01                	push   $0x1
  76:	e8 45 04 00 00       	call   4c0 <printf>
            break;
  7b:	83 c4 10             	add    $0x10,%esp
        }
    }

    printf(1, "My PID: %d\n", getpid());
  7e:	e8 50 03 00 00       	call   3d3 <getpid>
  83:	52                   	push   %edx
  84:	50                   	push   %eax
  85:	68 36 09 00 00       	push   $0x936
  8a:	6a 01                	push   $0x1
  8c:	e8 2f 04 00 00       	call   4c0 <printf>
    printf(1, "The amount of open files I (pid = %d) have open is:\n", getpid());
  91:	e8 3d 03 00 00       	call   3d3 <getpid>
  96:	83 c4 0c             	add    $0xc,%esp
  99:	50                   	push   %eax
  9a:	68 c8 08 00 00       	push   $0x8c8
  9f:	6a 01                	push   $0x1
  a1:	e8 1a 04 00 00       	call   4c0 <printf>
    printf(1, "stdin + stdout + stderr + %d = %d open files.\n", n_files_to_open, getfilenum(getpid()));
  a6:	e8 28 03 00 00       	call   3d3 <getpid>
  ab:	89 04 24             	mov    %eax,(%esp)
  ae:	e8 40 03 00 00       	call   3f3 <getfilenum>
  b3:	50                   	push   %eax
  b4:	56                   	push   %esi
  b5:	68 00 09 00 00       	push   $0x900
  ba:	6a 01                	push   $0x1
  bc:	e8 ff 03 00 00       	call   4c0 <printf>

    exit();
  c1:	83 c4 20             	add    $0x20,%esp
  c4:	e8 8a 02 00 00       	call   353 <exit>
  c9:	66 90                	xchg   %ax,%ax
  cb:	66 90                	xchg   %ax,%ax
  cd:	66 90                	xchg   %ax,%ax
  cf:	66 90                	xchg   %ax,%ax
  d1:	66 90                	xchg   %ax,%ax
  d3:	66 90                	xchg   %ax,%ax
  d5:	66 90                	xchg   %ax,%ax
  d7:	66 90                	xchg   %ax,%ax
  d9:	66 90                	xchg   %ax,%ax
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  e1:	31 c0                	xor    %eax,%eax
{
  e3:	89 e5                	mov    %esp,%ebp
  e5:	53                   	push   %ebx
  e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  f7:	83 c0 01             	add    $0x1,%eax
  fa:	84 d2                	test   %dl,%dl
  fc:	75 f2                	jne    f0 <strcpy+0x10>
    ;
  return os;
}
  fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 101:	89 c8                	mov    %ecx,%eax
 103:	c9                   	leave
 104:	c3                   	ret
 105:	8d 76 00             	lea    0x0(%esi),%esi
 108:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 10f:	00 

00000110 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	53                   	push   %ebx
 114:	8b 55 08             	mov    0x8(%ebp),%edx
 117:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 11a:	0f b6 02             	movzbl (%edx),%eax
 11d:	84 c0                	test   %al,%al
 11f:	75 2d                	jne    14e <strcmp+0x3e>
 121:	eb 4a                	jmp    16d <strcmp+0x5d>
 123:	eb 1b                	jmp    140 <strcmp+0x30>
 125:	8d 76 00             	lea    0x0(%esi),%esi
 128:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 12f:	00 
 130:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 137:	00 
 138:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 13f:	00 
 140:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 144:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 147:	84 c0                	test   %al,%al
 149:	74 15                	je     160 <strcmp+0x50>
 14b:	83 c1 01             	add    $0x1,%ecx
 14e:	0f b6 19             	movzbl (%ecx),%ebx
 151:	38 c3                	cmp    %al,%bl
 153:	74 eb                	je     140 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 155:	29 d8                	sub    %ebx,%eax
}
 157:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 15a:	c9                   	leave
 15b:	c3                   	ret
 15c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
 160:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 164:	31 c0                	xor    %eax,%eax
 166:	29 d8                	sub    %ebx,%eax
}
 168:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 16b:	c9                   	leave
 16c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 16d:	0f b6 19             	movzbl (%ecx),%ebx
 170:	31 c0                	xor    %eax,%eax
 172:	eb e1                	jmp    155 <strcmp+0x45>
 174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 178:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 17f:	00 

00000180 <strlen>:

uint
strlen(const char *s)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 186:	80 3a 00             	cmpb   $0x0,(%edx)
 189:	74 15                	je     1a0 <strlen+0x20>
 18b:	31 c0                	xor    %eax,%eax
 18d:	8d 76 00             	lea    0x0(%esi),%esi
 190:	83 c0 01             	add    $0x1,%eax
 193:	89 c1                	mov    %eax,%ecx
 195:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 199:	75 f5                	jne    190 <strlen+0x10>
    ;
  return n;
}
 19b:	89 c8                	mov    %ecx,%eax
 19d:	5d                   	pop    %ebp
 19e:	c3                   	ret
 19f:	90                   	nop
  for(n = 0; s[n]; n++)
 1a0:	31 c9                	xor    %ecx,%ecx
}
 1a2:	5d                   	pop    %ebp
 1a3:	89 c8                	mov    %ecx,%eax
 1a5:	c3                   	ret
 1a6:	66 90                	xchg   %ax,%ax
 1a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1af:	00 

000001b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1b4:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1b7:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ba:	8b 7d 08             	mov    0x8(%ebp),%edi
 1bd:	fc                   	cld
 1be:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1c0:	8b 45 08             	mov    0x8(%ebp),%eax
 1c3:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1c6:	c9                   	leave
 1c7:	c3                   	ret
 1c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cf:	00 

000001d0 <strchr>:

char*
strchr(const char *s, char c)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	8b 45 08             	mov    0x8(%ebp),%eax
 1d6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 1da:	0f b6 10             	movzbl (%eax),%edx
 1dd:	84 d2                	test   %dl,%dl
 1df:	75 1a                	jne    1fb <strchr+0x2b>
 1e1:	eb 25                	jmp    208 <strchr+0x38>
 1e3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 1e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ef:	00 
 1f0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 1f4:	83 c0 01             	add    $0x1,%eax
 1f7:	84 d2                	test   %dl,%dl
 1f9:	74 0d                	je     208 <strchr+0x38>
    if(*s == c)
 1fb:	38 d1                	cmp    %dl,%cl
 1fd:	75 f1                	jne    1f0 <strchr+0x20>
      return (char*)s;
  return 0;
}
 1ff:	5d                   	pop    %ebp
 200:	c3                   	ret
 201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 208:	31 c0                	xor    %eax,%eax
}
 20a:	5d                   	pop    %ebp
 20b:	c3                   	ret
 20c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000210 <gets>:

char*
gets(char *buf, int max)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
 214:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 215:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 218:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 219:	31 db                	xor    %ebx,%ebx
{
 21b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 21e:	eb 27                	jmp    247 <gets+0x37>
    cc = read(0, &c, 1);
 220:	83 ec 04             	sub    $0x4,%esp
 223:	6a 01                	push   $0x1
 225:	57                   	push   %edi
 226:	6a 00                	push   $0x0
 228:	e8 3e 01 00 00       	call   36b <read>
    if(cc < 1)
 22d:	83 c4 10             	add    $0x10,%esp
 230:	85 c0                	test   %eax,%eax
 232:	7e 1d                	jle    251 <gets+0x41>
      break;
    buf[i++] = c;
 234:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 238:	8b 55 08             	mov    0x8(%ebp),%edx
 23b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 23f:	3c 0a                	cmp    $0xa,%al
 241:	74 1d                	je     260 <gets+0x50>
 243:	3c 0d                	cmp    $0xd,%al
 245:	74 19                	je     260 <gets+0x50>
  for(i=0; i+1 < max; ){
 247:	89 de                	mov    %ebx,%esi
 249:	83 c3 01             	add    $0x1,%ebx
 24c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 24f:	7c cf                	jl     220 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 251:	8b 45 08             	mov    0x8(%ebp),%eax
 254:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 258:	8d 65 f4             	lea    -0xc(%ebp),%esp
 25b:	5b                   	pop    %ebx
 25c:	5e                   	pop    %esi
 25d:	5f                   	pop    %edi
 25e:	5d                   	pop    %ebp
 25f:	c3                   	ret
  buf[i] = '\0';
 260:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 263:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 265:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 269:	8d 65 f4             	lea    -0xc(%ebp),%esp
 26c:	5b                   	pop    %ebx
 26d:	5e                   	pop    %esi
 26e:	5f                   	pop    %edi
 26f:	5d                   	pop    %ebp
 270:	c3                   	ret
 271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 278:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 27f:	00 

00000280 <stat>:

int
stat(const char *n, struct stat *st)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	56                   	push   %esi
 284:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 285:	83 ec 08             	sub    $0x8,%esp
 288:	6a 00                	push   $0x0
 28a:	ff 75 08             	push   0x8(%ebp)
 28d:	e8 01 01 00 00       	call   393 <open>
  if(fd < 0)
 292:	83 c4 10             	add    $0x10,%esp
 295:	85 c0                	test   %eax,%eax
 297:	78 27                	js     2c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 299:	83 ec 08             	sub    $0x8,%esp
 29c:	ff 75 0c             	push   0xc(%ebp)
 29f:	89 c3                	mov    %eax,%ebx
 2a1:	50                   	push   %eax
 2a2:	e8 04 01 00 00       	call   3ab <fstat>
  close(fd);
 2a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2aa:	89 c6                	mov    %eax,%esi
  close(fd);
 2ac:	e8 ca 00 00 00       	call   37b <close>
  return r;
 2b1:	83 c4 10             	add    $0x10,%esp
}
 2b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2b7:	89 f0                	mov    %esi,%eax
 2b9:	5b                   	pop    %ebx
 2ba:	5e                   	pop    %esi
 2bb:	5d                   	pop    %ebp
 2bc:	c3                   	ret
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2c5:	eb ed                	jmp    2b4 <stat+0x34>
 2c7:	90                   	nop
 2c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2cf:	00 

000002d0 <atoi>:

int
atoi(const char *s)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
 2d4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2d7:	0f be 02             	movsbl (%edx),%eax
 2da:	8d 48 d0             	lea    -0x30(%eax),%ecx
 2dd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 2e0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 2e5:	77 2e                	ja     315 <atoi+0x45>
 2e7:	eb 17                	jmp    300 <atoi+0x30>
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2f7:	00 
 2f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ff:	00 
    n = n*10 + *s++ - '0';
 300:	83 c2 01             	add    $0x1,%edx
 303:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 306:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 30a:	0f be 02             	movsbl (%edx),%eax
 30d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 310:	80 fb 09             	cmp    $0x9,%bl
 313:	76 eb                	jbe    300 <atoi+0x30>
  return n;
}
 315:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 318:	89 c8                	mov    %ecx,%eax
 31a:	c9                   	leave
 31b:	c3                   	ret
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000320 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	57                   	push   %edi
 324:	8b 45 10             	mov    0x10(%ebp),%eax
 327:	8b 55 08             	mov    0x8(%ebp),%edx
 32a:	56                   	push   %esi
 32b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 32e:	85 c0                	test   %eax,%eax
 330:	7e 13                	jle    345 <memmove+0x25>
 332:	01 d0                	add    %edx,%eax
  dst = vdst;
 334:	89 d7                	mov    %edx,%edi
 336:	66 90                	xchg   %ax,%ax
 338:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 33f:	00 
    *dst++ = *src++;
 340:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 341:	39 f8                	cmp    %edi,%eax
 343:	75 fb                	jne    340 <memmove+0x20>
  return vdst;
}
 345:	5e                   	pop    %esi
 346:	89 d0                	mov    %edx,%eax
 348:	5f                   	pop    %edi
 349:	5d                   	pop    %ebp
 34a:	c3                   	ret

0000034b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 34b:	b8 01 00 00 00       	mov    $0x1,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <exit>:
SYSCALL(exit)
 353:	b8 02 00 00 00       	mov    $0x2,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <wait>:
SYSCALL(wait)
 35b:	b8 03 00 00 00       	mov    $0x3,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <pipe>:
SYSCALL(pipe)
 363:	b8 04 00 00 00       	mov    $0x4,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <read>:
SYSCALL(read)
 36b:	b8 05 00 00 00       	mov    $0x5,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <write>:
SYSCALL(write)
 373:	b8 10 00 00 00       	mov    $0x10,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <close>:
SYSCALL(close)
 37b:	b8 15 00 00 00       	mov    $0x15,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret

00000383 <kill>:
SYSCALL(kill)
 383:	b8 06 00 00 00       	mov    $0x6,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret

0000038b <exec>:
SYSCALL(exec)
 38b:	b8 07 00 00 00       	mov    $0x7,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <open>:
SYSCALL(open)
 393:	b8 0f 00 00 00       	mov    $0xf,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret

0000039b <mknod>:
SYSCALL(mknod)
 39b:	b8 11 00 00 00       	mov    $0x11,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret

000003a3 <unlink>:
SYSCALL(unlink)
 3a3:	b8 12 00 00 00       	mov    $0x12,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret

000003ab <fstat>:
SYSCALL(fstat)
 3ab:	b8 08 00 00 00       	mov    $0x8,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret

000003b3 <link>:
SYSCALL(link)
 3b3:	b8 13 00 00 00       	mov    $0x13,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret

000003bb <mkdir>:
SYSCALL(mkdir)
 3bb:	b8 14 00 00 00       	mov    $0x14,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret

000003c3 <chdir>:
SYSCALL(chdir)
 3c3:	b8 09 00 00 00       	mov    $0x9,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret

000003cb <dup>:
SYSCALL(dup)
 3cb:	b8 0a 00 00 00       	mov    $0xa,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret

000003d3 <getpid>:
SYSCALL(getpid)
 3d3:	b8 0b 00 00 00       	mov    $0xb,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret

000003db <sbrk>:
SYSCALL(sbrk)
 3db:	b8 0c 00 00 00       	mov    $0xc,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret

000003e3 <sleep>:
SYSCALL(sleep)
 3e3:	b8 0d 00 00 00       	mov    $0xd,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret

000003eb <uptime>:
SYSCALL(uptime)
 3eb:	b8 0e 00 00 00       	mov    $0xe,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret

000003f3 <getfilenum>:
SYSCALL(getfilenum)
 3f3:	b8 16 00 00 00       	mov    $0x16,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret
 3fb:	66 90                	xchg   %ax,%ax
 3fd:	66 90                	xchg   %ax,%ax
 3ff:	90                   	nop

00000400 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
 405:	53                   	push   %ebx
 406:	89 cb                	mov    %ecx,%ebx
 408:	83 ec 3c             	sub    $0x3c,%esp
 40b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 40e:	85 d2                	test   %edx,%edx
 410:	0f 89 9a 00 00 00    	jns    4b0 <printint+0xb0>
 416:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 41a:	0f 84 90 00 00 00    	je     4b0 <printint+0xb0>
    neg = 1;
    x = -xx;
 420:	f7 da                	neg    %edx
    neg = 1;
 422:	b8 01 00 00 00       	mov    $0x1,%eax
 427:	89 45 c0             	mov    %eax,-0x40(%ebp)
 42a:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 42c:	31 f6                	xor    %esi,%esi
 42e:	66 90                	xchg   %ax,%ax
 430:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 437:	00 
 438:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43f:	00 
  do{
    buf[i++] = digits[x % base];
 440:	89 c8                	mov    %ecx,%eax
 442:	31 d2                	xor    %edx,%edx
 444:	89 f7                	mov    %esi,%edi
 446:	f7 f3                	div    %ebx
 448:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 44b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 44d:	0f b6 92 a4 09 00 00 	movzbl 0x9a4(%edx),%edx
  }while((x /= base) != 0);
 454:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 456:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 45a:	73 e4                	jae    440 <printint+0x40>
  if(neg)
 45c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 45f:	85 c0                	test   %eax,%eax
 461:	74 07                	je     46a <printint+0x6a>
    buf[i++] = '-';
 463:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 468:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 46a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 46e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 471:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 474:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 478:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47f:	00 
    putc(fd, buf[i]);
 480:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 483:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 486:	83 ee 01             	sub    $0x1,%esi
 489:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 48c:	8d 45 d7             	lea    -0x29(%ebp),%eax
 48f:	6a 01                	push   $0x1
 491:	50                   	push   %eax
 492:	57                   	push   %edi
 493:	e8 db fe ff ff       	call   373 <write>
  while(--i >= 0)
 498:	83 c4 10             	add    $0x10,%esp
 49b:	39 f3                	cmp    %esi,%ebx
 49d:	75 e1                	jne    480 <printint+0x80>
}
 49f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a2:	5b                   	pop    %ebx
 4a3:	5e                   	pop    %esi
 4a4:	5f                   	pop    %edi
 4a5:	5d                   	pop    %ebp
 4a6:	c3                   	ret
 4a7:	90                   	nop
 4a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4af:	00 
  neg = 0;
 4b0:	31 c0                	xor    %eax,%eax
 4b2:	e9 70 ff ff ff       	jmp    427 <printint+0x27>
 4b7:	90                   	nop
 4b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4bf:	00 

000004c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
 4c5:	53                   	push   %ebx
 4c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 4cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 4cf:	0f b6 13             	movzbl (%ebx),%edx
 4d2:	83 c3 01             	add    $0x1,%ebx
 4d5:	84 d2                	test   %dl,%dl
 4d7:	0f 84 a0 00 00 00    	je     57d <printf+0xbd>
 4dd:	8d 45 10             	lea    0x10(%ebp),%eax
 4e0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 4e3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 4e6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 4e9:	eb 28                	jmp    513 <printf+0x53>
 4eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 4f0:	83 ec 04             	sub    $0x4,%esp
 4f3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 4f6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 4f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 4fc:	6a 01                	push   $0x1
 4fe:	50                   	push   %eax
 4ff:	56                   	push   %esi
 500:	e8 6e fe ff ff       	call   373 <write>
  for(i = 0; fmt[i]; i++){
 505:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 509:	83 c4 10             	add    $0x10,%esp
 50c:	84 d2                	test   %dl,%dl
 50e:	74 6d                	je     57d <printf+0xbd>
    c = fmt[i] & 0xff;
 510:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 513:	83 f8 25             	cmp    $0x25,%eax
 516:	75 d8                	jne    4f0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 518:	0f b6 13             	movzbl (%ebx),%edx
 51b:	84 d2                	test   %dl,%dl
 51d:	74 5e                	je     57d <printf+0xbd>
    c = fmt[i] & 0xff;
 51f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 522:	80 fa 25             	cmp    $0x25,%dl
 525:	0f 84 25 01 00 00    	je     650 <printf+0x190>
 52b:	83 e8 63             	sub    $0x63,%eax
 52e:	83 f8 15             	cmp    $0x15,%eax
 531:	77 0d                	ja     540 <printf+0x80>
 533:	ff 24 85 4c 09 00 00 	jmp    *0x94c(,%eax,4)
 53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 540:	83 ec 04             	sub    $0x4,%esp
 543:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 546:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 549:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 54d:	6a 01                	push   $0x1
 54f:	51                   	push   %ecx
 550:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 553:	56                   	push   %esi
 554:	e8 1a fe ff ff       	call   373 <write>
        putc(fd, c);
 559:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 55d:	83 c4 0c             	add    $0xc,%esp
 560:	88 55 e7             	mov    %dl,-0x19(%ebp)
 563:	6a 01                	push   $0x1
 565:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 568:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 569:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 56c:	56                   	push   %esi
 56d:	e8 01 fe ff ff       	call   373 <write>
  for(i = 0; fmt[i]; i++){
 572:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 576:	83 c4 10             	add    $0x10,%esp
 579:	84 d2                	test   %dl,%dl
 57b:	75 93                	jne    510 <printf+0x50>
      }
      state = 0;
    }
  }
}
 57d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 580:	5b                   	pop    %ebx
 581:	5e                   	pop    %esi
 582:	5f                   	pop    %edi
 583:	5d                   	pop    %ebp
 584:	c3                   	ret
 585:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 588:	83 ec 0c             	sub    $0xc,%esp
 58b:	8b 17                	mov    (%edi),%edx
 58d:	b9 10 00 00 00       	mov    $0x10,%ecx
 592:	89 f0                	mov    %esi,%eax
 594:	6a 00                	push   $0x0
 596:	e8 65 fe ff ff       	call   400 <printint>
  for(i = 0; fmt[i]; i++){
 59b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 59f:	83 c3 02             	add    $0x2,%ebx
 5a2:	83 c4 10             	add    $0x10,%esp
 5a5:	84 d2                	test   %dl,%dl
 5a7:	74 d4                	je     57d <printf+0xbd>
        ap++;
 5a9:	83 c7 04             	add    $0x4,%edi
 5ac:	e9 5f ff ff ff       	jmp    510 <printf+0x50>
 5b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 5b8:	8b 07                	mov    (%edi),%eax
        ap++;
 5ba:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 5bd:	85 c0                	test   %eax,%eax
 5bf:	0f 84 9b 00 00 00    	je     660 <printf+0x1a0>
        while(*s != 0){
 5c5:	0f b6 10             	movzbl (%eax),%edx
 5c8:	84 d2                	test   %dl,%dl
 5ca:	0f 84 a2 00 00 00    	je     672 <printf+0x1b2>
 5d0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 5d3:	89 c7                	mov    %eax,%edi
 5d5:	89 d0                	mov    %edx,%eax
 5d7:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 5da:	89 fb                	mov    %edi,%ebx
 5dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
 5df:	90                   	nop
  write(fd, &c, 1);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 5e6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5e9:	6a 01                	push   $0x1
 5eb:	57                   	push   %edi
 5ec:	56                   	push   %esi
 5ed:	e8 81 fd ff ff       	call   373 <write>
        while(*s != 0){
 5f2:	0f b6 03             	movzbl (%ebx),%eax
 5f5:	83 c4 10             	add    $0x10,%esp
 5f8:	84 c0                	test   %al,%al
 5fa:	75 e4                	jne    5e0 <printf+0x120>
 5fc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 5ff:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 603:	83 c3 02             	add    $0x2,%ebx
 606:	84 d2                	test   %dl,%dl
 608:	0f 85 d5 fe ff ff    	jne    4e3 <printf+0x23>
 60e:	e9 6a ff ff ff       	jmp    57d <printf+0xbd>
 613:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 618:	83 ec 0c             	sub    $0xc,%esp
 61b:	8b 17                	mov    (%edi),%edx
 61d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 622:	89 f0                	mov    %esi,%eax
 624:	6a 01                	push   $0x1
 626:	e8 d5 fd ff ff       	call   400 <printint>
  for(i = 0; fmt[i]; i++){
 62b:	e9 6b ff ff ff       	jmp    59b <printf+0xdb>
        putc(fd, *ap);
 630:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 632:	83 ec 04             	sub    $0x4,%esp
 635:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 638:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 63b:	6a 01                	push   $0x1
 63d:	51                   	push   %ecx
 63e:	56                   	push   %esi
 63f:	e8 2f fd ff ff       	call   373 <write>
 644:	e9 52 ff ff ff       	jmp    59b <printf+0xdb>
 649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 650:	83 ec 04             	sub    $0x4,%esp
 653:	88 55 e7             	mov    %dl,-0x19(%ebp)
 656:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 659:	6a 01                	push   $0x1
 65b:	e9 08 ff ff ff       	jmp    568 <printf+0xa8>
          s = "(null)";
 660:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 663:	b8 28 00 00 00       	mov    $0x28,%eax
 668:	bf 42 09 00 00       	mov    $0x942,%edi
 66d:	e9 65 ff ff ff       	jmp    5d7 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 672:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 676:	83 c3 02             	add    $0x2,%ebx
 679:	84 d2                	test   %dl,%dl
 67b:	0f 85 8f fe ff ff    	jne    510 <printf+0x50>
 681:	e9 f7 fe ff ff       	jmp    57d <printf+0xbd>
 686:	66 90                	xchg   %ax,%ax
 688:	66 90                	xchg   %ax,%ax
 68a:	66 90                	xchg   %ax,%ax
 68c:	66 90                	xchg   %ax,%ax
 68e:	66 90                	xchg   %ax,%ax
 690:	66 90                	xchg   %ax,%ax
 692:	66 90                	xchg   %ax,%ax
 694:	66 90                	xchg   %ax,%ax
 696:	66 90                	xchg   %ax,%ax
 698:	66 90                	xchg   %ax,%ax
 69a:	66 90                	xchg   %ax,%ax
 69c:	66 90                	xchg   %ax,%ax
 69e:	66 90                	xchg   %ax,%ax

000006a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6a1:	a1 54 0c 00 00       	mov    0xc54,%eax
{
 6a6:	89 e5                	mov    %esp,%ebp
 6a8:	57                   	push   %edi
 6a9:	56                   	push   %esi
 6aa:	53                   	push   %ebx
 6ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6bf:	00 
 6c0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6c2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c4:	39 ca                	cmp    %ecx,%edx
 6c6:	73 30                	jae    6f8 <free+0x58>
 6c8:	39 c1                	cmp    %eax,%ecx
 6ca:	72 04                	jb     6d0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6cc:	39 c2                	cmp    %eax,%edx
 6ce:	72 f0                	jb     6c0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6d3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6d6:	39 f8                	cmp    %edi,%eax
 6d8:	74 36                	je     710 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 6da:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6dd:	8b 42 04             	mov    0x4(%edx),%eax
 6e0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6e3:	39 f1                	cmp    %esi,%ecx
 6e5:	74 40                	je     727 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 6e7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6e9:	5b                   	pop    %ebx
  freep = p;
 6ea:	89 15 54 0c 00 00    	mov    %edx,0xc54
}
 6f0:	5e                   	pop    %esi
 6f1:	5f                   	pop    %edi
 6f2:	5d                   	pop    %ebp
 6f3:	c3                   	ret
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6f8:	39 c2                	cmp    %eax,%edx
 6fa:	72 c4                	jb     6c0 <free+0x20>
 6fc:	39 c1                	cmp    %eax,%ecx
 6fe:	73 c0                	jae    6c0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 700:	8b 73 fc             	mov    -0x4(%ebx),%esi
 703:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 706:	39 f8                	cmp    %edi,%eax
 708:	75 d0                	jne    6da <free+0x3a>
 70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 710:	03 70 04             	add    0x4(%eax),%esi
 713:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 716:	8b 02                	mov    (%edx),%eax
 718:	8b 00                	mov    (%eax),%eax
 71a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 71d:	8b 42 04             	mov    0x4(%edx),%eax
 720:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 723:	39 f1                	cmp    %esi,%ecx
 725:	75 c0                	jne    6e7 <free+0x47>
    p->s.size += bp->s.size;
 727:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 72a:	89 15 54 0c 00 00    	mov    %edx,0xc54
    p->s.size += bp->s.size;
 730:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 733:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 736:	89 0a                	mov    %ecx,(%edx)
}
 738:	5b                   	pop    %ebx
 739:	5e                   	pop    %esi
 73a:	5f                   	pop    %edi
 73b:	5d                   	pop    %ebp
 73c:	c3                   	ret
 73d:	8d 76 00             	lea    0x0(%esi),%esi

00000740 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 749:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 74c:	8b 15 54 0c 00 00    	mov    0xc54,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 752:	8d 78 07             	lea    0x7(%eax),%edi
 755:	c1 ef 03             	shr    $0x3,%edi
 758:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 75b:	85 d2                	test   %edx,%edx
 75d:	0f 84 8d 00 00 00    	je     7f0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 763:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 765:	8b 48 04             	mov    0x4(%eax),%ecx
 768:	39 f9                	cmp    %edi,%ecx
 76a:	73 64                	jae    7d0 <malloc+0x90>
  if(nu < 4096)
 76c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 771:	39 df                	cmp    %ebx,%edi
 773:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 776:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 77d:	eb 0a                	jmp    789 <malloc+0x49>
 77f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 780:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 782:	8b 48 04             	mov    0x4(%eax),%ecx
 785:	39 f9                	cmp    %edi,%ecx
 787:	73 47                	jae    7d0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 789:	89 c2                	mov    %eax,%edx
 78b:	39 05 54 0c 00 00    	cmp    %eax,0xc54
 791:	75 ed                	jne    780 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 793:	83 ec 0c             	sub    $0xc,%esp
 796:	56                   	push   %esi
 797:	e8 3f fc ff ff       	call   3db <sbrk>
  if(p == (char*)-1)
 79c:	83 c4 10             	add    $0x10,%esp
 79f:	83 f8 ff             	cmp    $0xffffffff,%eax
 7a2:	74 1c                	je     7c0 <malloc+0x80>
  hp->s.size = nu;
 7a4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7a7:	83 ec 0c             	sub    $0xc,%esp
 7aa:	83 c0 08             	add    $0x8,%eax
 7ad:	50                   	push   %eax
 7ae:	e8 ed fe ff ff       	call   6a0 <free>
  return freep;
 7b3:	8b 15 54 0c 00 00    	mov    0xc54,%edx
      if((p = morecore(nunits)) == 0)
 7b9:	83 c4 10             	add    $0x10,%esp
 7bc:	85 d2                	test   %edx,%edx
 7be:	75 c0                	jne    780 <malloc+0x40>
        return 0;
  }
}
 7c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7c3:	31 c0                	xor    %eax,%eax
}
 7c5:	5b                   	pop    %ebx
 7c6:	5e                   	pop    %esi
 7c7:	5f                   	pop    %edi
 7c8:	5d                   	pop    %ebp
 7c9:	c3                   	ret
 7ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 7d0:	39 cf                	cmp    %ecx,%edi
 7d2:	74 4c                	je     820 <malloc+0xe0>
        p->s.size -= nunits;
 7d4:	29 f9                	sub    %edi,%ecx
 7d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7dc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 7df:	89 15 54 0c 00 00    	mov    %edx,0xc54
}
 7e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 7e8:	83 c0 08             	add    $0x8,%eax
}
 7eb:	5b                   	pop    %ebx
 7ec:	5e                   	pop    %esi
 7ed:	5f                   	pop    %edi
 7ee:	5d                   	pop    %ebp
 7ef:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 7f0:	c7 05 54 0c 00 00 58 	movl   $0xc58,0xc54
 7f7:	0c 00 00 
    base.s.size = 0;
 7fa:	b8 58 0c 00 00       	mov    $0xc58,%eax
    base.s.ptr = freep = prevp = &base;
 7ff:	c7 05 58 0c 00 00 58 	movl   $0xc58,0xc58
 806:	0c 00 00 
    base.s.size = 0;
 809:	c7 05 5c 0c 00 00 00 	movl   $0x0,0xc5c
 810:	00 00 00 
    if(p->s.size >= nunits){
 813:	e9 54 ff ff ff       	jmp    76c <malloc+0x2c>
 818:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 81f:	00 
        prevp->s.ptr = p->s.ptr;
 820:	8b 08                	mov    (%eax),%ecx
 822:	89 0a                	mov    %ecx,(%edx)
 824:	eb b9                	jmp    7df <malloc+0x9f>
