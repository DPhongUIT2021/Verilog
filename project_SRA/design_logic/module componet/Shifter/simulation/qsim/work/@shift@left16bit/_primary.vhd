library verilog;
use verilog.vl_types.all;
entity ShiftLeft16bit is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        I               : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic_vector(1 downto 0)
    );
end ShiftLeft16bit;
