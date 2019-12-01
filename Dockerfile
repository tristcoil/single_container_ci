# following tutorial from
# https://medium.com/mobileforgood/coding-tips-patterns-for-continuous-integration-with-docker-on-travis-ci-9cedb8348a62

FROM debian
RUN apt-get update \
    && apt-get install -y --no-install-recommends cowsay \
    && rm -rf /var/lib/apt/lists/*
ENV PATH "$PATH:/usr/games"

ENTRYPOINT ["cowsay"]
CMD ["Hello, World!"]
