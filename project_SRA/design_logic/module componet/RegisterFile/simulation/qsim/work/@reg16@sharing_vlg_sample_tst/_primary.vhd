library verilog;
use verilog.vl_types.all;
entity Reg16Sharing_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        RE              : in     vl_logic;
        WE              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Reg16Sharing_vlg_sample_tst;
