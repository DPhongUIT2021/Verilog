library verilog;
use verilog.vl_types.all;
entity ShiftRight1_16bit is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        I               : in     vl_logic_vector(15 downto 0)
    );
end ShiftRight1_16bit;
