# eu_soccer

Soccer score app

## Project documentation
### Technology used:
**Flutter**

#### packages used:
* **get**: for state management and routing, 
* **get_storage**: used as local storage, 
* **cached_network_image**: to show network images,
* **http**: for api calls

### Pattern:
MVC

## Short overview:

In a short time, I tried to structure the project. There are several folders separated for a different types of files. I am describing shortly which folder contains which files:<br>
folder names and files:
* **assets**: contains all of our static files like images. Here only one logo is used which is located inside 'assets/img/'.
* **lib/constants**: this folder contains the contains variable we used in our app like our API URLs, image location, global padding, screen size etc.
* **lib/controllers**: This folder contains all the logic of our app. We used getX controllers to manage the app state. There are two files inside it. one is base_controller which contains the global controller settings and another one is test_controller which we used for club list API handling. 
* **lib/models**: Here we defined the data structure of the response. We have a file there called clubs_model.dart. We got a JSON response which is a list of maps, for clean code use convert the JSON object here to a dart class. 
* **lib/services**: This folder contains all the necessary things for language translation and the theming of our app. There are some other files also handling the app exceptions.
* **lib/views**: Here we have all the UI of our app. We separated the UI into different folders. 'Widgets' folder contains our custom-made widgets and the 'pages' folder contains the main screens of the app(eg: club list screen, club detail screen).


<br>
<br>
<br>
----------------------------------------------------
<br>
