library verilog;
use verilog.vl_types.all;
entity Mux16Bit4To1_vlg_sample_tst is
    port(
        I0              : in     vl_logic_vector(15 downto 0);
        I1              : in     vl_logic_vector(15 downto 0);
        I2              : in     vl_logic_vector(15 downto 0);
        I3              : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Mux16Bit4To1_vlg_sample_tst;
