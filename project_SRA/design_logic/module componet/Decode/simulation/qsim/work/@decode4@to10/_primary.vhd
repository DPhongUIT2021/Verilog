library verilog;
use verilog.vl_types.all;
entity Decode4To10 is
    port(
        O               : out    vl_logic_vector(9 downto 0);
        I               : in     vl_logic_vector(3 downto 0)
    );
end Decode4To10;
