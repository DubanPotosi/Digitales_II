library ieee;
use ieee.std_logic_1164.all;

entity RAM_test is 
	port( clock, writen : in std_logic;
			address, data_in : in std_logic_vector(7 downto 0);
			hex0, hex1: out std_logic_vector(0 to 7));
			
end entity;

architecture RAM_test_arch of RAM_test is
	
	component seven_segments is
		port( sw : in std_logic_vector(2 downto 0);
				pb: in std_logic;
				hex0: out std_logic_vector(0 to 7));
	end component;
	
	component rw_96x8_sync is
		port( clock : in std_logic;
				address : in std_logic_vector(7 downto 0);
				data_in : in std_logic_vector(7 downto 0);
				writen : in std_logic;
				data_out : out std_logic_vector(7 downto 0));
	end component;
	
	signal data_out : std_logic_vector(7 downto 0);
	signal data_out1 : std_logic_vector(2 downto 0) := data_out(2 downto 0);
	signal pb1 : std_logic := data_out(3);
	signal data_out2 : std_logic_vector(2 downto 0) := data_out(6 downto 4);
	signal pb2 : std_logic := data_out(7);
	
	begin
	
		ram: rw_96x8_sync port map(clock, address,data_in,writen,data_out);
		
		S0 : seven_segments port map (data_out1, pb1,hex0);
		
		S1 : seven_segments port map(data_out2, pb2 ,hex1);
		
end architecture;