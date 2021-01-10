import React from 'react';

const GiphysIndexItem = function({gif}) {
    debugger
    return(
       <li>
           <img src={gif.images.original.url}/>
       </li>
           
    )
};
export default GiphysIndexItem