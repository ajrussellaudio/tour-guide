import React from 'react';
import { Select } from 'semantic-ui-react';

export default (props) => {

  const options = props.tours.map(tour => {
    return {
      text: tour.name,
      value: tour.id,
      key: tour.id
      }
  })

  return (
    <Select fluid selection onChange={props.onChange} placeholder="Select a Tour" options={options}/>
  );
};
