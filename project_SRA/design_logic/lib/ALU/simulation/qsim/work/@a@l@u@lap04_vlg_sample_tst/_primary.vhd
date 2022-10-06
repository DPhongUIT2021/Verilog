library verilog;
use verilog.vl_types.all;
entity ALULap04_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Opcode          : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALULap04_vlg_sample_tst;
