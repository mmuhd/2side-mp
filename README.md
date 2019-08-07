<h1 align="center">Welcome to Code MP 👋</h1>
<p>
  <img src="https://img.shields.io/github/issues/BoooTv/2side-mp?style=for-the-badge" />
  
  [![Codacy Badge](https://api.codacy.com/project/badge/Grade/18bc4e7a77fc44c2869c9d27e98d4bcd)](https://app.codacy.com/app/huxhales/2side-mp?utm_source=github.com&utm_medium=referral&utm_content=BoooTv/2side-mp&utm_campaign=Badge_Grade_Dashboard)


</p>


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

- Heroku (For hosting project)
- Cloudanary (For image hosting)

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


#### User stories

Completed user stories
![user](docs/user_stories.png)


- A workflow diagram of the user journey/s.


### Database

#### Database Entity Relationship Diagrams

![database](docs/2sidemp.png "Database diagram")
![Relations](docs/Relations.png "Database diagram")

- Details of planning process including,

`6. Identify the database to be used in your App and provide a justification for your choice.`

The default rails database is MySQL. But for this project we chose to use PostgresSQL due to the following.
- Free and open source

MySQL is the default database for rails although postgres is a very common one. The main reason we used postgres was it was the first database we learned.


`7. Identify and describe the production database setup (i.e. postgres instance).`

`11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).`

The application is simullar to a 2-sided e-commerce marketplace called Flippa. Flippa would have a much higher and more complex database but it could include
- Users can buy and sell at the same time
- Users have many listings with more things like tags, category.
- There could be a comments table which relates to a Listing
- Each listing could be sold to one person more many people
- A purchase history mode  to connect the listing and user.
- Banned users they could have a table were they are storing info about user who are banned or abusing the system.

`12. Discuss the database relations to be implemented.`

A `User` is our main model so everything relates to user. 
For example a `user` can have many `listings` which is one-to-many relation or `user` many have lots of `orders` which is many-to-many.




`13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.`

Our database has 2 main models User and Listing and 3 smaller ones Order, Rating and Admin. The User is the main model that everything relates to.

##### User Relations
A user can have many listings for example they may want to sell a website and ecommerce store. So we added the relation `has_many listings`. A user also may buy lots of products So we added the `has_many orders`. A user also has an avatar this is done through active storage with the relation `has_one_attached :avatar`.

##### Listing Relations
A listing is created by a user and has the relation `belongs_to user` a listing also has the relation `has_many orders` as use the listing to get info about the user for once a purchase is complete and a listing can have more than one order.

##### Rating Relations
A rating belongs to a user and has relation `belongs_to user`. This is used to keep track of a user rating and comments. Each rating also the the `belongs_to listing` so we can keep track of what listing was this rating related to.

##### Order Relations
An order i created when a user buys a product. It's used to store the listing info, seller info and buyer info. We relate the order to a listing with `Order belongs_to listing` and we identify the seller with `Order belongs_to user`. We decide we only need to store the buyers id and not a reference as the only reasons we add buyer is so they can see order history.

Admin is a future enhancement that will reference a user. This will give the user admin access to the site.



### User Stories

### Workflow
We used a feature branch workflow.

Which is achieved by.



`git pull`' on master branch

Create a new branch with: `git checkout -b branch-name`

Commit new work to the new branch

`git add files` to add files

`git commit -m "your message"`

Check out master `git checkout master`

Pull any new code `git pull master`

Return to branch `git checkout branch`

merger any changes `git merge master`

Checkout back to master `git checkout -b master`

Go to GitHub and merge into master with a new git pull request

`git pull` on master branch

Delete the branch if not required after merging to master `git branch -d branch-name`




### Wireframes
We have done both mobile and desktop wireframes
![Wireframe](docs/Wireframe.png "Wireframe")

##### Styling

Color pallet
![color](docs/color_pallet.png "color")

### Project Planning and Timeline

#### Project management

For project management we decided to use [github projects](https://github.com/BoooTv/2side-mp/projects/1)
![project_managemt](docs/project_managment.png)
We used a feature branching workflow. Here is some of the the closed pull requests ![branch](docs/branch.png)



Describe the way tasks are allocated and tracked in your project.

- Discuss how Agile methodology is being implemented in your project.
- Provide an overview and description of your Source control process.
- Provide an overview and description of your Testing process.

- Answers to the Short Answer questions (Section 2.2)
-
- What is the need (i.e. challenge) that you will be addressing in your project?
- Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
- Describe the project will you be conducting and how. your App will address the needs.

### Describe the network infrastructure the App may be based on.
`Describe the network infrastructure the App may be based on.`

For this  project we used Heroku as our host. Heroku is Platform as a service or paas. Heroku supports a range of languages including rails, node, php and more. A thing that makes heroku good is they are a container based cloud platform and they offer free environments for starting.


`Describe the Architecture of your App`

`Explain the different high-levbel components (abstractions).`


- Identify and describe the software to be used in your App.
- Identify the database to be used in your App and provide a justification for your choice.
- Identify and describe the production database setup (i.e. postgres instance).
- Describe the architecture of your App.
- Explain the different high-level components (abstractions) in your App.
### Third Party / Gems
 `Detail any third party services that your App will use.`
 Mailgun
 - mailgun is used to send emails using there api
 
 ( this was added but i got banned so needs fixing before it can work again )
 
 Stripe
 - We are using stripe to handle payments. They are one of the leading companys in payment managents. For our project we have used only the very basic but stripe can also handle subscripts and other thing related to payments.
 
 
 Cloudinary Cloud Storage
 - Cloudinary is a digital asset hosting platform which we are using to host images for user avatar and listing images.
 
##### Gems
<table>
<tbody>

<tr>
<th>Name</th>
<th>Info</th>
</tr>

<tr>
<td>Devise</td>
<td>Devise is the gem we are using for auth. Eg: login, logout create account</td>
</tr>

<tr>
<td>Stripe</td>
<td>Stripe is being used to manage all payments</td>
</tr>

<tr>
<td>Cloudinary</td>
<td>Cloudinary is used to host and maintain all digital assets</td>
</tr>

<tr>
<td>activestorage-cloudinary-service</td>
<td>This gem connect cloudinary with active storage</td>
</tr>

</tbody>
</table>


- Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
- Discuss the database relations to be implemented.
- Describe your project’s models in terms of the relationships (active record associations) they have with each other.
- Provide your database schema design.
- Provide User stories for your App.

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
