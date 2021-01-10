import React from 'react';
import GiphysIndexItem from './giphys_index_item';

function GiphysIndex({ giphys }){
    debugger
    return(
        <ul>
            {giphys.map((gif,idx) => <GiphysIndexItem key={idx} gif={gif} />)}
        </ul>
    )
}

export default GiphysIndex;