PROGRAM PrintHelloName(INPUT, OUTPUT);
USES
  DOS;
VAR
  Name, Env: STRING;
BEGIN {PrintHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Env := GetEnv('QUERY_STRING');
  IF POS('name', Env) = 0
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    BEGIN
      Name := COPY(Env, POS('=', Env) + 1, LENGTH(Env));
      WRITELN('Hello dear, ', Name, '!')
    END
END. {PrintHello}
