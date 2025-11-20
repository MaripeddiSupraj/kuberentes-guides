# Basic Volumes

This example demonstrates how to use a basic `emptyDir` volume to share data between two containers in the same Pod.

## What is an emptyDir Volume?

An **emptyDir** volume is a temporary volume that is created when a Pod is assigned to a Node. It is initially empty and is used for sharing data between containers in the same Pod. The data in an `emptyDir` volume is deleted when the Pod is removed from the Node.

## Example in this Section

- `emptydir-volume.yaml`: This file defines a Pod with two containers, `writer` and `reader`. The two containers share an `emptyDir` volume named `shared-storage`. The `writer` container writes the current date to a file in the shared volume every 10 seconds, and the `reader` container reads the contents of the file every 15 seconds.

## Common Operations

```bash
# Create the Pod from the manifest file
kubectl apply -f emptydir-volume.yaml

# Check the logs of the writer container
kubectl logs volume-demo -c writer

# Check the logs of the reader container
kubectl logs volume-demo -c reader
```
