LIBRARY work;

USE work.bv_arithmetic.ALL;
USE work.dlx_types.ALL;

entity alu is
port(operand1, operand2: in dlx_word; operation: in
	alu_operation_code;
	result: out dlx_word; error: out error_code);
end entity alu;
-- OPPERATIONS
-- 0000 = unsigned add
-- 0001 = unsigned subtract
-- 0010 = two?s complement add
-- 0011 = two?s complement subtract
-- 0100 = two?s complement multiply
-- 0101 = two?s complement divide
-- 0110 = logical AND
-- 0111 = bitwise AND
-- 1000 = logical OR
-- 1001 = bitwise OR
-- 1010 = logical NOT of operand1 (ignore operand2)
-- 1011 = bitwise NOT of operand1 (ignore operand2)
-- 1100-1111 = just output all zeroes

-- ERRORS
--  0000 = no error
--  0001 = overflow
--  0010 = underflow
--  0011 = divide by zero

architecture behavior of ALU is
begin
	process_alu: process(operand1, operand2, operation) is
	variable result_from_operation: dlx_word;	
	variable overflow: boolean;
	variable divided_by_zero: boolean;
	variable bool_one: boolean;
	variable bool_two: boolean;

	begin
		error <= "0000";
		case(operation) is
			when "0000" =>
				bv_addu(operand1, operand2, result_from_operation, overflow);
				if overflow then
					error <= "0001";
				end if;
			when "0001" =>
				bv_subu(operand1, operand2, result_from_operation, overflow);
				if overflow then
					error <= "0010";
				end if;
			when "0010" =>				
				bv_add(operand1, operand2, result_from_operation, overflow);
				if overflow then
					error <= "0001";
				end if;
			when "0011" =>				
				bv_sub(operand1, operand2, result_from_operation, overflow);
				if overflow then
					error <= "0010";
				end if;
			when "0100" =>
				bv_mult(operand1, operand2, result_from_operation, overflow);
				if overflow then
					error <= "0001";
				end if;
			when "0101" =>
				bv_div(operand1, operand2, result_from_operation, divided_by_zero, overflow);
				if divided_by_zero then
					error <= "0011";
				elsif overflow then
					error <= "0010";
				end if;
			when "0110" =>
				bool_one := bv_gt(operand1, x"00000000");
				bool_two := bv_gt(operand2, x"00000000");
				if ((bool_one AND bool_two) = true) then
					result_from_operation := x"00000001";
				else
					result_from_operation := x"00000000";
				end if;
			when "0111" =>
				for i in 31 downto 0 loop
					result_from_operation(i) := operand1(i) AND operand2(i);
				end loop;
			when "1000" =>
				bool_one := bv_gt(operand1, x"00000000");
				bool_two := bv_gt(operand2, x"00000000");
				if ((bool_one OR bool_two) = true) then
					result_from_operation := x"00000001";
				else
					result_from_operation := x"00000000";
				end if;
			when "1001" =>
				for i in 31 downto 0 loop
					result_from_operation(i) := operand1(i) OR operand2(i);
				end loop;

			when "1010" =>
				bool_one := bv_gt(operand1, x"00000000");
				if (bool_one = true) then
					result_from_operation := x"00000001";
				else
					result_from_operation := x"00000000";
				end if;
			when "1011" =>
				for i in 31 downto 0 loop
					result_from_operation(i) := NOT operand1(i);
				end loop;
			when others =>
				result_from_operation := x"00000000";
		end case;
		result <= result_from_operation;
	end process process_alu;
end architecture behavior;