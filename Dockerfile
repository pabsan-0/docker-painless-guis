FROM ubuntu:20.04

ENV DEBIAN_FRONTED=noninteractive

RUN apt update && apt install -y --no-install-recommends firefox nautilus

RUN useradd -m -s /bin/bash gumby
RUN useradd -m -s /bin/bash gumby2

ENTRYPOINT ["bash","-c"]
CMD ["bash"]