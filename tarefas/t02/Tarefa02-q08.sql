create function delete_cliente()
returns trigger as $$
begin
	delete from cliente where codigo = new.cliente;
end;
$$ language plpgsql;


create trigger delete_cliente_by_voo 
after delete on cliente_voo
    for each row 
    execute function delete_cliente();
