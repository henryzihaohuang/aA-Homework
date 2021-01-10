import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { fetchSearchGiphys, receiveSearchGiphys } from './actions/giphy_actions'


// import fetchSearchGiphys from './util/api_util'
document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById('root');
    const store = configureStore();

    //testing
    // window.store=store;
    // window.fetchSearchGiphys= fetchSearchGiphys

    //testing
    ReactDOM.render(<Root store ={store}/>, root)
});
