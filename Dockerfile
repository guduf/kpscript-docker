FROM mono
WORKDIR /usr/lib/keepass
RUN apt update && apt install -y wget unzip
RUN wget https://freefr.dl.sourceforge.net/project/keepass/KeePass%202.x/2.47/KeePass-2.47.zip
RUN unzip KeePass-2.47.zip && rm KeePass-2.47.zip
RUN wget https://keepass.info/extensions/v2/kpscript/KPScript-2.47.zip
RUN unzip KPScript-2.47.zip && rm KPScript-2.47.zip
WORKDIR /home
RUN printf '#!/bin/bash\n/usr/bin/mono /usr/lib/keepass/KPScript.exe "$@"\n' > /usr/bin/kpscript && chmod +x /usr/bin/kpscript
ENTRYPOINT [ "kpscript" ]
