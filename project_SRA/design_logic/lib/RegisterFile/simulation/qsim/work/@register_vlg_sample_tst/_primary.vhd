library verilog;
use verilog.vl_types.all;
entity Register_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 0);
        RE              : in     vl_logic;
        WE              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Register_vlg_sample_tst;
