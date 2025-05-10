kubectl create secret generic dummy-tls-cert-1 --from-literal=tls.key= --from-literal=tls.crt= --from-literal=ca.crt=
kubectl create secret generic dummy-tls-cert-2 --from-literal=tls.key= --from-literal=tls.crt= --from-literal=ca.crt=
