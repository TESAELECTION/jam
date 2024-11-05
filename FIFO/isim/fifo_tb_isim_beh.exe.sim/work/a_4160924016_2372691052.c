/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/BE42359/FIFO/fifo_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_4160924016_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2124U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 2500);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2024);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2500);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2024);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4160924016_2372691052_p_1(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    int t9;
    int t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;

LAB0:    t1 = (t0 + 2268U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2536);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2536);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 3);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4296);
    *((int *)t2) = 1;
    t3 = (t0 + 4300);
    *((int *)t3) = 10;
    t9 = 1;
    t10 = 10;

LAB12:    if (t9 <= t10)
        goto LAB13;

LAB15:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 4);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t8);

LAB23:    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 4296);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t4), 8);
    t6 = (t0 + 2644);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 4296);
    t9 = *((int *)t2);
    t3 = (t0 + 4300);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB15;

LAB20:    t16 = (t9 + 1);
    t9 = t16;
    t4 = (t0 + 4296);
    *((int *)t4) = t9;
    goto LAB12;

LAB16:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 10);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t8);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

LAB25:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4304);
    *((int *)t2) = 11;
    t3 = (t0 + 4308);
    *((int *)t3) = 20;
    t9 = 11;
    t10 = 20;

LAB29:    if (t9 <= t10)
        goto LAB30;

LAB32:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 4);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t8);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB30:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 4304);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t4), 8);
    t6 = (t0 + 2644);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t7);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB31:    t2 = (t0 + 4304);
    t9 = *((int *)t2);
    t3 = (t0 + 4308);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB32;

LAB37:    t16 = (t9 + 1);
    t9 = t16;
    t4 = (t0 + 4304);
    *((int *)t4) = t9;
    goto LAB29;

LAB33:    goto LAB31;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB38:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 8);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t8);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

LAB42:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 4);
    t2 = (t0 + 2168);
    xsi_process_wait(t2, t8);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2572);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2608);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);

LAB52:    *((char **)t1) = &&LAB53;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    goto LAB2;

LAB51:    goto LAB50;

LAB53:    goto LAB51;

}


extern void work_a_4160924016_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4160924016_2372691052_p_0,(void *)work_a_4160924016_2372691052_p_1};
	xsi_register_didat("work_a_4160924016_2372691052", "isim/fifo_tb_isim_beh.exe.sim/work/a_4160924016_2372691052.didat");
	xsi_register_executes(pe);
}
