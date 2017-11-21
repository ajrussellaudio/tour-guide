import React from 'react';
import { SelectField, MenuItem } from 'material-ui';

export default (props) => {

  const options = props.tours.map(tour => {
    return (
      <MenuItem
        value={tour.id}
        primaryText={tour.name}
        key={tour.id}
      />
    );
  });

  return (
    <SelectField
      onChange={props.onChange}
      floatingLabelText="Tour"
    >
      { options }
    </SelectField>
  );
};
