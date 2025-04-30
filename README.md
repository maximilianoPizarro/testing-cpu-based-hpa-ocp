# testing-cpu-based-hpa-ocp
Testing cpu-based horizontal pod autoscaling on OpenShift

## Prerequisites

- Red Hat Account and Developer Sandbox.


## Hands on Developer Sandbox

1. Log in with DevSandbox method access, using your Red Hat Account.

2. From Developer perspective click on +Add button.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-2.png?raw=true" width="640" title="Hands on developer sandbox">
</p>  

3. Go to Samples, "Create an application from a code sample".

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-3.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

4. Select .NET Builder Images Sample.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-4.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

5. Look at the repository in another tab and click Create.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-5.png" width="640" title="Hands on developer sandbox">
</p>


6. Check the Topology section and wait for the pod to be ready.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-6.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

7. From the dotnet-sample deployment, click Actions / Edit resource limits.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-7.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

8. Configure resource limits and requests and click Save.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-8.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

9. From the dotnet-sample deployment, click Actions / Add HorizontalPodAutoscaler.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-9.png" width="640" title="Hands on developer sandbox">
</p>

10. Set to 5% for CPU Utilization and click Save.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-10.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

11. Open OpenShift commmand line terminal, initialize terminal with your proyect, click Start.

<p align="left">
  <img src="https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/blob/main/images/step-11.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

12. From this terminal clone this repo.

```bash
git clone https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp.git
```

