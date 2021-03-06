      subroutine mult33(fmat, iplace) 
!-----------------------------------------------
!   M o d u l e s 
!-----------------------------------------------
      USE vast_kind_param, ONLY:  double 
      USE symmetry_C, only : elem
!***********************************************************************
!DECK MOPAC
!...Translated by Pacific-Sierra Research 77to90  4.4G  08:35:23  03/09/06  
!...Switches: -rl INDDO=2 INDIF=2 
      implicit none
!-----------------------------------------------
!   G l o b a l   P a r a m e t e r s
!-----------------------------------------------
!-----------------------------------------------
!   D u m m y   A r g u m e n t s
!-----------------------------------------------
      integer , intent(in) :: iplace 
      real(double) , intent(in) :: fmat(3,3) 
!-----------------------------------------------
!   L o c a l   P a r a m e t e r s
!-----------------------------------------------
!-----------------------------------------------
!   L o c a l   V a r i a b l e s
!-----------------------------------------------
      integer :: i, j, k
      real(double), dimension(3,3) :: help 
!-----------------------------------------------
!***********************************************************************
!
!   MULT33 performs a eulerian rotation on a symmetry operation.
!
!    The symmetry operation IPLACE, stored in ELEM is subjected
!    to the operation stored in FMAT.
!
!***********************************************************************
      do i = 1, 3 
        do j = 1, 3 
          help(i,j) = 0.D0 
          do k = 1, 3 
            help(i,j) = help(i,j) + sum(fmat(i,:)*fmat(j,k)*elem(:,k,iplace)) 
          end do 
        end do 
      end do 
      elem(:,:,iplace) = help 
      return  
      end subroutine mult33 
