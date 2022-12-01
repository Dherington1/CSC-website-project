// variables 
itemCount = document.querySelector("#itemCount");
mainDiv = document.querySelector("#mainDiv")
// variable that holds API
let fetchURL = "https://jsonplaceholder.typicode.com/albums/2/photos";
let arr = []

// fadeOut function
const fadeOut = (data, photo, div) => {
  // console.log(div)
  
  for(i = 0; i < photo.length - 1; i++) {
    // holds our photo[i].id that makes the index start at 0
    var photoID = photo[i].id - 51
    // console.log(arr)
    // console.log(arr.length)

    if(photoID == data) {
      // fade out element
        // find it by id
        for (i = 0; i < arr.length; i++){
          // console.log(arr[i])
          if (data == arr[i].id){
            let container = arr[i];
        
            var fadeEffect =  setInterval(function () {
                if (!container.style.opacity) {
                    container.style.opacity = 1;
                }
                if (container.style.opacity > 0) {
                    // container.style.opacity -= 0.1;
                    container.setAttribute("hidden", true)
                  } else {
                    clearInterval(fadeEffect);
                  }
                }, 200);
                
                // removes the selected image from array
                photo.splice(i, 1); 
                // removes the selected container from the array          
                arr.splice(i,1)   
          }
              console.log(arr)
        }

      // updates the photo's length HTML
      itemCount.textContent = `There are ${photo.length} photo(s) being shown`;
      console.log(photo)
    }
  }
}

// displays photos data in a card
const createPhotoCard = (photo, e) => {
  console.log(photo.length);

  for (i = 0; i < photo.length; i++){
    // div to hold our components
    var containerDiv = document.createElement("div")
    containerDiv.className = ("container")
    containerDiv.id = ([i]);

    //variable with url
    var urlData = document.createElement("img")
    urlData.className = ("image");
    urlData.id = ([i]);
    urlData.src = photo[i].url;

    //variable with title
    var titleData = document.createElement("h4")
    titleData.className = ("title");
    titleData.id = ([i]);
    titleData.innerHTML = photo[i].title;

    // append to a div
    containerDiv.appendChild(urlData);
    containerDiv.appendChild(titleData);
    arr.push(containerDiv)
    // console.log(containerDiv)

    // listener for click on container to run fadeout function
    containerDiv.addEventListener('click', (e) => {
      var id = e.target.getAttribute('id');
      // console.log(id)
      // containerID = parseInt(id);
      // console.log(containerDiv);
  
      fadeOut(id, photo )
    });

    // append that div to page
    mainDiv.appendChild(containerDiv);
  }
}



const Fetch = () => {

  // fetch using our variable
  fetch(fetchURL)
    // set data to json
    .then((data) => data.json())
    // all of our data = pictures
    .then((pictures) => {
      console.log(pictures)
      // return data for each picture 
      createPhotoCard(pictures);
      
      // post length of pictures on page
      itemCount.textContent = `There are ${pictures.length} photo(s) being shown`;
    })
}

Fetch();