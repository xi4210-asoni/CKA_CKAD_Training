#SETUP

##Prometheus up or 
(https://github.com/prometheus-community/helm-charts/tree/main/charts/prometheus)

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update

helm show-values prometheus-community/kube-prometheus-stack > promvalues.yaml

helm install prometheus prometheus-community/kube-prometheus-stack -f promvalues.yaml

k port-forward svc/prometheus-operator-kube-p-prometheus 9092:9090
k port-forward svc/prometheus-operator-grafana 80

Grafana Creds - admin/prom-operator
kubectl get secret  prometheus-operator-grafana   -o jsonpath="{.data.admin-password" | base64 --decode ; echo

#TASK1  - SENDING NOTIFICATIONS TO SLACK

 k get prometheusrules  prometheus-operator-kube-p-general.rules  -o yaml
 