# docker-ghdl-yosys-nextpnr

Docker container with the complete opensource FPGA toolchain (ghdl, yosys, nextpnr, etc.)

- Bases on [ghdl/synth:formal](https://github.com/ghdl/docker)
  - Includes the tarball from `ghdl/cache:formal`
    - Includes [YosysHQ/SymbiYosys](https://github.com/YosysHQ/SymbiYosys) (`master`)
    - Includes [Z3Prover/z3](https://github.com/Z3Prover/z3) (`master`)
    - Based on Debian Buster
  - Includes `python3`
  - Based on `ghdl/synth:beta`
    - Includes ghdl from `ghdl/synth:latest`
      - Includes [ghdl/ghdl](https://github.com/ghdl/ghdl)
    - Includes ghdlsynth-beta built as a module for [YosysHQ/yosys](https://github.com/YosysHQ/yosys)
    - Based on `ghdl/cache:yosys-gnat`
      - Includes `libgnat-8`
      - Based on `ghdl/synth:yosys`
        - Includes [YosysHQ/yosys](https://github.com/YosysHQ/yosys) (`master`)
- Includes the tarball from `ghdl/synth:icestorm`
  - Includes [cliffordwolf/icestorm](https://github.com/cliffordwolf/icestorm) (`master`)
- Includes the tarball from `ghdl/synth:nextpnr`
  - Includes [YosysHQ/nextpnr](https://github.com/YosysHQ/nextpnr) (`master`)
- Includes `git`
- Includes `iverilog`
- Includes `libboost-all-dev`
