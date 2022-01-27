library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        B               : in     vl_logic_vector(7 downto 0);
        Bus1            : in     vl_logic_vector(7 downto 0);
        ALU_Sel         : in     vl_logic_vector(2 downto 0);
        ALU_Result      : out    vl_logic_vector(7 downto 0);
        NZVC            : out    vl_logic_vector(3 downto 0)
    );
end alu;
