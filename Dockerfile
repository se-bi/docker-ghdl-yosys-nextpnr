FROM ghdl/synth:formal

COPY --from=ghdl/synth:icestorm /opt/icestorm /opt/icestorm
ENV PATH /opt/icestorm/bin:$PATH

COPY --from=ghdl/synth:nextpnr /opt/nextpnr /opt/nextpnr
ENV PATH /opt/nextpnr/bin:$PATH

RUN apt-get update -qq \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
    git \
    libboost-all-dev \
    iverilog \
 && apt-get autoclean && apt-get clean && apt-get -y autoremove \
 && rm -rf /var/lib/apt/lists/*
