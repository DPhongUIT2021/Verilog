library verilog;
use verilog.vl_types.all;
entity Mux16Bit8To1_vlg_sample_tst is
    port(
        I0              : in     vl_logic_vector(15 downto 0);
        I1              : in     vl_logic_vector(15 downto 0);
        I2              : in     vl_logic_vector(15 downto 0);
        I3              : in     vl_logic_vector(15 downto 0);
        I4              : in     vl_logic_vector(15 downto 0);
        I5              : in     vl_logic_vector(15 downto 0);
        I6              : in     vl_logic_vector(15 downto 0);
        I7              : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Mux16Bit8To1_vlg_sample_tst;
