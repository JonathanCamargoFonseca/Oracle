create or replace trigger CLIENTES_IU_BR
before insert or update
on CLIENTES
for each row
begin

  if inserting then
    :new.DATA_HORA_CADASTRO := sysdate;
  end if;
  
  :new.DATA_HORA_ALTERACAO := sysdate;

end CLIENTES_IU_BR;
/
