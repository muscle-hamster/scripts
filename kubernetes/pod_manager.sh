#!/bin/bash
kubectl get pods --no-headers -o custom-columns=":metadata.name" | fzf --bind "ctrl-a:toggle-all" -m | xargs -P 0 -I{} kubectl exec {} -- $@
