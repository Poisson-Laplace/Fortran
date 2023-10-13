program test
IMPLICIT NONE
INTEGER::i, i2, age
character(20)::name,surname,hometown
do i = 1,4,1
SELECT CASE (i)
	  CASE (1)
		print*,"input name"
		read*, name
	  CASE (2)
		print*,"input surname"
		read*, surname
	  CASE (3)
	  	print*,"input hometown"
		read*, hometown
	  CASE (4)
		print*,"input age"
		read*, age
	END SELECT
END DO
do i2 = 1,4,1
	SELECT CASE (i2)
	  CASE (1)
		print*,"my name is",name
	  CASE (2)
		print*,"my surname is",surname
	  CASE (3)
		print*,"my hometown is ",hometown
	  CASE (4)
		print*,"my age is",age
	END SELECT
end do
end program test
		  