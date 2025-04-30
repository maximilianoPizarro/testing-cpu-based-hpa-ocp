# testing-cpu-based-hpa-ocp

<p align="left">
<img src="https://img.shields.io/badge/redhat-CC0000?style=for-the-badge&logo=redhat&logoColor=white" alt="Redhat">
<img src="https://img.shields.io/badge/openshift-%23121011.svg?style=for-the-badge&logo=openshift&logoColor=white" alt="OpenShift">
<img src="https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white" alt="kubernetes">
<img src="https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="shell">
<a href="https://www.linkedin.com/in/maximiliano-gregorio-pizarro-consultor-it"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="linkedin">     
</p>

Testing cpu-based horizontal pod autoscaling on OpenShift

## Prerequisites

- Red Hat Account and [Developer Sandbox](https://developers.redhat.com/developer-sandbox).


## Hands on Developer Sandbox

1. Log in with DevSandbox method access, using your Red Hat Account.

2. From Developer perspective click on +Add button.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-2.png" width="640" title="Hands on developer sandbox">
</p>  

3. Go to Samples, "Create an application from a code sample".

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-3.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

4. Select .NET Builder Images Sample.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-4.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

5. Look at the repository in another tab and click Create.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-5.png" width="640" title="Hands on developer sandbox">
</p>


6. Check the Topology section and wait for the pod to be ready.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-6.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

7. From the dotnet-sample deployment, click Actions / Edit resource limits.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-7.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

8. Configure resource limits and requests and click Save.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-8.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

9. From the dotnet-sample deployment, click Actions / Add HorizontalPodAutoscaler.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-9.png" width="640" title="Hands on developer sandbox">
</p>

10. Set to 5% for CPU Utilization and click Save.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-10.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

11. Open OpenShift commmand line terminal, initialize terminal with your proyect, click Start.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-11.png?raw=true" width="640" title="Hands on developer sandbox">
</p>

12. From this terminal 

a. Clone this repo.

```bash
git clone https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp.git
```

b. Add chmod permission for test-hpa.sh script.

```bash
chmod 777 ./testing-cpu-based-hpa-ocp/test-hpa.sh
```

c. Run test-hpa.sh script.

```bash
./testing-cpu-based-hpa-ocp/test-hpa.sh
```

13. Look at the HPA in action.

<p align="left">
  <img src="https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/refs/heads/main/images/step-12.png" width="640" title="Hands on developer sandbox">
</p>

Build Here, Go Anywhere