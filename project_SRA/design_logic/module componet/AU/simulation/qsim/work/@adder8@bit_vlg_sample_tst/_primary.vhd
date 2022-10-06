library verilog;
use verilog.vl_types.all;
entity Adder8Bit_vlg_sample_tst is
    port(
        CaryIn          : in     vl_logic;
        I0              : in     vl_logic_vector(7 downto 0);
        I1              : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Adder8Bit_vlg_sample_tst;
