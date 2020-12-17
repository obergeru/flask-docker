kubectl create ns flux
export GHUSER="obergeru"
fluxctl install \
--git-user=${GHUSER} \
--git-email=${GHUSER}@users.noreply.github.com \
--git-url=git@github.com:${GHUSER}/flask-docker \
--git-path=namespaces,workloads \
--namespace=flux | kubectl apply -f -
