LIBRARY work;

USE work.dlx_types.ALL;

entity mux is
	generic(prop_delay : Time := 5 ns);
	port (input_1,input_0 : in dlx_word; which: in bit; output: out dlx_word);
end entity mux;


architecture behavior of mux is
begin
	mux: process(input_1, input_0, which) is
	begin		
		case(which) is
			when '0' =>
				output <= input_0 after prop_delay;
			when '1' =>
				output <= input_1 after prop_delay;
		end case;
	end process mux;
end architecture behavior;