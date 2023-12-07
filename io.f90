program deneme
implicit none
integer::indv_id,hghind_id,score,hghscore,ind_numbr,i
character(8)::nmae,hghnmae
character(8)::srnmae,hghsurnmae
hghscore=1
ind_numbr=16
open(unit=13, file="input_HW4.txt", action="read", status="old") 
open(unit=14, file="output_HW4.txt", action="write", status="new")
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
