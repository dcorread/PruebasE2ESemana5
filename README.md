# PruebasE2ESemana6
## Project Information

- University: Universidad de los Andes
- Project: E2E testing of the Ghost CMS application
- Wiki: The project's wiki contains all the information regarding the repository, including detailed test scenarios. Make sure to check the wiki for more information.

## Members

- David Sánchez
- Juan Chiroque
- Diego Correa
- Julio Cardenas

## Video
- https://drive.google.com/file/d/1mWSz0lqBz8RPm15IoKEt4WB66b6jJBs6/view?usp=sharing

## Code Repositories for each project.
- **Link to Playwright Readmi:** https://github.com/dcsm8/uniandes-playwright
- **Link to Kraken Readmi:** https://github.com/julio-c-s/kraken

# Kraken
## Installation

1. Clone the repository:

`git clone https://github.com/julio-c-s/kraken.git`

For the week 7 the branch to download have to be the  `ghostv3`, by dedfault the branch is this However this is a recall to use this branch.

And move to the repo.

`cd kraken`

2. Install the node dependencies:

`npm install`

2.1. Usually the `kraken-node` module is not recognized in the folder, Id this is the case it has to be installed in the folder.

`npm install kraken-node`

3. Update the credentials of the properties.json file with your own ghost credentials:

```json
{
  "GHOSTUSER": <GHOSTUSER>,
  "GHOSTPASSWORD": <GHOSTPASSWORD>,
  "GHOSTNEWPASSWORD": <GHOSTNEWPASSWORD>
}
```

## Test Execution

1. In th folder `features` are located all the cases. In the folder there are three folders with the tests divided by the strategies used.

  a. A priori Tests: This folder contains 29 tests, where each test has its own pool of information for execution. The a-priori data pool is used to address specific cases, ensuring that the system functions correctly in known and expected scenarios.
  
  b. Random Tests: This folder contains 20 tests where each test contains an instance of kraken that generate the information type to test the correctly execution of the test.  These tests aim to validate the correct functionality of the system. The random scenario strategy is used to create completely random test scenarios, exploring unconventional or unexpected situations to evaluate the system's robustness.
  
  c. Pseudo Random Tests: This folder contains 11 tests that cover the field limits and their functionality.The pseudo-random tests are utilized to evaluate edge conditions by assessing scenarios at the limits and limit + 1. These tests aim to validate how the system behaves in critical situations that involve boundary values. By deliberately testing scenarios at the upper and lower limits of input ranges or parameter values, the tests help identify any issues or unexpected behaviors that may arise.
  
2. Each folder has their tests enumerated because this is the order where it has to be executed. To execute a test it has to be moved from the folder allocateed to the folder `features` and run
 `npm install kraken-node`.
3. When the test had finished the feature has to be moved back to the origin folder. And go on with the next feature.

![kraken-Visual-Studio-Code-2023-05-21-20-15-56](https://github.com/julio-c-s/kraken/assets/124327900/0a737816-7423-41dc-9c71-8a9f693b245f)

# Playwright

## E2E and Visual regression testing Ghost CMS App using Playwright

This project demonstrates the use of Playwright to E2E testing on the Ghost CMS application.

## Project Information

- University: Universidad de los Andes
- Project: E2E testing of the Ghost CMS application

## Members

- David Sánchez
- Juan Chiroque
- Diego Correa
- Julio Cardenas

This project aims to test the Ghost CMS application using E2E tests.

## Prerequisites

- Google Chrome browser
- Docker
- Ghost CMS 3.41.1
- Ghost CMS 4.44.0

Install the version 3.41.1 of Ghost

```bash
docker run -d -e url=http://localhost:3001 -p 3001:2368 --name ghost_3.41.1 ghost:3.41.1
```

Create and admin user at (http://localhost:3001)[http://localhost:3001] with these credentials

```yaml
email: "dc.sanchezm1@uniandes.edu.co"
password: "$ArQ^P$Unuzj69"
```

Install the version 4.44.0 of Ghost

```bash
docker run -d -e url=http://localhost:3002 -p 3002:2368 --name ghost_4.44.0 ghost:4.44.0
```

Create and admin user at (http://localhost:3002)[http://localhost:3002] with these credentials

```yaml
email: "dc.sanchezm1@uniandes.edu.co"
password: "$ArQ^P$Unuzj69"
```

## Installation

To set up the project on your local machine, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/dcsm8/uniandes-playwright
```

2. Navigate to the project directory:

```bash
cd uniandes-playwright
```

3. Install the required dependencies:

```bash
npm install
```

4. Update the admin credentials if you used another email or password at page-objects/config.ts file

```javascript
export const config = {
  baseUrl: "http://localhost:3001",
  email: "dc.sanchezm1@uniandes.edu.co",
  password: "$ArQ^P$Unuzj69",
};
```

5. install playwright

```bash
npx playwright install
```

## Running the E2E Tests

1. Open the Playwright Test Runner:

```bash
npx playwright test --ui
```

2. Run V3 and V4 tests

## Running the Visual regression tests

1. Execute the script

```bash
node .\regression-testing\index.js
```
