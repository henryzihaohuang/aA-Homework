import { createStore } from "redux";
import reducer from "./reducer"; //doesnt need curly braces because it is export default;


const store = createStore(reducer);

export default store ;
