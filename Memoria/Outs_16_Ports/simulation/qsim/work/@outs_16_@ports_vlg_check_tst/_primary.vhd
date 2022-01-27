library verilog;
use verilog.vl_types.all;
entity Outs_16_Ports_vlg_check_tst is
    port(
        port_Out_00     : in     vl_logic_vector(7 downto 0);
        port_Out_01     : in     vl_logic_vector(7 downto 0);
        port_Out_02     : in     vl_logic_vector(7 downto 0);
        port_Out_03     : in     vl_logic_vector(7 downto 0);
        port_Out_04     : in     vl_logic_vector(7 downto 0);
        port_Out_05     : in     vl_logic_vector(7 downto 0);
        port_Out_06     : in     vl_logic_vector(7 downto 0);
        port_Out_07     : in     vl_logic_vector(7 downto 0);
        port_Out_08     : in     vl_logic_vector(7 downto 0);
        port_Out_09     : in     vl_logic_vector(7 downto 0);
        port_Out_10     : in     vl_logic_vector(7 downto 0);
        port_Out_11     : in     vl_logic_vector(7 downto 0);
        port_Out_12     : in     vl_logic_vector(7 downto 0);
        port_Out_13     : in     vl_logic_vector(7 downto 0);
        port_Out_14     : in     vl_logic_vector(7 downto 0);
        port_Out_15     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Outs_16_Ports_vlg_check_tst;
