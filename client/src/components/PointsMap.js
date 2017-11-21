import React from 'react';
import './leaflet-map.css'
import { Map, Marker, TileLayer } from 'react-leaflet';
import { Container } from 'semantic-ui-react';

function extractPosition(point) {
  return {
    lat: parseFloat(point.latitude),
    lng: parseFloat(point.longitude)
  }
}

export default (props) => {
  const markers = props.points.map(point => {
    return (
      <Marker
        position={extractPosition(point)}
        onClick={() => props.onMarkerClick(point.id)}
        key={point.id}/>
    )
  })
  return (
    <Container>
      <Map bounds={props.points.map(point => extractPosition(point))}>
        <TileLayer
          url='http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png'
          attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
        />
        {markers}
      </Map>
    </Container>
  )
}
