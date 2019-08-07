<h1 align="center">Welcome to Code MP 👋</h1>
<p>
  <img src="https://img.shields.io/github/issues/BoooTv/2side-mp?style=for-the-badge" />

</p>

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/18bc4e7a77fc44c2869c9d27e98d4bcd)](https://app.codacy.com/app/huxhales/2side-mp?utm_source=github.com&utm_medium=referral&utm_content=BoooTv/2side-mp&utm_campaign=Badge_Grade_Dashboard)

> A Two Sided Marketplace for Coders.
> [Check it out!](https://codemp-ca.herokuapp.com/)

Check out the [authors](#Authors)

# Contents

- [What is Code MP?](#what-is-code-mp)

  - [Features](#features)
  - [User Interface](#user-interface)
  - [Technology Stack](#technology-stack)
    - [Frontend](#frontend)
    - [Backend](#backend)
    - [Database](#database)
    - [Hosting](#hosting)
  - [Security](#security)

- [Setup and Run](#setup-and-run)

* [Project Planning and Timeline](#project-planning-and-timeline)
  - tewe

## What is Code MP?

Code MP is a two sided marketplace for people to find/sell everything from code snippets to full projects, Websites to Mobile Applications. Designed for coders to sell the work and non-coders to find the tools they need. This helps talent coders to earn a living or make money on the side and business and personal clients to save on the costs involved woth full scale development.

#### Features

- Payment
- Create listings
- Buy items
- leave reviews

[top](#Contents)

#### User Interface

[top](#Contents)

### Technology Stack

#### FrontEnd

- html
- scss

#### BackEnd

- ruby
- ruby on rails

#### Database

- postgresql

#### Hosting

- heroku (For hosting project)
- cloudanary (For image hosting)

#### Software

- Devise

[top](#Contents)

### Security

Secrurity questions

[top](#Contents)

## Setup and run

### Quick start

`git clone https://github.com/BoooTv/2side-mp && cd 2side-mp && bundle install && rails db:setup && rails s`

Then open localhost:3000 in your browser

or

[top](#Contents)

### Full Explanation

Clone repository

`git clone https://github.com/BoooTv/2side-mp`

Change into directory

`cd 2side-mp`

Run Bundle install to install all required files

`bundle install`

Inititialize Rails database

`rails db:setup`

Start Rails server

`rails server`

or use shorthand

`rails s`

explain? architecture

[top](#Contents)

## Design

Intro

- Design process
- User stories
- A workflow diagram of the user journey/s.
- Wireframes

### Database Entity Relationship Diagrams

![database](docs/2sidemp.png?raw=true "Database diagram")
![Relations](docs/Relations.png?raw=true "Database diagram")

- Details of planning process including,

### User Stories

### Workflow

git pull' on master branch
Create a new branch with: git checkout -b branch-name
Commit new work to the new branch
Push to online repo git push origin branch-name
Checkout back to master git checkout -b master
Go to GitHub and merge into master with a new git pull request
git pull on master branch
Delete the branch if not required after merging to master git branch -d branch-name

### Wireframes

### Project Planning and Timeline

#### Project management

For project management we decided to use [github projects](https://github.com/BoooTv/2side-mp/projects/1)

Describe the way tasks are allocated and tracked in your project.

- Discuss how Agile methodology is being implemented in your project.
- Provide an overview and description of your Source control process.
- Provide an overview and description of your Testing process.

- Answers to the Short Answer questions (Section 2.2)
-
- What is the need (i.e. challenge) that you will be addressing in your project?
- Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
- Describe the project will you be conducting and how. your App will address the needs.
- Describe the network infrastructure the App may be based on.
- Identify and describe the software to be used in your App.
- Identify the database to be used in your App and provide a justification for your choice.
- Identify and describe the production database setup (i.e. postgres instance).
- Describe the architecture of your App.
- Explain the different high-level components (abstractions) in your App.
- Detail any third party services that your App will use.
- Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
- Discuss the database relations to be implemented.
- Describe your project’s models in terms of the relationships (active record associations) they have with each other.
- Provide your database schema design.
- Provide User stories for your App.
- Provide Wireframes for your App.
  ![Wireframe](docs/Wireframe.png "Wireframe")
- Describe the way tasks are allocated and tracked in your project.
- Discuss how Agile methodology is being implemented in your project.
- Provide an overview and description of your Source control process.
- Provide an overview and description of your Testing process.
- Discuss and analyse requirements related to information system security.
- Discuss methods you will use to protect information and data.
- Research what your legal obligations are in relation to handling user data.

## Authors

👤 **Huxley**

- Github: [@BoooTv](https://github.com/BoooTv)

👤 **Carl**

- Github: [@carlmccabe](https://github.com/carlmccabe)

## Show your support

Give a ⭐️ if this project helped you!

## Docs stuff

[Github](https://github.com/BoooTv/2side-mp)
