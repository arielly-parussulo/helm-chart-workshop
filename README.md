## What is Helm?
According to [Helm Official webpage](https://helm.sh/):

```
Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

Charts are easy to create, version, share, and publish — so start using Helm and stop the copy-and-paste.
```

## This project
This repo provides an example Helm Template that you can modify and test to see how Helm Template works. Its folder structure is the following:

```
├── Chart.yaml
├── README.md
├── templates
│   ├── deployment.yml
│   └── _helpers.tpl
└── values.yaml
```

### Where:
- **Chart.yaml:** is the Chart metadata. This information will be used to manage the Helm Chart.
- **templates:** where the Helm templates are located. This folder contains all the logic for the application manifest generation.
- **values.yaml:** all the values that can be used as input to the Helm Template. 

## Project setup
This project requires a local Kubernetes cluster so we can test our application deployment.

## How to run this lab
1. Edit `values.yaml` value with your deployment desired values.
2. Run `helm template .` to see the deployment manifest.
3. Run `helm install <your-app-name> . -f values.yaml` to install the application in your cluster.

## Publishing a chart to Github Pages
[This file](.github/workflows/release.yml) has a pipeline that publish the Helm Chart into a Github Page.

## Useful commands
### helm list
List the applications installed in a namespace.

### helm get values <app>
Get the values set for the application.