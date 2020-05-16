# Kubernetes Daemonset to deploy the cifs-flexvol driver

## Cifs FlexVol Driver

[Here](https://github.com/fstab/cifs) you can find the source of the flexvol-driver.

## Deployer-Image

### Own build and registry

You can build the deployer by yourself with:

```lang=bash
docker build -t <registry>/<repo>:latest .
docker push <registry>/<repo>:latest
```

And change the image in the manifests/daemonset.yml file.

### Use prebuild image

Or you can use the prebuild image at:

`dermac/k8s-cifs-flexvol-driver-deployer:latest`

This image is already set in the manifests/daemonset.yml file.

## Activate Deployment

```lang=bash
kubectl apply -f manifests/namespace.yml
kubectl apply -f manifests/daemonset.yml
```

## Requirements

The driver needs some executeables available on the host, whose installation is not part of this deployer.
This should be done by some configuration management tool.

See: [https://github.com/fstab/cifs#installing](https://github.com/fstab/cifs#installing)
