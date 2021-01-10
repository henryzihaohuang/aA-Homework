import React from 'react';
import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            searchTerm:""
        }

        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(e){
        this.setState({searchTerm:e.currentTarget.value})
    }

    handleSubmit(e){
        e.preventDefault();
        this.props.fetchSearchGiphys(this.state.searchTerm)

    }

    render (){
        return (
            <div>
                <form>
                    <input onChange={this.handleChange} type="text"/>

                    <button onClick={this.handleSubmit} type="submit">Search</button>
                </form>
                <GiphysIndex giphys={this.props.giphys}/>
            </div>
        )
    }
}

export default GiphysSearch;
