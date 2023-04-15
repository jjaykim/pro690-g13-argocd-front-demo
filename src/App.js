import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <div
          style={{ display: 'flex', justifyContent: 'center', alignItems: 'flex-end' }}
        >
          <div style={{ fontSize: 50 }}>PRO690 Final Project</div>
          <div style={{ marginLeft: 20, fontSize: 50 }}>:version 1</div>
        </div>

        <img src={logo} className="App-logo" alt="logo" />

        <div style={{ marginTop: 20 }}>
          <div>Jungjoo Kim | 162641195 | jkim594@myseneca.ca</div>
          <div style={{ marginTop: 20 }}>Sanghwa Suh | 100711209 | ssuh6@myseneca.ca</div>
        </div>
      </header>
    </div>
  );
}

export default App;
