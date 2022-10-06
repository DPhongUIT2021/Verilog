library verilog;
use verilog.vl_types.all;
entity AbsMax is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        R2              : in     vl_logic_vector(15 downto 0);
        C               : in     vl_logic;
        R1              : in     vl_logic_vector(15 downto 0)
    );
end AbsMax;
