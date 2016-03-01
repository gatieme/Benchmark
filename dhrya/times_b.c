/*timers_b.c*/
#define UNIX
#ifdef UNIX
#include <sys/time.h>
#include <sys/resource.h>
#ifdef hpux
#include <sys/syscall.h>
#define getrusage(a,b) syscall(SYS_getrusage,a,b)
#endif

struct rusage rusage;
double dtime()
{
 double q;
 getrusage(RUSAGE_SELF,&rusage);
 q = (double)(rusage.ru_utime.tv_sec);
 q = q + (double)(rusage.ru_utime.tv_usec) * 1.0e-06;
 return q;
}
#endif

/***************************************************/
/*  UNIX_Old dtime(). This is the old UNIX timer.  */
/*  Make sure HZ is properly defined in param.h !! */
/***************************************************/
#ifdef UNIX_Old
#include <sys/types.h>
#include <sys/times.h>
#include <sys/param.h>
#ifndef HZ
#define HZ 60
#endif

struct tms tms;
double dtime()
{
 double q;
 times(&tms);
 q = (double)(tms.tms_utime) / (double)HZ;
 return q;
}
#endif
