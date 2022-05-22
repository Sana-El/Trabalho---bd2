create function deletar_cliente()
returns trigger as $$
begin
	delete from cliente where codigo = new.cliente;
end;
$$ language plpgsql;


create trigger deletar_cliente_by_voo 
after delete on cliente_voo
    for each row 
    execute function deletar_cliente();
