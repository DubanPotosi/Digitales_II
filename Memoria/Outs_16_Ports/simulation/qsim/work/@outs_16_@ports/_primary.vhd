library verilog;
use verilog.vl_types.all;
entity Outs_16_Ports is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        writen          : in     vl_logic;
        port_Out_00     : out    vl_logic_vector(7 downto 0);
        port_Out_01     : out    vl_logic_vector(7 downto 0);
        port_Out_02     : out    vl_logic_vector(7 downto 0);
        port_Out_03     : out    vl_logic_vector(7 downto 0);
        port_Out_04     : out    vl_logic_vector(7 downto 0);
        port_Out_05     : out    vl_logic_vector(7 downto 0);
        port_Out_06     : out    vl_logic_vector(7 downto 0);
        port_Out_07     : out    vl_logic_vector(7 downto 0);
        port_Out_08     : out    vl_logic_vector(7 downto 0);
        port_Out_09     : out    vl_logic_vector(7 downto 0);
        port_Out_10     : out    vl_logic_vector(7 downto 0);
        port_Out_11     : out    vl_logic_vector(7 downto 0);
        port_Out_12     : out    vl_logic_vector(7 downto 0);
        port_Out_13     : out    vl_logic_vector(7 downto 0);
        port_Out_14     : out    vl_logic_vector(7 downto 0);
        port_Out_15     : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic
    );
end Outs_16_Ports;
