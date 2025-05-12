# Testing CPU-Based Horizontal Pod Autoscaling on OpenShift

![Redhat](https://img.shields.io/badge/redhat-CC0000?style=for-the-badge&logo=redhat&logoColor=white)
![OpenShift](https://img.shields.io/badge/openshift-%23121011.svg?style=for-the-badge&logo=openshift&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Shell](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/maximiliano-gregorio-pizarro-consultor-it)

## Prerequisites

- Red Hat Account and [Developer Sandbox](https://developers.redhat.com/developer-sandbox).

---

## Hands-on Developer Sandbox

### Step 1: Log in to Developer Sandbox
Log in with your Red Hat Account.

### Step 2: Add a New Application
From the Developer perspective, click on the **+Add** button.

![Step 2](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-2.png)

### Step 3: Create an Application from a Code Sample
Go to **Samples** and select "Create an application from a code sample."

![Step 3](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-3.png)

### Step 4: Select .NET Builder Images Sample
Choose the `.NET Builder Images Sample`.

![Step 4](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-4.png)

### Step 5: Create the Application
Review the repository and click **Create**.

![Step 5](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-5.png)

### Step 6: Check the Topology Section
Wait for the pod to be ready in the **Topology** section.

![Step 6](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-6.png)

---

## Configure Resource Limits and HPA

### Step 7: Edit Resource Limits
From the `dotnet-sample` deployment, click **Actions > Edit resource limits**.

![Step 7](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-7.png)

### Step 8: Configure Resource Limits
Set the resource limits and requests, then click **Save**.

![Step 8](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-8.png)

### Step 9: Add Horizontal Pod Autoscaler
From the `dotnet-sample` deployment, click **Actions > Add HorizontalPodAutoscaler**.

![Step 9](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-9.png)

### Step 10: Set CPU Utilization
Set the CPU Utilization to **5%** and click **Save**.

![Step 10](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-10.png)

---

## Test the HPA

### Step 11: Open OpenShift Terminal
Initialize the terminal with your project and click **Start**.

![Step 11](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-11.png)

### Step 12: Run the Test Script

#### a. Clone the Repository
```bash
git clone https://github.com/maximilianoPizarro/testing-cpu-based-hpa-ocp.git
```

#### b. Add chmod permission for test-hpa.sh script.

```bash
chmod 777 ./testing-cpu-based-hpa-ocp/test-hpa.sh
```

#### c. Run test-hpa.sh script.

```bash
./testing-cpu-based-hpa-ocp/test-hpa.sh
```

### Step 13: Look at the HPA in action.

![Step 11](https://raw.githubusercontent.com/maximilianoPizarro/testing-cpu-based-hpa-ocp/main/images/step-12.png)

---

# Build Here, Go Anywhere