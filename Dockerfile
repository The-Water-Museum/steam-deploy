FROM ghcr.io/the-water-museum/steamcmd:v1

ENV STEAM_CMD="$STEAMCMDDIR/steamcmd.sh"

ADD *.sh $STEAMCMDDIR

USER root
RUN chown -vfR root:root $STEAMCMDDIR

CMD "$STEAMCMDDIR/steam_deploy.sh"
