library verilog;
use verilog.vl_types.all;
entity Mux_4 is
    port(
        O               : out    vl_logic_vector(3 downto 0);
        S               : in     vl_logic;
        I1              : in     vl_logic_vector(3 downto 0);
        I0              : in     vl_logic_vector(3 downto 0)
    );
end Mux_4;
