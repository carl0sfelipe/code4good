import React from 'react';
import ExampleComponent from '../components/ExampleComponent';
import CreateUserForm from '../components/CreateUserForm';

const HomePage = () => {
  return (
    <div>
      <h1>Welcome to Code4Good</h1>
      <ExampleComponent />
      <CreateUserForm />
    </div>
  );
};

export default HomePage;
