# backstage-chart

Backstage Helm chart based on [vinzscam/backstage-chart](https://github.com/vinzscam/backstage-chart)


## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:
```
helm repo add backstage https://canal-consulting.github.io/backstage-chart
```
If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
backstage` to see the charts.

To install the <chart-name> chart:

    helm install my-backstage-release backstage

To uninstall the chart:

    helm delete my-backstage-release