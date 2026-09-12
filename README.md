# Great Minds School Hub

A comprehensive school management system built with modern technologies for educational institutions to manage students, teachers, classes, and administrative tasks.

## Features

- 👥 **Student Management** - Enrollment, attendance, grades, and performance tracking
- 👨‍🏫 **Teacher Management** - Class assignments, schedules, and performance metrics
- 📚 **Class Management** - Scheduling, capacity management, and resource allocation
- 📊 **Analytics & Reports** - Comprehensive dashboards and exportable reports
- 🔐 **Secure Authentication** - Role-based access control with JWT
- 📱 **Responsive Design** - Works seamlessly on desktop and mobile devices
- 🚀 **Real-time Updates** - WebSocket support for live notifications
- 🔄 **Background Jobs** - Queue-based processing with Redis

## Tech Stack

### Frontend
- **React 18** - UI library
- **TypeScript** - Type safety
- **Vite** - Fast build tool
- **Tailwind CSS** - Utility-first styling
- **React Query** - Data fetching and caching
- **React Router** - Client-side routing
- **Zod** - Schema validation

### Backend
- **Node.js** - JavaScript runtime
- **Express.js** - Web framework
- **TypeScript** - Type safety
- **Prisma** - ORM and database toolkit
- **PostgreSQL** - Primary database
- **Redis** - Caching and job queue
- **Bull** - Job scheduling
- **JWT** - Authentication

## Prerequisites

- Docker & Docker Compose
- Node.js 20+ (for local development)
- npm or yarn

## Quick Start

### Using Docker Compose (Recommended)

1. **Clone the repository**
   ```bash
   git clone https://github.com/Ben-Soye/great-minds-school-hub.git
   cd great-minds-school-hub
   ```

2. **Set up environment variables**
   ```bash
   cp .env.example .env
   ```

3. **Start all services**
   ```bash
   docker-compose up -d
   ```

4. **Run database migrations**
   ```bash
   docker-compose exec backend npm run db:migrate
   ```

5. **Seed the database (optional)**
   ```bash
   docker-compose exec backend npm run db:seed
   ```

6. **Access the application**
   - Frontend: http://localhost
   - Backend API: http://localhost:5000
   - API Documentation: http://localhost:5000/api/docs

### Local Development

#### Backend Setup
```bash
cd backend
npm install
npm run db:push
npm run dev
```

#### Frontend Setup
```bash
cd frontend
npm install
npm run dev
```

## Project Structure

```
great-minds-school-hub/
├── backend/
│   ├── src/
│   │   ├── index.ts
│   │   ├── config/
│   │   ├── middleware/
│   │   ├── routes/
│   │   ├── controllers/
│   │   ├── services/
│   │   └── utils/
│   ├── prisma/
│   │   └── schema.prisma
│   ├── Dockerfile
│   ├── package.json
│   └── tsconfig.json
├── frontend/
│   ├── src/
│   │   ├── main.tsx
│   │   ├── App.tsx
│   │   ├── pages/
│   │   ├── components/
│   │   ├── hooks/
│   │   ├── services/
│   │   └── utils/
│   ├── Dockerfile
│   ├── package.json
│   └── vite.config.ts
├── docker-compose.yml
└── README.md
```

## API Documentation

API documentation is available at `/api/docs` when the backend is running.

## Environment Variables

See `.env.example` for a complete list of environment variables.

## Development Scripts

### Backend
```bash
npm run dev           # Start development server
npm run build         # Build for production
npm run test          # Run tests
npm run lint          # Run linter
npm run db:migrate    # Run database migrations
npm run db:seed       # Seed database with sample data
```

### Frontend
```bash
npm run dev           # Start development server
npm run build         # Build for production
npm run test          # Run tests
npm run lint          # Run linter
```

## Contributing

1. Create a feature branch (`git checkout -b feature/amazing-feature`)
2. Commit your changes (`git commit -m 'Add amazing feature'`)
3. Push to the branch (`git push origin feature/amazing-feature`)
4. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support, email support@schoolhub.example.com or create an issue in the repository.

## Roadmap

- [ ] Mobile app (React Native)
- [ ] Video conferencing integration
- [ ] Advanced analytics and AI-powered insights
- [ ] Parent portal
- [ ] Automated grading system
- [ ] Integration with payment gateways

---

**Made with ❤️ by Ben-Soye**
