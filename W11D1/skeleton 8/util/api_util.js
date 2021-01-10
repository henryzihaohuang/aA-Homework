

const fetchSearchGiphys = (searchTerm) => (
    $.ajax({
        method: "GET",
        url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=4G8DpcpI93587kJGO6z4wWNsbPwcSaWm&limit=2`
        
    })

);

export {fetchSearchGiphys}
// export default fetchSearchGiphys;