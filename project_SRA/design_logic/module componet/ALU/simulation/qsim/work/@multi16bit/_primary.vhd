library verilog;
use verilog.vl_types.all;
entity Multi16bit is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end Multi16bit;
