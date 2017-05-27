# kube-setup

kube-setup is a set of ansible roles for turn-up kubernetes clusters based on
[kubernetes the hard way][KTHW].

kube-setup can bootstrap a kubernetes cluster with:

* HA etcd cluster
* HA Kubernetes control plane
* KubeDNS Add-on

[KTHW]: https://github.com/kelseyhightower/kubernetes-the-hard-way

## Usage (WIP)

Install machines, copy `inventory.example` to `inventory` and edit it, then do
`./cluster-up.sh.`  After cluster-up.sh, your kubeconfig is placed in
`inventory/token/admin.kubeconfig`.

XXX: Detailed descriptions will be added in the future.

## Notes

* You need to [add routes for K8s Cluster CIDR into your routers][KTHW-RT] by
  hand.

[KTHW-RT]: https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/docs/08-network.md

## Acknowledgement

* Many systemd unit files, K8s manifests and procedures are based on
  [kubernetes the hard way][KTHW]

## Author

Katsuyuki Tateishi <kt@wheel.jp>
