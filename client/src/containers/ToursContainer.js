import React from 'react';
import ToursSelector from '../components/ToursSelector';

export default class ToursContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      tours: []
    };
    this.handleSelection = this.handleSelection.bind(this);
  }

  componentDidMount() {
    const url = "/api/tours"
    fetch(url)
      .then(response => response.json())
      .then(tours => this.setState({
        tours: tours
      }))
  }

  handleSelection(e, k, value) {
    this.props.onChange(value)
  }

  render() {
    return (
      <ToursSelector tours={this.state.tours} onChange={this.handleSelection}/>
    )
  }
};
