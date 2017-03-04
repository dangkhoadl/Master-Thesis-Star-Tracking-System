#include <stdio.h>
#include <stdlib.h>
#define A_NROWS 32
#define A_NCOLS 32
#define B_NCOLS 32

void mmult_kernel(float *a, float *b, float *c)
{
    c[0] = a[0]*b[0];
}

void mmult (float in_A[A_NROWS*A_NCOLS],float in_B[A_NCOLS*B_NCOLS],float out_C[A_NROWS*B_NCOLS])
{
#pragma HLS INTERFACE bram port=in_A
#pragma HLS INTERFACE bram port=in_B
#pragma HLS INTERFACE bram port=out_C
#pragma HLS TOP
#pragma HLS INTERFACE s_axilite port=return


#pragma HLS RESOURCE variable=in_A core=SPRAMD
#pragma HLS RESOURCE variable=in_B core=SPRAMD
#pragma HLS RESOURCE variable=out_C core=SPRAMD
//#pragma HLS INTERFACE ap_fifo port=out_C

    int i, j;
    float a_buf[A_NROWS][A_NCOLS];
    float b_buf[A_NCOLS][B_NCOLS];
    // Transfer matrix A from multi-buffer into local RAM
    for(i=0; i<A_NROWS; i++)
    {
        for(j=0; j<A_NCOLS; j++)
        {
        #pragma HLS PIPELINE II=1
            a_buf[i][j] = in_A[i * A_NCOLS + j];
        }
    }
    // Transfer matrix B from multi-buffer into local RAM
    for(i=0; i<A_NCOLS; i++)
    {
        for(j=0; j<B_NCOLS; j++)
        {
            #pragma HLS PIPELINE II=1
            b_buf[i][j] = in_B[i * B_NCOLS + j];
        }
    }
    // Matrix multiply algorithm with reshaped inputs
    // Subfunction definition omitted for brevity
    mmult_kernel(a_buf, b_buf, out_C);
}