// const connectContainer = document.querySelector(".discover-entity-list")
let limit
let mutualChecked
let connectJob


chrome.runtime.onMessage.addListener(
	function(request, sender, sendResponse) {
		console.log(sender.tab ?
			"from a content script:" + sender.tab.url :
			"from the extension");
		if (request.connectLimit){
			connectJob = request.connectJob.toLowerCase()
			mutualChecked = request.checked
			limit = parseInt(request.connectLimit)
			console.log(limit)
			clickConnectTimeout(mutualChecked, connectJob)
			// window.location.reload()
		}
	});
	



function clickConnectTimeout(mutualChecked, connectJob){
	let cards = document.querySelectorAll(".discover-entity-type-card__bottom-container")

	console.log(cards.length)
	if (connectJob !== "") {
		let jobTitleCards = []

		let i = 0
		while ( i < limit) {
			(function(i) {
				let jobTitle = cards[i].parentNode.children[2].children[1].children[3].innerText.toLowerCase()
			
					if (jobTitle.includes(connectJob)) {
						// console.log('true')
						jobTitleCards.push(cards[i])
					}
			}
		)(i++)
	}
		console.log(jobTitleCards.length)
		cards = jobTitleCards
	} else if (mutualChecked === "-1") {
		let checkedCards = []
			cards.forEach( card => {
				let title = card.children[0]
					if (title.className === "member-insights member-insights--discover-center-align") {
						if (title.innerText.includes("mutual connection")){
							checkedCards.push(card)
						}
					}
			})
		cards = checkedCards
	} else if(mutualChecked === "1") {
		cards = cards 
		// document.querySelectorAll(".discover-entity-type-card__bottom-container")
	}

	// console.log(cards[0].children[1].children[0].querySelector('span').innerText)
	


	console.log(cards.length)
	let i = 0
	while ( i < limit) {
		(function(i) {
			setTimeout(function(){ 
					cards[i].children[1].children[0].click() 
					// console.log(cards[i].parentNode.children[2].children[1].children[3].innerText)
					console.log("clicked", i)
				}, i * 700);
		})(i++)
	}
}


