LIBRARY work;

USE work.dlx_types.ALL;
USE work.bv_arithmetic.ALL;

entity reg_file is
	generic(prop_delay: Time := 15 ns);
	port(data_in : in dlx_word; readnotwrite, clock: in bit; data_out: out
		dlx_word; reg_number : in register_index); 
end entity reg_file;


architecture behavior of reg_file is
	type reg_type is array (0 to 31) of dlx_word;
begin
	reg_file: process(data_in, readnotwrite, clock, reg_number) is
		variable registers : reg_type;
	begin
		if clock = '1' then
			if readnotwrite = '0' then
				registers(bv_to_integer(reg_number)) := data_in;
			else
				data_out <= registers(bv_to_integer(reg_number)) after prop_delay;
			end if;
		end if;
	end process reg_file;
end architecture behavior;