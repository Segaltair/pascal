{��������� ������ ��������� a*x^2+b*x+c. � ���������� �������� ����������� a,b,c}
const
  INF_ROOTS=3; 
  
procedure inputVars (var a,b,c:real); //������� ��������� inputVars, ������������� � ������������ ����������� a,b,c
begin
  writeln('a*x^2+b*x+c');
  writeln('Enter the odds on');
  readln(a,b,c);
end;

procedure showroots(nroots:byte; //������ ��������� ������� ����� � ����������� �� ���������� ������� ����������� ���������
                    x1,x2:real); //���������� nroots ������ ���������� ������, � 'x1' � 'x2' ���� �����  
begin
  case nroots of
    0:writeln('No solution');   //��� �������, ���� ���������� ������ ����� ����
    1:writeln('Single solution x= ',x1);  //���� �������, ���� ���������� ������ ���� ������� � ����� ����� �����
    2:writeln('Two solution x1= ',x1, ' and x2= ',x2);//��� �������, ���� ���������� ������ ����� ���� � ����� ����� ������
    INF_ROOTS:writeln('Infinite number of solutions');//���� � ����������, ����� ���������� ��������� ����� ������, ������ ����������� 
    end;                                              //���������� �������
end;

function solveSqrEq (a,b,c:real;      //�� � ���� �������, ������� ������ �������� ���������
                     var nroots:byte;
                     var x1,x2:real):byte;
var
  d:real; //� ���������� d �������� �������� ������������� ��������� ���������
begin
  if 0=a then         //��������� �� ���� �� ������������ ���� � ����� ���� �����������. ���� ����, �� ������������� ������� ������
    if 0=b then
      if 0=c then     //���� ��� ����������� ����� ����, �� ��������� ����� ����������� ���������� �������
        nroots:=INF_ROOTS
      else
        nroots:=0 //���� �<>0, � 'a' � 'b' ����� ����, �� ��� ������� 
    else
      begin
        if 0=c then //���� a=0, c=0, b<>0, �� x=0
          begin
            x1:=0;
            nroots:=1;
          end
        else
          begin 
            x1:=-b/c;//���� a=0, b<>0, c<>0, �� x=-b/a
            nroots:=1;
          end;
      end
  else    //��������� ������ ����� �� �������������. ��� ������� �������� � ����� ������������
    begin
      d:=b*b-4*a*c;//������� ������������
      if d<0 then  //D<0? �������! ������ ��������� �� ����� ������.
        nroots:=0
      else
        if d=0 then//���� �� D ����� �������� ������ ����, �� ����� ���� ������
          begin
            x1:=-b/2*a;
            nroots:=1;
          end     //�� ���� ����� ��������� ������ ��� ��� �������� ��������, �� ������ ����� ����������� �������
        else
          begin
            x1:=(-b-sqrt(d))/2*a;
            x2:=(-b+sqrt(d))/2*a;
            nroots:=2;
          end;
   end;
   
end; //��������� ������ ��� ��������� � �������. ��������� � ����� ���������

var
  a,b,c,x1,x2:real;
  nroots:byte;
begin //���� ���������
  inputVars(a,b,c); //�������� ��������� ����� ������������ ����������� ���������
  solveSqrEq(a,b,c,nroots,x1,x2);//������� �����
  showRoots(nroots,x1,x2);       //� ������� �� �� �����
end.                             //���, ����������, � ���