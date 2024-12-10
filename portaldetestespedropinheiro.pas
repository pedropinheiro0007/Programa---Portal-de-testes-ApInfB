Program Teste_api;
var
  dominio, pergunta: integer;
  resposta, solucoes: char;
  resposta_2: string;
  pontos: real;
  pergunta_atual: integer;
  perguntas_diagnostico: array[1..4] of integer;
  perguntas_pasc: array[1..10] of integer;
  i, j, temp: integer;
  
Begin
  randomize;
  
  pontos := 0;
  pergunta_atual := 1;
 
  writeln('Bem-vindo ao portal do testes de aplicações informáticas');
  writeln('Escolha o domínio do teste que pretende:');
  writeln('1 - Teste Diagnóstico');
  writeln('2 - Introdução Pascal');
  repeat 
  readln(dominio);
  
until (dominio = 1) or (dominio = 2);
  clrscr;

  
  if dominio = 1 then
  begin
    writeln('TESTE DIAGNÓSTICO');
    writeln('');
    writeln('Escolha a opção correta em cada uma das perguntas. A cotação atribuída a cada questão será indicada em frente da mesma.');
    readkey;
    clrscr;
    
    writeln('Já alguma vez utilizou uma linguagem de programação? (0 pontos)');
    writeln('(A) Sim    (B) Não');
    repeat
      readln(resposta);
      resposta := UpCase(resposta);
    until (resposta = 'A') or (resposta = 'B');
    clrscr;
    
    if resposta = 'A' then
    begin
      writeln('Qual linguagem utilizou? (0 pontos)');
      readln(resposta_2);
    end;
    
    clrscr;

    // Inicializando o vetor de perguntas do teste diagnóstico
   // perguntas_diagnostico[1] := 1;
    //perguntas_diagnostico[2] := 2;
    //perguntas_diagnostico[3] := 3;
    //perguntas_diagnostico[4] := 4;
    //ou
     for i := 1 to 4 do
      begin
       perguntas_diagnostico[i] := i;
      end;

    
    for i := 1 to 4 do
      begin
        j := 1 + random(4);
        temp := perguntas_diagnostico[i];             // baralhando as perguntas
        perguntas_diagnostico[i] := perguntas_diagnostico[j];
        perguntas_diagnostico[j] := temp;
      end;

    
    for i := 1 to 4 do
    begin
      case perguntas_diagnostico[i] of
        1: begin
          writeln(i,'. O que significa a sigla "CPU"? (5 pontos)');
          writeln('(A) Central Personal Unit          (B) Central Processing Unit');
          writeln('(C) Computer Programming Utility   (D) Central Program Update');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 5;
          clrscr;
        end;

        2: begin
          writeln(i,'. Qual destes dispositivos é considerado hardware? (5 pontos)');
          writeln('(A) Sistema Operacional    (B) Exel');
          writeln('(C) Impressora             (D) Navegador de Internet');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if (resposta = 'C') then pontos := pontos + 5;
          clrscr;
        end;

        3: begin
          writeln(i,'. Qual destes é um exemplo de software? (5 pontos)');
          writeln('(A) Teclado           (B) Memória RAM');
          writeln('(C) Microsoft Word    (D) Mouse');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'C' then pontos := pontos + 5;
          clrscr;
        end;

        4: begin
          writeln(i,'. O que é um byte? (5 pontos)');
          writeln('(A) Um tipo de software          (B) Uma unidade de armazenamento de dados');
          writeln('(C) Um dispositivo de entrada    (D) Um sistema operacional');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 5;
          clrscr;
        end;
      end;
    end;

    writeln('Pontuação do teste diagnóstico final: ', pontos:0:1, ' pontos');
    writeln('Deseja ver as soluções do teste?');
    writeln('(A) Sim    (B) Não');
    repeat
      readln(solucoes);
      solucoes := UpCase(solucoes);
    until (solucoes = 'A') or (solucoes = 'B');
    clrscr;

    if solucoes = 'A' then
    begin
      TextColor(White);
      writeln('Respostas corretas:');
      writeln;

      writeln('1. O que significa a sigla "CPU"?');
      writeln('(A) Central Personal Unit');
      TextColor(green);
      writeln('(B) Central Processing Unit'); 
      TextColor(White); 
      writeln('(C) Computer Programming Utility');
      writeln('(D) Central Program Update');
      TextColor(White);  
      writeln;

      writeln('2. Qual destes dispositivos é considerado hardware?');
      writeln('(A) Sistema Operacional'); 
      writeln('(B) Exel');
      TextColor(green);  
      writeln('(C) Impressora'); 
      TextColor(White);
      writeln('(D) Navegador de Internet');
      TextColor(White); 
      writeln;

      writeln('3. Qual destes é um exemplo de software?');
      writeln('(A) Teclado');
      writeln('(B) Memória RAM');  
      TextColor(green);  
      writeln('(C) Microsoft Word');
      TextColor(White); 
      writeln('(D) Mouse');
      TextColor(White);  
      writeln;

      writeln('4. O que é um byte?');
      writeln('(A) Um tipo de software');
      TextColor(green);  
      writeln('(B) Uma unidade de armazenamento de dados'); 
      TextColor(White);  
      writeln('(C) Um dispositivo de entrada');
      writeln('(D) Um sistema operacional');
      TextColor(White);  
    end;
    readkey;
    clrscr;
  end; 
  
  if dominio = 2 then  
  begin
    writeln('Introdução a Pascal');
    writeln('');
    writeln('Serão apresentadas até 10 perguntas. O teste termina assim que acertar 5.');
    readkey;
    clrscr;
  
    
    for i := 1 to 10 do
      begin
        perguntas_pasc[i] := i;
      end;
  
   
    for i := 1 to 10 do
      begin
        j := 1 + random(10);
       temp := perguntas_pasc[i];
       perguntas_pasc[i] := perguntas_pasc[j];
        perguntas_pasc[j] := temp;
      end;
    pergunta_atual := 0;
    pergunta_atual := pergunta_atual + 1; 
    pontos := 0;
    
    while (pontos < 20) and (pergunta_atual <= 10) do
    begin
      case perguntas_pasc[pergunta_atual] of
        1: begin
          writeln(pergunta_atual,'. Qual destes é um operador aritmético em Pascal? (4 pontos)');
          writeln('(A) :=          (B) +');
          writeln('(C) <>          (D) AND');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 4;
          clrscr;
        end;

        2: begin
          writeln(pergunta_atual,'. O que significa := em Pascal? (4 pontos)');
          writeln('(A) Operador de comparação  (B) Operador de atribuição');
          writeln('(C) Operador lógico         (D) Operador aritmético');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 4;
          clrscr;
        end;
        
				3: begin
          writeln(pergunta_atual,'. Qual deste é um tipo de variavel em Pascal? (4 pontos)');
          writeln('(A) Integer         (B) String');
          writeln('(C) Boolean         (D) Todas estam corretas');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'D' then pontos := pontos + 4;
          clrscr;
        end;
        
        4: begin
          writeln(pergunta_atual,'. Qual destas características NÃO se refere a um bom algoritmo? (4 pontos)');
        writeln('(A) Estruturar de forma clara o problema');
        writeln('(B) Apresentar passos bem definidos');
        writeln('(C) Ser ambíguo');
        writeln('(D) Ser eficiente');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'C' then pontos := pontos + 4;
          clrscr;
        end;
        
        5: begin
          writeln(pergunta_atual,'. O que é um fluxograma? (4 pontos)');
          writeln('(A) Um tipo de pseudocódigo');
          writeln('(B) Uma representação gráfica de um algoritmo');
          writeln('(C) Uma linguagem de programação');
          writeln('(D) Um operador relacional');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 4;
          clrscr;
        end;
        
        6: begin
           writeln(pergunta_atual,'. Qual destes é um operador relacional em Pascal? (4 pontos)');
           writeln('(A) +        (B) OR');
           writeln('(C) >=       (D) MOD');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'C' then pontos := pontos + 4;
          clrscr;
        end;
        
        7: begin
          writeln(pergunta_atual,'. Qual destes é uma estrutura de condição em Pascal? (4 pontos)');
        writeln('(A) WHILE        (B) If');
        writeln('(C) CASE         (D) VAR');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 4;
          clrscr;
        end;
        
        8: begin
           writeln(pergunta_atual,'. Idenfique o tipo do seguinte dado: «True» (4 pontos)');
        writeln('(A) String        (B) Real');
        writeln('(C) Boolean       (D) Char');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'C' then pontos := pontos + 4;
          clrscr;
        end;
        
        9: begin
          writeln(pergunta_atual,'. Idenfique o tipo do seguinte dado: «0.2» (4 pontos)');
        writeln('(A) Integer       (B) Real');
        writeln('(C) Boolean       (D) Char');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 4;
          clrscr;
        end;
        
        10: begin
           writeln(pergunta_atual,'. Qual destes comandos exibe texto na tela em Pascal? (4 pontos)');
        writeln('(A) begin         (B) writeln');
        writeln('(C) readln        (D) end');
          repeat
            readln(resposta);
            resposta := UpCase(resposta);
          until (resposta = 'A') or (resposta = 'B') or (resposta = 'C') or (resposta = 'D');
          if resposta = 'B' then pontos := pontos + 4;
          clrscr;
        end;
        
      
      end;
      
      pergunta_atual := pergunta_atual + 1;  
    end;
    
    writeln('Você completou o teste de Introdução a Pascal.');
    writeln('Pontuação final: ', pontos:0:1, ' pontos');
    writeln('Deseja ver as soluções do teste?');
    writeln('(A) Sim    (B) Não');
    repeat
      readln(solucoes);
      solucoes := UpCase(solucoes);
    until (solucoes = 'A') or (solucoes = 'B');
    clrscr;

        if solucoes = 'A' then
    begin
      TextColor(White);
      writeln('Respostas corretas:');
      writeln;

      writeln('1. Qual destes é um operador aritmético em Pascal?');
      writeln('(A) :=');
      TextColor(green);
      writeln('(B) +');  
      TextColor(White);
      writeln('(C) <>');
      writeln('(D) AND');
      writeln;

      writeln('2. Qual o resultado de 29 DIV 4 e 31 MOD 3, respectivamente?');
      writeln('(A) 7 e 1');
      TextColor(green);
      writeln('(B) 7 e 2');
      TextColor(White);
      writeln('(C) 6 e 1');
      writeln('(D) 6 e 2');
      writeln;

      writeln('3. Qual destes é um tipo de variável em Pascal?');
      writeln('(A) Integer');
      writeln('(B) String');
      writeln('(C) Boolean');
      TextColor(green);
      writeln('(D) Todas as anteriores');  
			  TextColor(White);
      writeln;

      writeln('4. Qual destas características NÃO se refere a um bom algoritmo?');
      writeln('(A) Estruturar de forma clara o problema');
      writeln('(B) Apresentar passos bem definidos');
      TextColor(green);
      writeln('(C) Ser ambíguo'); 
      TextColor(White);
      writeln('(D) Ser eficiente');
      writeln;

      writeln('5. O que é um fluxograma?');
      writeln('(A) Um tipo de pseudocódigo');
      TextColor(green);
      writeln('(B) Uma representação gráfica de um algoritmo');  
      TextColor(white);
      writeln('(C) Uma linguagem de programação');
      writeln('(D) Um operador relacional');
      writeln;

      writeln('6. Qual destes é um operador relacional em Pascal?');
      writeln('(A) +');
      writeln('(B) OR');
      TextColor(green);
      writeln('(C) >=');
      TextColor(White);
      writeln('(D) MOD');
      writeln;

      writeln('7. Qual destes é uma estrutura de condição em Pascal?');
      writeln('(A) WHILE');
      TextColor(green);
      writeln('(B) IF'); 
      TextColor(White);
      writeln('(C) CASE');
      writeln('(D) VAR');
      writeln;

      writeln('8. Identifique o tipo do seguinte dado: «True»');
      writeln('(A) String');
      writeln('(B) Real');
      TextColor(green);
      writeln('(C) Boolean');  
      TextColor(White);
      writeln('(D) Char');
      writeln;

      writeln('9. Identifique o tipo do seguinte dado: «0.2»');
      writeln('(A) Integer');
      TextColor(green);
      writeln('(B) Real'); 
      TextColor(White);
      writeln('(C) Boolean');
      writeln('(D) Char');
      writeln;

      writeln('10. Qual destes comandos exibe texto na tela em Pascal?');
      writeln('(A) input');
      TextColor(green);
      writeln('(B) writeln');  
      TextColor(White);
      writeln('(C) print');
      writeln('(D) scanf');
      writeln;
    end;
    readkey;
    clrscr;
  end; 
End.