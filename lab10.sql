/*�������� �������� (before, after, instead of DML) ��� ����� 
������� � ���� ������ � ��������� ������� ������

use Student;
select id_student , imya , id_nas_punkt into TriggersEx
from student


create table student_povs(
id_student nchar(1),
status varchar(5)
);

------�������� ��������------

create trigger TriggersEx_INSERT on TriggersEx
after insert
as 
begin 
set nocount on;
declare @id_student nchar(4)
select @id_student = INSERTED.id_student
from INSERTED

insert into student_povs
values(@id_student, 'Done')
end

------���������� ��������------
insert into TriggersEx(id_student , imya , id_nas_punkt) values ('2','whooo', 'Whereee');
insert into TriggersEx(id_student , imya , id_nas_punkt) values ('1','whoo', 'Wheree');

------�������� ��������------
create trigger TriggersEx_Delete on TriggersEx
after delete
as 
begin 
set nocount on;
declare @id_student nchar(4)
select @id_student = DELETED.id_student
from DELETED

insert into student_povs
values(@id_student, 'deleted')
end*/