## What is Helm?
According to [Helm Official webpage](https://helm.sh/):

```
Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

Charts are easy to create, version, share, and publish — so start using Helm and stop the copy-and-paste.
```

## This project
This repo provides an example Helm Template that you can modify and test to see how Helm Template works. Its folder structure is the following:

```
├── charts
│   ├── Chart.yaml
│   ├── templates
│   │   ├── deployment.yml
│   │   └── _helpers.tpl
│   └── values.yaml
└── README.md
```

### Where:
- **Chart.yaml:** is the Chart metadata. This information will be used to manage the Helm Chart.
- **templates:** where the Helm templates are located. This folder contains all the logic for the application manifest generation.
- **values.yaml:** all the values that can be used as input to the Helm Template. 

## Project setup
This project requires a local Kubernetes cluster so we can test our application deployment.

## How to run this lab
### 1. Access charts folder

```
cd charts/example
```

### 2. Edit `values.yaml` value with your deployment desired values.
### 3. Run the template
You should see the deployment manifests here.

```
helm template .
```
### 4. Install the chart locally

```
helm install example . -f values.yaml
```

## Publishing a chart to Github Pages
This project uses [chart-releasers-action](https://github.com/helm/chart-releaser-action) action to publish this Helm Chart to Github Pages.


For this repo you can use [this url](https://arielly-parussulo.github.io/helm-chart-workshop/).

### Adding a new Helm Chart repo

```
helm repo add workshop https://arielly-parussulo.github.io/helm-chart-workshop/
```

### List available charts

```
helm search repo workshop
```

### Installing an application from the repo chart

```
helm install example-3 workshop/chart-example --set deployment.name="example-3"
```

## Useful commands
### helm list
List the applications installed in a namespace.

### helm get values <app>
Get the values set for the application.

## More about Helm
https://helm.sh/docs/