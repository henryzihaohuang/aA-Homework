import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';

const giphyReducer = (state = [], action) => {
    Object.freeze(state);
    switch(action.type) {
        case RECEIVE_SEARCH_GIPHYS:
            return action.giphys
        default: // all reducers need this since actions hit all reducers
            return state;


    }
};

export default giphyReducer;