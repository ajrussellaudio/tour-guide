import React from 'react';
import { Item } from 'semantic-ui-react';

export default class TourDetailsContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  componentWillReceiveProps(nextProps) {
    const url = "api/tours/" + nextProps.selectedTour;
    console.log(url);
    fetch(url)
      .then(response => response.json())
      .then(tour => this.setState({tour}))
  }

  render() {
    if (!this.state.tour) return null;
    return (
      <div id="TourDetails">
        <h1>{this.state.tour.name}</h1>
        <p>{this.state.tour.info}</p>
      </div>
    );
  }
}
