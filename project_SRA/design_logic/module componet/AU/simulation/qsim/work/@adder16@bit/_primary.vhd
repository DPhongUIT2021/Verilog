library verilog;
use verilog.vl_types.all;
entity Adder16Bit is
    port(
        R               : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0)
    );
end Adder16Bit;
