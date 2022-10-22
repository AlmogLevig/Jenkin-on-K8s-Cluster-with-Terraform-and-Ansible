################
## my-Aliases ##
################
alias bashrc='sudo vim ~/.bashrc'
alias bash_a='sudo vim ~/.bash_aliases'
alias refresh='source ~/.bash_aliases'
alias cl='clear'
alias exp='export'

#########
## Git ##
#########
alias g='git'
alias g_ini='git init'
alias g_bra='git branch'
alias g_add='git add'
alias g_com='git commit'
alias g_che='git checkout'
alias g_pus='git push'
alias g_pus_su='git push --set-upstream'
alias g_log='git log'
alias g_lol='git log --oneline'
alias g_los='git log --stat'
alias g_dif='git diff'
alias g_mer='git merge'
alias g_pul='git pull'
alias g_clo='git clone'
alias g_sta='git status'
alias g_aac='git add . && git commit'
alias g_fet='git fetch'

############
## Docker ##
############
alias sd='sudo docker'

alias sdru='sudo docker run'
alias sdst='sudo docker start'
alias sdsto='sudo docker stop'

alias sdimgls='sudo docker image ls'
alias sdimgs='sudo docker images'
alias sdconls='sudo docker container ls'
alias sdps="sudo docker ps -a"

alias sdbu='sudo docker build'
alias sdpu='sudo docker push'
alias sdpul='sudo docker pull'

alias sdimgrm='sudo docker image rm'
alias sdpru='sudo docker system prune'
alias sdprua='docker system prune --volumes'
alias sdconpru='sudo docker container prune'
alias sdimgpru='sudo docker image prune'
alias sdvolpru='sudo docker volume prune'

alias sdcomup='sudo docker compose up'
alias sdcomdown='sudo docker compose down'
alias sdconrm='sudo docker container rm'

#########
## K8s ##
#########
alias k='kubectl'

alias a='apply -f'
alias rm='delete'
alias g='get'
alias dep='deployment'
alias d='describe'

alias ser='service'
alias po='pods'
alias no='nodes'
alias ing='ingress'
alias stf='statefulset'
alias cm='configmap'
alias sec='secret'

alias kg='kubectl get'
alias kd='kubectl describe'
alias krm='kubectl delete'
alias no='nodes'

alias klogsa='kg deployment -A && echo " " && kg service -A && echo " " && kg pods -A && echo " " && kg hpa -A'
alias klogs='kg deployment -o wide && echo " " && kg service -o wide  && echo " " && kg pods -o wide && echo " " && kg hpa -o wide'

alias krs='sudo systemctl restart kubelet.service'

# Apply
alias ka='kubectl apply -f'
alias kar='kubectl apply --recursive -f'
alias kex='kubectl exec -i -t'
alias kak='kubectl apply -k'
alias kk='kubectl kustomize'


alias ksysd='kubectl --namespace=kube-system describe'
alias ksys='kubectl --namespace=kube-system'
alias ksysa='kubectl --namespace=kube-system apply --recursive -f'
alias ksysex='kubectl --namespace=kube-system exec -i -t'

# Logs
alias klo='kubectl logs -f'
alias ksyslo='kubectl --namespace=kube-system logs -f'
alias klop='kubectl logs -f -p'
alias ksyslop='kubectl --namespace=kube-system logs -f -p'

# Port-forward
alias kp='kubectl proxy'
alias kpf='kubectl port-forward'

# Pods
alias kgpo='kubectl get pods'
alias ksysgpo='kubectl --namespace=kube-system get pods'
alias kdpo='kubectl describe pods'
alias ksysdpo='kubectl --namespace=kube-system describe pods'
alias krmpo='kubectl delete pods'
alias ksysrmpo='kubectl --namespace=kube-system delete pods'

# Deployment
alias kgdep='kubectl get deployment'
alias ksysgdep='kubectl --namespace=kube-system get deployment'
alias kddep='kubectl describe deployment'
alias ksysddep='kubectl --namespace=kube-system describe deployment'
alias krmdep='kubectl delete deployment'
alias ksysrmdep='kubectl --namespace=kube-system delete deployment'

# Statefulset
alias kgsts='kubectl get statefulset'
alias ksysgsts='kubectl --namespace=kube-system get statefulset'
alias kdsts='kubectl describe statefulset'
alias ksysdsts='kubectl --namespace=kube-system describe statefulset'
alias krmsts='kubectl delete statefulset'
alias ksysrmsts='kubectl --namespace=kube-system delete statefulset'

# Ingress
alias kging='kubectl get ingress'
alias ksysging='kubectl --namespace=kube-system get ingress'
alias kding='kubectl describe ingress'
alias ksysding='kubectl --namespace=kube-system describe ingress'
alias krming='kubectl delete ingress'
alias ksysrming='kubectl --namespace=kube-system delete ingress'

# Configmap
alias kgcm='kubectl get configmap'
alias ksysgcm='kubectl --namespace=kube-system get configmap'
alias kdcm='kubectl describe configmap'
alias ksysdcm='kubectl --namespace=kube-system describe configmap'
alias krmcm='kubectl delete configmap'
alias ksysrmcm='kubectl --namespace=kube-system delete configmap'

# nodes & namespaces
alias kgno='kubectl get nodes'
alias kdno='kubectl describe nodes'
alias kgns='kubectl get namespaces'
alias kdns='kubectl describe namespaces'
alias krmns='kubectl delete namespaces'

# Secrets
alias kgsec='kubectl get secret'
alias ksysgsec='kubectl --namespace=kube-system get secret'
alias kdsec='kubectl describe secret'
alias ksysdsec='kubectl --namespace=kube-system describe secret'
alias krmsec='kubectl delete secret'
alias ksysrmsec='kubectl --namespace=kube-system delete secret'

# Services
alias kgsvc='kubectl get service'
alias ksysgsvc='kubectl --namespace=kube-system get service'
alias kdsvc='kubectl describe service'
alias ksysdsvc='kubectl --namespace=kube-system describe service'
alias krmsvc='kubectl delete service'
alias ksysrmsvc='kubectl --namespace=kube-system delete service'

# Flags
alias n='-n/--namespace'
alias a='-a/--all'
alias w='-w/--watch'
alias f='-f/--filename'
alias l='-l/--selector'
alias sl='-sl/--show-lasbels'
alias ans='--all-namespaces'