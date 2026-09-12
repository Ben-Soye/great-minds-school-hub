import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'

function App() {
  return (
    <Router>
      <div className="min-h-screen bg-gray-50">
        <header className="bg-white shadow">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
            <h1 className="text-3xl font-bold text-gray-900">
              🎓 Great Minds School Hub
            </h1>
            <p className="text-gray-600 mt-1">Comprehensive School Management System</p>
          </div>
        </header>

        <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
          <Routes>
            <Route
              path="/"
              element={
                <div className="text-center">
                  <h2 className="text-2xl font-bold text-gray-900 mb-4">
                    Welcome to School Hub
                  </h2>
                  <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mt-8">
                    <div className="bg-white p-6 rounded-lg shadow">
                      <div className="text-3xl mb-2">👥</div>
                      <h3 className="font-bold mb-2">Student Management</h3>
                      <p className="text-gray-600 text-sm">
                        Manage student enrollments, attendance, and grades
                      </p>
                    </div>
                    <div className="bg-white p-6 rounded-lg shadow">
                      <div className="text-3xl mb-2">👨‍🏫</div>
                      <h3 className="font-bold mb-2">Teacher Dashboard</h3>
                      <p className="text-gray-600 text-sm">
                        Track classes, assignments, and student performance
                      </p>
                    </div>
                    <div className="bg-white p-6 rounded-lg shadow">
                      <div className="text-3xl mb-2">📊</div>
                      <h3 className="font-bold mb-2">Analytics</h3>
                      <p className="text-gray-600 text-sm">
                        Comprehensive reports and performance metrics
                      </p>
                    </div>
                  </div>
                </div>
              }
            />
          </Routes>
        </main>

        <footer className="bg-gray-800 text-white mt-12">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <p className="text-center">
              © 2024 Great Minds School Hub. All rights reserved.
            </p>
          </div>
        </footer>
      </div>
    </Router>
  )
}

export default App
