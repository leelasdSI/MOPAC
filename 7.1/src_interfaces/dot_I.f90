      MODULE dot_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.4G  08:33:41  03/09/06  
      REAL(KIND(0.0D0)) FUNCTION dot (X, Y, N) 
      USE vast_kind_param,ONLY: DOUBLE 
      REAL(DOUBLE), DIMENSION(*), INTENT(IN) :: X 
      REAL(DOUBLE), DIMENSION(*), INTENT(IN) :: Y 
      INTEGER, INTENT(IN) :: N 
      END FUNCTION  
      END INTERFACE 
      END MODULE 