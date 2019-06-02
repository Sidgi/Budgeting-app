# General Assembly - Project 5

## Project Name: Budgeting app

## Project Overview
This is the fifth project aka Final Project assignment for General Assembly's Software Engineering Immersive program. This will be financial - budgeting app. It will allow you to create your personal budget and track your incomes and expences. Coming from financial background and having passion in both economics and programming I wanted to create app that will integrate my knoledge in both fields. At the same time I always had need in app that will allow to track my expenses and would be free for use. Still even if I can find free app in the vast expanses of Internet, that app would not give me reports that I need and would be full of advertisement content. And in general I always wanted to create such app myself from scratch.
So I tried to make my dream real.

### Description 
My budgeting app will allow users to signup or login into his/her account. The user will be able to create his income/expense and then see reflection in his wallets. The user can track his money flow throw his wallets. The user will also be able to update a income/expense and delete it.

Here are the requirements: 

##### A RESTful JSON API
- Must have an Rails server exposing RESTful JSON endpoints.
- Must have a PostgreSQL database with at least three tables: 1 user table and at least two others of your choice. There must be at least 1 pair of associated tables (one to many, many to many, etc.)
- Must use Active Record to define models for interacting with the database.
- Must have each of the generic controller actions (Index, Show, Create, Update, Delete) between the two non-user models.
- Must use Rails Routes to organize your route endpoints.
##### A front-end that consumes your own API
- Permit the user to perform Index, Show, Create, Update, and Delete actions only if they are logged in.
- Layout and style your front-end with clean & well-formatted CSS. Remember to use Grid and Flexbox!
- Use Semantic UI for styling
- Use React Router for client side routing.

### User's Story

* My user needs some free app to track money flow.
* User finds my for now free app :) and starts to use it !
* In order to use my app user needs either have already account or sign up
* Sign up process is easy. User just needs to fill up generic form
* After user signed up he needs to log in.
* After user is logged in, whole functionality of my app will be available for him, which will include following: 
- Will be able to See User's accounts and see reports generated upon his income/expenses, and filter his income and expenses by category, date.
- Will be able to create income/expense
- Will be able to update income/expense (If he made typo when he created operation)
- Will be able to delete income/expense (If he created operation by mistake)

### Project Schedule table

Day | Deliverable
-----------------|----------------------------------------
Day 1: Sunday    |  Wireframes, Research, Component Hierarchy
Day 2: Monday | Set up back-end and server-side
Day 3: Tuesday  | Set-up front-end, reach end=points from front-end
Day 4: Wednesday    | Styling CSS and making Working Prototype
Day 5: Thursday    | Editing, Post MVP, Final Testing
Day 6: Friday    | Deployment, Presentation


### App Components	
* CREATE - User will be able to create a income/expense 
* READ - Users will be able to view all of his incomes/expenses and reports 
* UPDATE - will be able to update a income/expense 
* DELETE - will be able to delete a income/expense 

### Technologies Being Used:
For this project, we will be using Ruby on Rails, Postgres, React,  Semantic UI , Canvas.js , D3.js . 

An explanation of the major challenges expected while building this app and how you foresee your team solving them:
- Implementing Rails as a back-end -
    Solution: Referring to past labs with Rails
- Implementing React as a front-end -
    Solution: Referring to past labs with React
- Deploying to Heroku and Surge -
    Solution: Working as a class to deploy on Friday
- Using libraries such as Semantic UI, Canvas.js, D3.js -
    Solution: Watch videos, Search in Google, Search in Stack Overflow

### MVP
* Auth, Log in, Sign up
* Create new operation
* READ all operations 
* Update operations
* Delete operation 

### Post MVP
* D3 , Canvas.js , Styling with graphs
* Categorized by cash and credit
* Currency differantiation
* Implement Active Storage and using AWS S3 for file uploads
* Implement Limits for app
* Implement Prioraty for Expenses
* Search operation (income/expense) based on name/user/cuisine type/ingredients
* Improve CSS
* Implement Budgeting API
* Comments
* Refactor code

### Wireframes
- Wireframe for main page: 

![main page](https://user-images.githubusercontent.com/39839481/58766018-ae99d480-8547-11e9-821b-c3a8a359d6f9.png)

- Wireframe for login page: 

![login](https://user-images.githubusercontent.com/39839481/58766032-ea349e80-8547-11e9-92ce-8587d2eee3d0.png)

- Wireframe for signup page: 

![Signup](https://user-images.githubusercontent.com/39839481/58766028-db4dec00-8547-11e9-870f-796656dfa277.png)

- Wireframe for my account page: 

![myaccount](https://user-images.githubusercontent.com/39839481/58766034-ff113200-8547-11e9-859d-321cc6d6e924.png)

- Wireframe for create operation page: 

![createOperation](https://user-images.githubusercontent.com/39839481/58766040-10f2d500-8548-11e9-8d2d-d8b8be0057c9.png)

- Wireframe for reports page: 

![reports](https://user-images.githubusercontent.com/39839481/58766058-41d30a00-8548-11e9-8a39-2e60afbfb0fd.png)

- Wireframe for incomes page: 

![incomes](https://user-images.githubusercontent.com/39839481/58766056-367fde80-8548-11e9-89a5-1b6dc4a3202c.png)

- Wireframe for expenses page: 

![expenses](https://user-images.githubusercontent.com/39839481/58766055-2b2cb300-8548-11e9-9b75-c05db631dea7.png)

### Entity Relationship Diagram (ERD)

- ERD MVP: 

![ERD MVP](https://user-images.githubusercontent.com/39839481/58766121-f8cf8580-8548-11e9-904b-0ea1c988589d.png)


### Component hierarchy

![ComponentHierarchyForProject5](https://user-images.githubusercontent.com/39839481/58766010-95912380-8547-11e9-82dd-a3b130aade4c.png)

### Screenshots

- Coming Soon

### Deployment
This project's back-end will be deployed on Heroku.com and front-end on Surge. 
