#ifndef __c11_E33_VCU_simulink_h__
#define __c11_E33_VCU_simulink_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc11_E33_VCU_simulinkInstanceStruct
#define typedef_SFc11_E33_VCU_simulinkInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c11_sfEvent;
  uint8_T c11_tp_LEDStat;
  uint8_T c11_tp_AlevelAlm;
  uint8_T c11_tp_Init;
  uint8_T c11_tp_OFF;
  uint8_T c11_tp_Test;
  boolean_T c11_isStable;
  uint8_T c11_is_active_c11_E33_VCU_simulink;
  uint8_T c11_is_c11_E33_VCU_simulink;
  uint8_T c11_is_LEDStat;
  uint8_T c11_temporalCounter_i1;
  uint32_T c11_presentTicks;
  uint32_T c11_elapsedTicks;
  uint32_T c11_previousTicks;
  uint8_T c11_doSetSimStateSideEffects;
  const mxArray *c11_setSimStateSideEffectsInfo;
} SFc11_E33_VCU_simulinkInstanceStruct;

#endif                                 /*typedef_SFc11_E33_VCU_simulinkInstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c11_E33_VCU_simulink_get_eml_resolved_functions_info
  (void);

/* Function Definitions */
extern void sf_c11_E33_VCU_simulink_get_check_sum(mxArray *plhs[]);
extern void c11_E33_VCU_simulink_method_dispatcher(SimStruct *S, int_T method,
  void *data);

#endif
