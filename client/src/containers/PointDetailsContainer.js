import React from 'react';
import PointDetails from '../components/PointDetails';

export default class PointDetailsContainer extends React.Component {
  state = {}

  componentWillReceiveProps(nextProps) {
    if (!nextProps.selectedPoint) return null;
    const url = `/api/tours/${nextProps.tour}/points/${nextProps.selectedPoint}`
    fetch(url)
      .then(response => response.json())
      .then(point => this.setState({point}))
      .catch(console.log)
  }

  render() {
    return <PointDetails {...this.state} />;
  }
}
