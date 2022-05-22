create trigger add_passageito
after insert on cliente_voo
for each row update voo
set num_passageiros = num_passageiros + 1
where new.voo = voo.codigo;
