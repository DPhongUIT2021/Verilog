library verilog;
use verilog.vl_types.all;
entity Adder8Bit is
    port(
        CaryOut         : out    vl_logic;
        CaryIn          : in     vl_logic;
        I0              : in     vl_logic_vector(7 downto 0);
        I1              : in     vl_logic_vector(7 downto 0);
        O               : out    vl_logic_vector(7 downto 0)
    );
end Adder8Bit;
