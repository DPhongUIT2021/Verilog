library verilog;
use verilog.vl_types.all;
entity ShiftRight3bit is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(7 downto 0)
    );
end ShiftRight3bit;
