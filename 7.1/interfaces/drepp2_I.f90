      MODULE drepp2_I   
      INTERFACE
!...Generated by Pacific-Sierra Research 77to90  4.4G  10:47:33  03/09/06  
      SUBROUTINE drepp2 (NI, RIJ, RI, CORE) 
      USE vast_kind_param,ONLY: DOUBLE 
      integer, INTENT(IN) :: NI 
      real(DOUBLE), INTENT(IN) :: RIJ 
      real(DOUBLE), DIMENSION(22), INTENT(OUT) :: RI 
      real(DOUBLE), DIMENSION(4,2), INTENT(OUT) :: CORE 

      END SUBROUTINE  
      END INTERFACE 
      END MODULE 
