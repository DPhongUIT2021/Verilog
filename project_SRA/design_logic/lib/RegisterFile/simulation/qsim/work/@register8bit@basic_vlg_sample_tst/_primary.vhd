library verilog;
use verilog.vl_types.all;
entity Register8bitBasic_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Register8bitBasic_vlg_sample_tst;
