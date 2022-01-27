library verilog;
use verilog.vl_types.all;
entity memoria is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        writen          : in     vl_logic;
        port_in_00      : in     vl_logic_vector(7 downto 0);
        port_in_01      : in     vl_logic_vector(7 downto 0);
        port_in_02      : in     vl_logic_vector(7 downto 0);
        port_in_03      : in     vl_logic_vector(7 downto 0);
        port_in_04      : in     vl_logic_vector(7 downto 0);
        port_in_05      : in     vl_logic_vector(7 downto 0);
        port_in_06      : in     vl_logic_vector(7 downto 0);
        port_in_07      : in     vl_logic_vector(7 downto 0);
        port_in_08      : in     vl_logic_vector(7 downto 0);
        port_in_09      : in     vl_logic_vector(7 downto 0);
        port_in_10      : in     vl_logic_vector(7 downto 0);
        port_in_11      : in     vl_logic_vector(7 downto 0);
        port_in_12      : in     vl_logic_vector(7 downto 0);
        port_in_13      : in     vl_logic_vector(7 downto 0);
        port_in_14      : in     vl_logic_vector(7 downto 0);
        port_in_15      : in     vl_logic_vector(7 downto 0);
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
        data_Out        : out    vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic
    );
end memoria;
