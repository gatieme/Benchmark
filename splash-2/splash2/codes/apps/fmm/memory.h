#line 99 "/home/gatieme/Work/GitHub/Benchmark/splash-2/splash2/codes/null_macros/c.m4.null"

#line 1 "memory.H"
/*************************************************************************/
/*                                                                       */
/*  Copyright (c) 1994 Stanford University                               */
/*                                                                       */
/*  All rights reserved.                                                 */
/*                                                                       */
/*  Permission is given to use, copy, and modify this software for any   */
/*  non-commercial purpose as long as this copyright notice is not       */
/*  removed.  All other uses, including redistribution in whole or in    */
/*  part, are forbidden without prior written permission.                */
/*                                                                       */
/*  This software is provided with absolutely no warranty and no         */
/*  support.                                                             */
/*                                                                       */
/*************************************************************************/

#ifndef _Memory_H
#define _Memory_H 1

#include "defs.h"
#include "particle.h"
#include "box.h"

#define MAX_LOCKS 2048

 

typedef struct _G_Mem g_mem;

struct _G_Mem
{
   long (io_lock);
   long (mal_lock);
   long (single_lock);
   long (count_lock);
   long count;
   long (lock_array);
   long (synch);
   volatile long *i_array;
   volatile double *d_array;
   real f_array[MAX_PROCS][NUM_DIM_POW_2];
   real max_x;
   real min_x;
   real max_y;
   real min_y;
   long id;
};
extern g_mem *G_Memory;

typedef struct _Local_Memory local_memory;
struct _Local_Memory {
   long pad_begin[PAD_SIZE];

   box *B_Heap;
   long Index_B_Heap;
   long Max_B_Heap;

   particle **Particles;
   long Num_Particles;
   long Max_Particles;

   box *Childless_Partition;
   box *Parent_Partition[MAX_LEVEL];
   long Max_Parent_Level;

   box *Local_Grid;
   real Local_X_Max;
   real Local_X_Min;
   real Local_Y_Max;
   real Local_Y_Min;

   long Total_Work;
   long Min_Work;
   long Max_Work;

   long Time_Step;
   double Time;
   unsigned long init_done_times;
   time_info Timing[MAX_TIME_STEPS];

   long pad_end[PAD_SIZE];
};
extern local_memory Local[MAX_PROCS];

extern void InitGlobalMemory(void);

#endif /* _Memory_H */
