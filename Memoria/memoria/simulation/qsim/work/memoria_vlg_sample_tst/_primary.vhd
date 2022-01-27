library verilog;
use verilog.vl_types.all;
entity memoria_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
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
        reset           : in     vl_logic;
        writen          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memoria_vlg_sample_tst;
