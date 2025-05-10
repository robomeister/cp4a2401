When you first install, generate the dummy secrets and apply only the 02-deploy-zen-1.yaml:

  - oc apply -f 02-deploy-zen-2.yaml
  - This will use the default ingress certificate that comes with your cluster

****                                                                                  ****
**** ZEN DOES NOT AUTOMATICALLY ROTATE THE CERTIFICATE WHEN THE CLUSTER CERT ROTATES! ****
****                                                                                  ****

When the cluster cert rotates, you will need to run 03-deploy-zen-2.yaml:

  - oc apply -f 03-deploy-zen-2.yaml


Afterwards, you will need to alernate which yaml to appy every time the cluster cert rotates.

  - If you applied 03-deploy-zen-2.yaml last time, oc apply -f 02-deploy-zen-1.yaml
  - If you applied 02-deploy-zen-1.yaml last time, oc apply -f 03-deploy-zen-2.yaml
  - You need to do this because Zen won't refresh unless there was some change to the CR.
  - Each of the two yaml files has a different dummy cert in it


****                                                                                  ****
****                   THIS ONLY WORKS ON 24.0.4 IFIX001 and Higher                   ****
****                                                                                  ****
