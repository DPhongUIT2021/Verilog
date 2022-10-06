library verilog;
use verilog.vl_types.all;
entity AddSubUpdate is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        S               : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0)
    );
end AddSubUpdate;
