{������� ������� ����. � ��� �������� ��������� �����. � ������ ������ ����� 
������ �������� �����. ��������� �������� � ������ ���� �� �� �����, �� �� ������� }
const
  N=999999;//���������� �����. �� ������� � ����� ���������� ����� �� ������������
var
  mas:array [1..N] of integer;//������ ��� �������� ���� ��������� �����
  i,x:integer;
  s1,s2:string;
  t1,t2:text;
begin
  readln(s1);
  s1:=s1+'.txt';
  assign(t1,s1);
  reset(t1);
  readln(s2);
  s2:=s2+'.txt';
  assign(t2,s2);
  rewrite(t2);
  for i:=1 to N do      //�������� ������
    mas[i]:=0;
  while not eof(t1) do  //����������� �� �����
    begin
      read(t1,x);       //������ �����
      inc(mas[x]);      //����������� �� ������� ������� ������� � �������� ����� �����
    end;
  for i:=1 to N do      //����������� �� �������
    if mas[i]<>0 then   //������������� ������ �� �����, ������� ����������� � �����
        begin
          write(t2,i);  //����� � �������� ���� �����
          writeln(t2);  //��������� �� ��������� ������
        end;                    
  close(t1);
  close(t2);
end.