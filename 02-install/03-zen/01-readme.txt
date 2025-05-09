When you first install just apply the 02-deploy-zen-1.yaml:

  - oc apply -f 02-deploy-zen-2.yaml
  - This will use the default ingress certificate that comes with your cluster

****                                                                                  ****
**** ZEN DOES NOT AUTOMATICALLY ROTATE THE CERTIFICATE WHEN THE CLUSTER CERT ROTATES  ****
****                                                                                  ****

When the cluster cert rotates, you will need to run 03-deploy-zen-2.yaml:

  - Update the route hostname with your cpd route hostname
  - oc apply -f 03-deploy-zen-2.yaml


You will now need to switch which yaml to run every time the cluster cert rotates.

  - If you applied 03-deploy-zen-2.yaml last time, apply 02-deploy-zen-1.yaml
  - If you applied 02-deploy-zen-1.yaml last time, apply 03-deploy-zen-2.yaml

You need to do this because Zen won't refresh unless there was some change to the CR.

  - Zen will create the cpd route name if it is not in the CR
  - Alternating the CR without and then with the hostname is the simplest way to force the refresh.
