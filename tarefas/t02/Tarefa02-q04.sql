create trigger cartao_milhas
after insert on cliente
for each row insert into milhas(quantidade, cliente)values (0, new.codigo);
