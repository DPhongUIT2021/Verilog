library verilog;
use verilog.vl_types.all;
entity ShiftRight3_16it is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        I               : in     vl_logic_vector(15 downto 0)
    );
end ShiftRight3_16it;
