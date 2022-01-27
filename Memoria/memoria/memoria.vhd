library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memoria is
 port(
		 address : in std_logic_vector (7 downto 0);
		 data_in : in std_logic_vector (7 downto 0);
		 writen : in std_logic;
		 port_in_00, port_in_01, port_in_02, port_in_03, 
		 port_in_04, port_in_05, port_in_06, port_in_07,
		 port_in_08, port_in_09, port_in_10, port_in_11, 
		 port_in_12, port_in_13, port_in_14, port_in_15 : in std_logic_vector (7 downto 0);
		 port_Out_00, port_Out_01, port_Out_02, port_Out_03, 
		 port_Out_04, port_Out_05, port_Out_06, port_Out_07,
		 port_Out_08, port_Out_09, port_Out_10, port_Out_11, 
		 port_Out_12, port_Out_13, port_Out_14, port_Out_15 : out std_logic_vector (7 downto 0);
		 data_Out : out std_logic_vector (7 downto 0);
		 clock : in std_logic;
		 reset : in std_logic
			);
 
 end entity;
 
 
 
 
 architecture memoria_arch of memoria is
 
 ----------------------------------------------------
component rom_128x8_sync
	port (
        address : in std_logic_vector (7 downto 0);
		  clock : in std_logic;
		  data_Out : out std_logic_vector (7 downto 0)
    );
end component;
  
------------------------------------------------------
component rw_96x8_sync
	port (
        address : in std_logic_vector (7 downto 0);
		  data_in : in std_logic_vector (7 downto 0);
		  clock : in std_logic;
		  writen : in std_logic;
		  data_Out : out std_logic_vector (7 downto 0)
    );
end component;
	
-----------------------------------------------------------	
	component Outs_16_Ports
		port (
        address : in std_logic_vector (7 downto 0);
		  data_in : in std_logic_vector (7 downto 0);
		  clock : in std_logic;
		  writen : in std_logic;
		  port_Out_00, port_Out_01, port_Out_02, port_Out_03, 
		  port_Out_04, port_Out_05, port_Out_06, port_Out_07,
		  port_Out_08, port_Out_09, port_Out_10, port_Out_11, 
		  port_Out_12, port_Out_13, port_Out_14, port_Out_15 : out std_logic_vector (7 downto 0);
		  reset : in std_logic
    );
	end component;
	
	
 signal rom_data_out, ram_data_out : std_logic_vector (7 downto 0);
 
 begin
 
 ------------------------------------------------------------------------------------------------
		rom : rom_128x8_sync port map (address=>address, clock=>clock, data_Out=>rom_data_out);
	
		ram : rw_96x8_sync port map (address=>address, data_in=>data_in, clock=>clock, writen=>writen, data_Out=>ram_data_out);
	
		port_out : Outs_16_Ports port map (address=>address, data_in=>data_in, clock=>clock, writen=>writen, port_Out_00=>port_Out_00 , port_Out_01=>port_Out_01 , port_Out_02=>port_Out_02 , 
										  port_Out_03=>port_Out_03 , port_Out_04=>port_Out_04 , port_Out_05=>port_Out_05 , port_Out_06=>port_Out_06 , port_Out_07=>port_Out_07 , 
										  port_Out_08=>port_Out_08 , port_Out_09=>port_Out_09 , port_Out_10=>port_Out_10 , port_Out_11=>port_Out_11 , port_Out_12=>port_Out_12 , 
										  port_Out_13=>port_Out_13 , port_Out_14=>port_Out_14 , port_Out_15=>port_Out_15, reset=>reset);
										  

--------------------------------------------------------------------------------------------------
	MUX1 : process (address, rom_data_out, ram_data_out,
		port_in_00, port_in_01, port_in_02, port_in_03,
		port_in_04, port_in_05, port_in_06, port_in_07,
		port_in_08, port_in_09, port_in_10, port_in_11,
		port_in_12, port_in_13, port_in_14, port_in_15)
			
	begin
		if ( (to_integer(unsigned(address)) >= 0) and (to_integer(unsigned(address)) <= 127)) then
			data_out <= rom_data_out;
		elsif ( (to_integer(unsigned(address)) >= 128) and (to_integer(unsigned(address)) <= 223)) then
			data_out <= ram_data_out;

		elsif (address = x"F0") then data_out <= port_in_00;
		elsif (address = x"F1") then data_out <= port_in_01;
		elsif (address = x"F2") then data_out <= port_in_02;
		elsif (address = x"F3") then data_out <= port_in_03;
		elsif (address = x"F4") then data_out <= port_in_04;
		elsif (address = x"F5") then data_out <= port_in_05;
		elsif (address = x"F6") then data_out <= port_in_06;
		elsif (address = x"F7") then data_out <= port_in_07;
		elsif (address = x"F8") then data_out <= port_in_08;
		elsif (address = x"F9") then data_out <= port_in_09;
		elsif (address = x"FA") then data_out <= port_in_10;
		elsif (address = x"FB") then data_out <= port_in_11;
		elsif (address = x"FC") then data_out <= port_in_12;
		elsif (address = x"FD") then data_out <= port_in_13;
		elsif (address = x"FE") then data_out <= port_in_14;
		elsif (address = x"FF") then data_out <= port_in_15;
		else data_out <= x"00";
		end if;
	end process;

end architecture;