# V-Chores PROJECT README

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Schema](#Schema)

## Overview
### Description
VChores is an app for Vassar Student to post and exchange "personal services" such as haircuts, nails, sowing, etc., or even make a quick buck in return for the service. 

### App Evaluation
- **Category:** Social Networking / Job Listing
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as tinder or other similar apps. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Users can request "personal services" and connect with a "Professional" - those who can provide those services. The user can then decide to message this person and sign up for an appointment. 
- **Market:** Any Vassar Student could choose to use this app - preferrably those who either can provide or need different services. 
- **Habit:** This app could be used as often or unoften as the user wanted depending on their urgency for the services or if they want to make a quick buck. 
- **Scope:** First we would start with just Vassar students who need different favors/services. However, this can be scaled into different universities, communities, and towns. 


## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a new account
* User can edit their public profile 
* User can post requests with photos 
* User can login, logout, etc. 
* User can search for other users using filters for skills and compensation/ price 
* User can view a feed of transactions

**Optional Nice-to-have Stories**

* User can rate a transaction or rate another user 
* User can pay other users 
* User can like and comment on a transaction 
* User can get notifications if another user requests a skill they offer 
* User can chat with each other
* User can share a request as a link

### 2. Screen Archetypes

* Launch Screen
* Login Screen
   * User can login
* Registration Screen
    * User can create a new account 
* Main Screen
    *  User can view their upcoming appointments 
    *  User can view a feed of transactions
* Account Screen
    * User can edit their public profile 
    * User can add a new skill 
* Profile Screen
    * User can view other's user profile 
    * User can book another user for their request 
* Create Post Screen 
    * User can post a request 
* Create Search Screen 
    * User can search for other users using filters 
    * User can follow other users 
* Search Result Screen TBD
* Single Post Screen TBD

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Feed
* Account 
* Post 
* Search 

**Flow Navigation** (Screen to Screen)

* Login Screen
    * => Feed Screen 
* Login Screen
    * => Registration Screen
* Registration Screen 
    * => Feed Screen 
* Feed Screen 
    * => Request Screen 
* Feed Screen
    * => None, but future version will likely navigate to a detailed screen to see a transaction with full comments 
* Request Screen
    * => Feed Screen 
* Search Screen
    * => Profile Screen 

### Wireframes
### [BONUS] Digital Wireframes & Mockups
![V-Chores Wireframe](https://user-images.githubusercontent.com/78479343/162598268-358b6d8d-f77e-475b-a412-426c73189880.png)
Link: https://www.figma.com/file/hb3J7mbqvKxKjfvb54zeRE/V-Chores-Wireframe?node-id=0%3A1

## Schema 
### Models
#### Post

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | Professional  | Pointer to User| image Professional |
   | image         | File     | image that user posts |
   | caption       | String   | image caption by Professional |
   | commentsCount | Number   | number of comments that has been posted to an image |
   | likesCount    | Number   | number of likes for the post |
   | createdAt     | DateTime | date when post is created (default field) |
   | updatedAt     | DateTime | date when post is last updated (default field) |
   | accepted      | Boolean  | whether or not the request is accepted |
   
### Networking
#### List of network requests by screen
   - Main Screen
      - (Read/GET) 
      - (Create/POST) Create a new like on a post
      - (Delete) Delete existing like
      - (Create/POST) Create a new a post
      - (Create/POST) Create a new comment on a post
      - (Delete) Delete existing post
      - (Delete) Delete existing comment
   - Create Post Screen
      - (Create/POST) Create a new post object
   - Account Screen
      - (Read/GET) Query logged in user object
      - (Update/PUT) Update user profile image
      - (Update/PUT) Update user username
      - (Update/PUT) Update user Bio
      - (Update/PUT) Update user class year
      - (Update/PUT) Update user pronouns
