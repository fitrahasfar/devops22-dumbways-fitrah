## 1. Comparison between Monolith Applications & Microservices Applications?

| **Aspect**           | **Monolith**                                                                 | **Microservices**                                                                                     |
|----------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| Structure         | Application built as a single codebase.                 | The application consists of small services, each having specific functionality.    |
| Scaling       | Difficult to scale must add the entire application at once.                | Easy to scale; certain services can be scaled independently.                               |
| Complexity     | Simpler to manage for small to medium applications.     | More complex, requiring an orchestrator to manage multiple services.        |
| Dependencies   | Interrelated changes to one module can affect another.           | Isolated services have separate dependencies.                                                    |
| Development Speed | Slowly for large teams changes to one feature affect others. | Fast small teams can work in parallel on different services.                                         |
| Technology        | Usually uses one technology stack.                                 | May use different technologies for each service.                                            |
| Deployment       | Single deployment for the entire application.                                 | Independent deployment for each service.                                                         |
| Maintenance      | Difficult to maintain as the application grows.                             | Easy to fix or change without affecting other services.                                         |

## 2. Deploy Simple application NodeJS, Golang & Python

## 3. Deploy the dumbflix application (https://github.com/dumbwaysdev/dumbflix-frontend), using node version 14

## 4. Implement the use of PM2 so that applications can run in the background (simple-app-node, simple-app-python, dumbflix)
