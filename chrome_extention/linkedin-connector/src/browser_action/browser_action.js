
    const formSubmit = document.querySelector("#submit-input")
    const mutualConnections = document.querySelector("#mutualConnections")

    mutualConnections.addEventListener("click", e => {
        let checked = parseInt(mutualConnections.value)

        mutualConnections.value = checked * -1
        console.log(mutualConnections.value)
    })


    formSubmit.addEventListener('click', e => {
    const connectLimitInput = document.querySelector("#limit-input")
    const limitValue = connectLimitInput.value

    const jobTitleInput = document.querySelector("#job-title-input")
    const jobTitleInputValue = jobTitleInput.value


        
    event.preventDefault()
    
    
    chrome.tabs.query({active: true, currentWindow: true}, function(tabs) {
        chrome.tabs.sendMessage(tabs[0].id, {connectLimit: `${limitValue}`,connectJob: `${jobTitleInputValue}`, checked: `${mutualConnections.value}` }, function(response) {
        })
    })
    
    // chrome.tabs.create({url: "https://www.linkedin.com/mynetwork/"})

    })

