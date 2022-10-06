library verilog;
use verilog.vl_types.all;
entity SRwPL_8bit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        IL              : in     vl_logic;
        IR              : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SRwPL_8bit_vlg_sample_tst;
