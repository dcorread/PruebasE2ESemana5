# PruebasE2ESemana5
## Project Information

- University: Universidad de los Andes
- Project: E2E testing of the Ghost CMS application
- Wiki: The project's wiki contains all the information regarding the repository, including detailed test scenarios. Make sure to check the wiki for more information.
## Members

- David Sánchez
- Juan Chiroque
- Diego Correa
- Julio Cardenas

# E2E test Ghost CMS App using Playwright

This project demonstrates the use of Playwright to E2E testing on the Ghost CMS application.

**Github Link to the code of Playwright:** https://github.com/dcsm8/uniandes-playwright

This project aims to test the Ghost CMS application using E2E tests.

## Prerequisites

- Google Chrome browser
- Docker
- Ghost CMS 3.41.1

## Optional

If you don't have Ghost CMS 3.41.1 installed execute this command

```bash
docker run -d --name some-ghost -e NODE_ENV=development -e url=http://localhost:3001 -p 3001:2368 ghost:3.41.1
```

Create the admin user with the following credentials

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

4. Update the admin credentials at page-objects/config.ts file

```javascript
export const config = {
  baseUrl: "http://localhost:3001", // <---- Update this
  email: "dc.sanchezm1@uniandes.edu.co", // <---- Update this
  password: "$ArQ^P$Unuzj69", // <---- Update this
};
```

## Running the Tests

1. Open the Playwright Test Runner:

```bash
npx playwright test --ui
```
## Playwright Test

![image](https://user-images.githubusercontent.com/124226083/236722304-27b6193d-e8a3-4d48-a919-dbc648fea743.png)


# E2E test Ghost CMS App using Kraken
This project demonstrates the use of Kraken to E2E testing on the Ghost CMS application.

**Github Link to the code of Kraken:** https://github.com/julio-c-s/kraken

## Prerequisites

- Ghost version :  3.41.1.
- Ghost Cli : 1.24.0.
- Node Version : 14.18.0
- Android Studio.

## Installation

1. Clone the repository:

`git clone https://github.com/julio-c-s/kraken.git`

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
4. Run the test:

`npx kraken-node run`

## Test Execution

1. In th folder `features/cases` are located all the cases enumerated. The test have to be executed in order beacuse some cases will be executed succefully when previous test were executed.
2. in the folder `features` is located the file  `1login.feature`, this is the first feature. When this test ends the file have to be moved to the cases folder and the file `2login-fail.feature` have to be moved to the `features` folder.
3. This process have to be done in order with the whole bank of test.
