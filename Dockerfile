FROM ilteoood/docker-surfshark as base
FROM denoland/deno

HEALTHCHECK NONE

COPY --from=base / /


WORKDIR /vpn

COPY get_server_configs.sh .
#
RUN chmod +x ./get_server_configs.sh
RUN ./get_server_configs.sh

#RUN #ls -lh ./ovpn_configs

COPY main.ts .

ENTRYPOINT ["deno", "run", "--allow-run", "--allow-read", "main.ts"]
