### Test Scenarios using Gherkin (Given/When/Then) Format

#### 1. Happy Path Scenario: Accessing Payment Traceability Screen Successfully

**Title:** User can access the FMC tab and select Payment Traceability.

**Pre-conditions:**
- The finance user is logged into the system.
- The FMC tab is visible on the dashboard.

**Expected Result:**
- The Payment Traceability screen loads successfully with search filters for Account ID, Payment Gateway ID, and time period.

| Gherkin Scenario | Steps |
|------------------|-------|
| **Given**        | A finance user is logged into the system. |
| **When**         | The finance user clicks on the FMC tab. |
| **Then**         | The Payment Traceability screen loads successfully with search filters for Account ID, Payment Gateway ID, and time period. |

#### 2. Edge Case Scenario: Accessing Payment Traceability Screen from a Non-Finance User

**Title:** Non-finance user attempts to access the FMC tab.

**Pre-conditions:**
- A non-finance user is logged into the system.
- The FMC tab is visible on the dashboard.

**Expected Result:**
- The non-finance user should be redirected to an error page or denied access to the Payment Traceability screen.

| Gherkin Scenario | Steps |
|------------------|-------|
| **Given**        | A non-finance user is logged into the system. |
| **When**         | The non-finance user clicks on the FMC tab. |
| **Then**         | The non-finance user should be redirected to an error page or denied access to the Payment Traceability screen. |

#### 3. Negative Scenario: Accessing Payment Traceability Screen with Invalid Credentials

**Title:** Finance user attempts to access Payment Traceability Screen with invalid credentials.

**Pre-conditions:**
- A finance user is logged into the system.
- The FMC tab is visible on the dashboard.

**Expected Result:**
- The finance user should receive an error message indicating that the credentials are invalid.

| Gherkin Scenario | Steps |
|------------------|-------|
| **Given**        | A finance user is logged into the system. |
| **When**         | The finance user attempts to access Payment Traceability Screen with invalid credentials. |
| **Then**         | The finance user should receive an error message indicating that the credentials are invalid. |

#### 4. UI/UX Consistency Scenario: Navigation from FMC Tab

**Title:** Finance user navigates to Payment Traceability screen from FMC tab.

**Pre-conditions:**
- The finance user is logged into the system.
- The FMC tab is visible on the dashboard.

**Expected Result:**
- The navigation from FMC tab to Payment Traceability screen should be seamless with no errors or delays.

| Gherkin Scenario | Steps |
|------------------|-------|
| **Given**        | A finance user is logged into the system. |
| **When**         | The finance user clicks on the FMC tab and then selects Payment Traceability. |
| **Then**         | The navigation from FMC tab to Payment Traceability screen should be seamless with no errors or delays. |

#### 5. Performance Scenario: System Responsiveness during Navigation

**Title:** System responsiveness during navigation from FMC Tab to Payment Traceability Screen.

**Pre-conditions:**
- The finance user is logged into the system.
- The FMC tab is visible on the dashboard.

**Expected Result:**
- The system should respond within a reasonable time frame (e.g., less than 2 seconds) when navigating from FMC tab to Payment Traceability screen.

| Gherkin Scenario | Steps |
|------------------|-------|
| **Given**        | A finance user is logged into the system. |
| **When**         | The finance user clicks on the FMC tab and then selects Payment Traceability. |
| **Then**         | The system should respond within a reasonable time frame (e.g., less than 2 seconds) when navigating from FMC tab to Payment Traceability screen. |

### Summary of Test Scenarios

| Title                                      | Pre-conditions                                                                                   | Expected Result                                                                                                                                                                                                                       |
|--------------------------------------------|--------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| User can access the FMC tab and select Payment Traceability | A finance user is logged into the system. The FMC tab is visible on the dashboard.                 | The Payment Traceability screen loads successfully with search filters for Account ID, Payment Gateway ID, and time period.                                                                                                               |
| Non-finance user attempts to access the FMC tab | A non-finance user is logged into the system. The FMC tab is visible on the dashboard.               | The non-finance user should be redirected to an error page or denied access to the Payment Traceability screen.                                                                                                                         |
| Finance user attempts to access Payment Traceability Screen with invalid credentials | A finance user is logged into the system. The FMC tab is visible on the dashboard.                 | The finance user should receive an error message indicating that the credentials are invalid.                                                                                                                                         |
| Finance user navigates to Payment Traceability screen from FMC tab | A finance user is logged into the system. The FMC tab is visible on the dashboard.                   | The navigation from FMC tab to Payment Traceability screen should be seamless with no errors or delays.                                                                                                                                   |
| System responsiveness during Navigation | A finance user is logged into the system. The FMC tab is visible on the dashboard.                 | The system should respond within a reasonable time frame (e.g., less than 2 seconds) when navigating from FMC tab to Payment Traceability screen.                                                                                               |

These scenarios ensure that all aspects of the feature are covered, including happy paths, edge cases, and negative scenarios, while also focusing on usability and performance.
