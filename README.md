# pro690-g13-argocd-front-demo
### Group 13's Simple React App to Practice ArgoCD

---
This repository will run several `CI Work` automatically when the change is pushed into the `main` branch.  
At this time, the most important CI Work is building our React app and pushes it to `Docker Hub` and `Git Package`.  
Then, our last CI work will replace the `Manifest` file of [pro690-g13-argocd-server-demo](https://github.com/jjaykim/pro690-g13-argocd-server-demo) with the pushed Docker Image and update it
