library verilog;
use verilog.vl_types.all;
entity Mux8Bit is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        S               : in     vl_logic;
        I0              : in     vl_logic_vector(7 downto 0);
        I1              : in     vl_logic_vector(7 downto 0)
    );
end Mux8Bit;
