# EXAMPLE GROUP PROJECT README

# TUNIN

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Schema](#Schema)

## Overview
### Description
Tracks what music an individual listens to, and pairs them with others based on that music. Could be potentially used as a dating app, or just meeting new friends with similar music tastes.

### App Evaluation
- **Category:** Social Networking / Music
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as tinder or other similar apps. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Analyzes users music choices, and connects them to other users with similar choices. The user can then decide to message this person and befriend them if wanted.
- **Market:** Any individual could choose to use this app, and to keep it a safe environment, people would be organized into age groups.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how deep their social life is, and what exactly they're looking for.
- **Scope:** First we would start with pairing people based on music taste, then perhaps this could evolve into a music sharing application as well to broaden its usage. Large potential for use with spotify, apple music, or other music streaming applications.

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

### 2. Screen Archetypes

* Launch Screen
* Login Screen
   * User can login
* Registration Screen
    * User can create a new account 
* Feed Screen
    *  User can view their upcoming appointments 
    *  User can view a feed of transactions
* Account Screen
    * User can edit their public profile 
    * User can add a new skill 
* Profile Screen
    * User can view other's user profile 
    * User can book another user for their request 
* Request Screen 
    * User can post a request 
* Search Screen 
    * User can search for other users using filters 
    * User can follow other users 

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


## Wireframes
<img src="https://i.imgur.com/9CrjH1K.jpg" width=800><br>

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.imgur.com/lYHn37F.jpg" height=200>

### [BONUS] Interactive Prototype
<img src="https://i.imgur.com/AiKfE5g.gif" width=200>

## Schema 
### Models
#### Post

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| image author |
   | image         | File     | image that user posts |
   | caption       | String   | image caption by author |
   | commentsCount | Number   | number of comments that has been posted to an image |
   | likesCount    | Number   | number of likes for the post |
   | createdAt     | DateTime | date when post is created (default field) |
   | updatedAt     | DateTime | date when post is last updated (default field) |
### Networking
#### List of network requests by screen
   - Home Feed Screen
      - (Read/GET) Query all posts where user is author
         ```swift
         let query = PFQuery(className:"Post")
         query.whereKey("author", equalTo: currentUser)
         query.order(byDescending: "createdAt")
         query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
            if let error = error { 
               print(error.localizedDescription)
            } else if let posts = posts {
               print("Successfully retrieved \(posts.count) posts.")
           // TODO: Do something with posts...
            }
         }
         ```
      - (Create/POST) Create a new like on a post
      - (Delete) Delete existing like
      - (Create/POST) Create a new comment on a post
      - (Delete) Delete existing comment
   - Create Post Screen
      - (Create/POST) Create a new post object
   - Profile Screen
      - (Read/GET) Query logged in user object
      - (Update/PUT) Update user profile image
#### [OPTIONAL:] Existing API Endpoints
##### An API Of Ice And Fire
- Base URL - [http://www.anapioficeandfire.com/api](http://www.anapioficeandfire.com/api)

   HTTP Verb | Endpoint | Description
   ----------|----------|------------
    `GET`    | /characters | get all characters
    `GET`    | /characters/?name=name | return specific character by name
    `GET`    | /houses   | get all houses
    `GET`    | /houses/?name=name | return specific house by name

##### Game of Thrones API
- Base URL - [https://api.got.show/api](https://api.got.show/api)

   HTTP Verb | Endpoint | Description
   ----------|----------|------------
    `GET`    | /cities | gets all cities
    `GET`    | /cities/byId/:id | gets specific city by :id
    `GET`    | /continents | gets all continents
    `GET`    | /continents/byId/:id | gets specific continent by :id
    `GET`    | /regions | gets all regions
    `GET`    | /regions/byId/:id | gets specific region by :ida
    `GET`    | /characters/paths/:name | gets a character's path with a given namea
# v-chores
VChores is an app for Vassar Student to post and exchange petty work on-campus.
