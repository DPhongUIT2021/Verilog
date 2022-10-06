library verilog;
use verilog.vl_types.all;
entity Multi4 is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(15 downto 0)
    );
end Multi4;
