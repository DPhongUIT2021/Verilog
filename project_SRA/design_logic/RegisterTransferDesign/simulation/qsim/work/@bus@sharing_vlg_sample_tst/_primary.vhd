library verilog;
use verilog.vl_types.all;
entity BusSharing_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        In1             : in     vl_logic_vector(15 downto 0);
        In2             : in     vl_logic_vector(15 downto 0);
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BusSharing_vlg_sample_tst;
