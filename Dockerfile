FROM The-Water-Museum/steamcmd

ENV STEAM_CMD="$STEAMCMDDIR/steamcmd.sh"

ADD *.sh $STEAMCMDDIR

USER root
RUN chown -vfR root:root $STEAMCMDDIR

CMD "$STEAMCMDDIR/steam_deploy.sh"
