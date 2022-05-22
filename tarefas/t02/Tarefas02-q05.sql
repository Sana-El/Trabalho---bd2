create trigger soma_um
after insert on voo
for each row update piloto
set num_voos = num_voos + 1
where new.piloto = piloto.codigo;
