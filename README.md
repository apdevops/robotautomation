# Application Submission Test

This repository contains a Robot Framework script to test the application submission process.

## Prerequisites

- Python 3.x
- Robot Framework
- SeleniumLibrary
- WebDriver (ChromeDriver, GeckoDriver, etc.)

## Setup

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/application-submission-test.git
    cd application-submission-test
    ```

2. Install dependencies:
    ```sh
    pip install -r requirements.txt
    ```

3. Download and place the appropriate WebDriver in your system PATH:
    - [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/)
    - [GeckoDriver](https://github.com/mozilla/geckodriver/releases)

## Running the Test

To run the test, navigate to the `tests` directory and execute the following command:
```sh
robot test_application_submission.robot
