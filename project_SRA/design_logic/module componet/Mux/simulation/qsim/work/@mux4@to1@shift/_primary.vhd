library verilog;
use verilog.vl_types.all;
entity Mux4To1Shift is
    port(
        O               : out    vl_logic;
        S               : in     vl_logic_vector(1 downto 0);
        D0              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        D1              : in     vl_logic
    );
end Mux4To1Shift;
