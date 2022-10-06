library verilog;
use verilog.vl_types.all;
entity OneRegister16bit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        RAA             : in     vl_logic;
        RAB             : in     vl_logic;
        WA              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end OneRegister16bit_vlg_sample_tst;
