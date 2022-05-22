create trigger sadd_milhas
after insert on cliente_voo
for each row update milhas
set quantidade= quantidade + 
(select distancia from voo
, cliente_voo 
 where new.voo = voo.codigo)/10
 where cliente  = new.cliente;
