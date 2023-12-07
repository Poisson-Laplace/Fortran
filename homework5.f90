!if we want to sort student by highest score to lowest score we have to use a sorting algorithm. 
!But if we intend to find THE highest score we can use a do and if operator to change the hghscore integer.
!in this program i will use do-if cycle because arrays has important role on sorting algorithms. Also it requires recursive subroutines.

program deneme
implicit none
integer::indv_id,hghind_id,score,hghscore,ind_numbr,i
character(8)::nmae,hghnmae !making name 8 char long will help about spaces. So that, there are 16 between name and surname. 
character(8)::srnmae,hghsurnmae !Longest one is 8 long. By that, there are 8 spaces between score and surname. It may change as well.
hghscore=1
ind_numbr=16 !variable, should change if we use another data
open(unit=13, file="input_HW4.txt", action="read", status="old") !Using read will protect input data. Using position will make file not compileable in fortran 77
!also has no affect on terminal file.
open(unit=14, file="output_HW4.txt", action="write", status="new") !Not existed file required. Unless error will occur
do i=1,ind_numbr
read(13,fmt="(I8,8x,a8,16x,a8,8x,I2)")indv_id,nmae,srnmae,score
if (score>=hghscore)then
hghscore=score
hghind_id=indv_id
hghnmae=nmae
hghsurnmae=srnmae
end if
end do
close(13)
write(14,*)"Person who has the highest score is:"!write on txt
write(14,"(a2,14x,a4,20x,a7,9x,a5)")"Id","Name","Surname","Score"
write(14,fmt="(I8,8x,a8,16x,a8,8x,I2)")hghind_id,hghnmae,hghsurnmae,hghscore
close(14)
print*,"Person who has the highest score is:"!write on terminal
write(*,"(a2,14x,a4,20x,a7,9x,a5)")"Id","Name","Surname","Score"
write(*,fmt="(I8,8x,a8,16x,a8,8x,I2)")hghind_id,hghnmae,hghsurnmae,hghscore
end program deneme
