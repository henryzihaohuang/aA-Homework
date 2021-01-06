class List extends React.Component

^ this declaration style gives most functionality
alows setting component state and lifecycle methods


class List extends React.Component {
    constructor() {
        super();
        this.state = { items: [] };
    }

    componentDidMount() {
        // this method is called after the component is rendered onto the DOM
        // and fetches items from the API to be rendered as a list
        $.ajax({
            url: '/items',
            success: items => this.setState({ items });
        });
    }

    render() {
        return (
            <div>
      <h1>{this.props.title}</h1>
      <ul>
      {
        this.state.items.map(item =>(<li>{item}</li>))
      }
      </ul>
      </div>
        );
    }
}
---
Other declarations:


const Message = (props) => {
    return <div>{props.text}</div>
};

const Message = ({ text }) => (
    <div>{text}</div>
);

class Message extends React.Component {
    render() {
        return (
            <div>{this.props.text}</div>
        );
    }
};