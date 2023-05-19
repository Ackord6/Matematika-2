var
    x, y, z: real;
    a, b: byte;
    sign: char;

begin
    while True do begin

        write('sign: ');
        readln(sign);

        if sign = '0' then
            break;

                    if sign in [':'] then begin
                           read (a,b);

                           x:=a div b;
                           y:=a mod b;
            writeln ('the whole part ', x);

            writeln('the remainder of the division ', y);
            
            end;


        if sign in ['+','-','*','/','%'] then begin

            write('x = ');
            readln(x);
            write('y = ');
            readln(y);

            case sign of

                '+': begin
                    z := x + y;
                    writeln(z:5:2)
                end;

                '-': begin
                    z := x - y;
                    writeln(z:5:2);
                end;

                '*': begin
                    z := x * y;
                    writeln(z:5:2);
                end;


            '%': begin
                    z := 100 * x / y;
                    writeln(z:5:2)
                end;


                '/':
                    if y <> 0 then begin
                        z := x / y;
                        writeln(z:5:2)
                    end
                    else
                        writeln('Division by zero!');
            end;

        end
        else
            writeln('Bad sign!');
        writeln;
    end;

end.