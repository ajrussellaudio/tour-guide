import React from 'react';
import PointsMap from '../components/PointsMap';
import PointDetailsContainer from './PointDetailsContainer';

export default class TourDetailsContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedPoint: null
    };
    this.handlePointSelected = this.handlePointSelected.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.selectedTour !== this.props.selectedTour) {
      this.setState({selectedPoint: null})
    }
    const url = "/api/tours/" + nextProps.selectedTour;
    fetch(url)
    .then(response => response.json())
    .then(tour => this.setState({tour}))
    .catch(console.log)
  }

  handlePointSelected(point) {
    this.setState({ selectedPoint: point })
  }

  render() {
    if (!this.state.tour) return null;
    return (
      <div id="tour-details" className="wrapper">
        <PointsMap points={this.state.tour.points} onMarkerClick={this.handlePointSelected} />
        <PointDetailsContainer {...this.state} />
      </div>
    );
  }
}
