LIBRARY work;

USE work.dlx_types.ALL;

entity threeway_mux is
	generic(prop_delay : Time := 5 ns);
	port (input_2,input_1,input_0 : in dlx_word; which: in threeway_muxcode;
		output: out dlx_word);
end entity threeway_mux;


architecture behavior of threeway_mux is
begin
	threeway_mux: process(input_2, input_1, input_0, which) is
	begin		
		case(which) is
			when "00" =>
				output <= input_0 after prop_delay;
			when "01" =>
				output <= input_1 after prop_delay;
			when "10" =>
				output <= input_2 after prop_delay;
			when others =>
		end case;
	end process threeway_mux;
end architecture behavior;
