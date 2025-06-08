#!/bin/bash

logo=$(cat <<'EOF' | sed 's/^/\x1b[1;36m/;s/$/\x1b[0m/'
 
                  .o+`
                 `ooo/
                `+oooo:
               `+oooooo:
               -+oooooo+:
             `/:-:++oooo+:
            `/++++/+++++++:
           `/++++++++++++++:
          `/+++ooooooooooooo/`
         ./ooosssso++osssssso+`
        .oossssso-````/ossssss+`
       -osssssso.      :ssssssso.
      :osssssss/        osssso+++.
     /ossssssss/        +ssssooo/-
   `/ossssso+/:-        -:/+osssso+-
  `+sso+:-`                 `.-/+oso:
 `++:.                           `-/+/
 .`                                 `/
 
EOF
)

# Define the command list (right column) with colors
commands=$(cat <<EOF

\033[1;36m                  Quick-Commands\033[0m
\033[0;37m                  --------------\033[0m
\033[1;36m                  tldr\033[0m: \033[0;37mConcise command explanation\033[0m
\033[1;36m          man\033[0m: \033[0;37mMore detailed manual page\033[0m
\033[1;36m          btop\033[0m: \033[0;37mDisplay system information\033[0m
\033[1;36m          cmatrix -C cyan\033[0m: \033[0;37mLaunches system matrix\033[0m
\033[1;36m          cava\033[0m: \033[0;37mShow audio visualizer\033[0m
\033[1;36m          chmod +x file\033[0m: \033[0;37mMake a file executable\033[0m
\033[1;36m          chown\033[0m: \033[0;37mChange file ownership\033[0m
\033[1;36m          rsync -av folder/ dst/\033[0m: \033[0;37mSync folders with progress\033[0m
\033[1;36m  curl -O URL\033[0m: \033[0;37mDownload file from the internet\033[0m
\033[1;36m  tar -xf file.tar.gz\033[0m: \033[0;37mExtract archive files\033[0m
\033[1;36m  du -sh folder/\033[0m: \033[0;37mShow folder size summary\033[0m
\033[1;36m  grep "text" file\033[0m: \033[0;37mSearch for text in a file\033[0m
\033[1;36m  ps aux | grep process\033[0m: \033[0;37mFind running process info\033[0m
\033[1;36m  kill PID\033[0m: \033[0;37mTerminate process by PID\033[0m
\033[1;36m  df -h\033[0m: \033[0;37mShow disk space usage\033[0m
\033[1;36m  ssh user@host\033[0m: \033[0;37mSecure shell into remote machine\033[0m
EOF
)

# Merge the two columns line by line using paste
paste -d '\t' <(echo "$logo") <(echo -e "$commands")

