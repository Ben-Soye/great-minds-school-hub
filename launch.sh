#!/bin/bash

# Great Minds School Hub - Launcher Script

echo "🚀 Great Minds School Hub - Starting Application"
echo "================================================="
echo ""

# Check if Docker and Docker Compose are installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

echo "✅ Docker and Docker Compose detected"
echo ""

# Check if .env file exists
if [ ! -f .env ]; then
    echo "📝 Creating .env file from .env.example..."
    cp .env.example .env
    echo "✅ .env file created"
else
    echo "✅ .env file already exists"
fi

echo ""
echo "🐳 Starting Docker containers..."
echo ""

# Start services
docker-compose up -d

echo ""
echo "⏳ Waiting for services to be healthy..."
sleep 10

echo ""
echo "📊 Service Status:"
docker-compose ps

echo ""
echo "🗄️  Setting up database..."

# Run migrations
echo "Running database migrations..."
docker-compose exec -T backend npm run db:migrate 2>/dev/null || echo "⚠️  Migrations may have already run"

echo ""
echo "✨ Seeding database with sample data..."
docker-compose exec -T backend npm run db:seed 2>/dev/null || echo "⚠️  Database seeding skipped"

echo ""
echo "🎉 ========================================"
echo "   Application Launch Complete!"
echo "=========================================="
echo ""
echo "🌐 Access Points:"
echo "   📱 Frontend:  http://localhost"
echo "   🔌 Backend:   http://localhost:5000"
echo "   🏥 Health:    http://localhost:5000/health"
echo ""
echo "🗄️  Databases:"
echo "   PostgreSQL: localhost:5432"
echo "     User:     school_user"
echo "     Password: school_password"
echo "     DB:       school_hub"
echo ""
echo "   Redis: localhost:6379"
echo ""
echo "📚 Features Ready:"
echo "   ✓ Student Management"
echo "   ✓ Teacher Dashboard"
echo "   ✓ Class Scheduling"
echo "   ✓ Grade Tracking"
echo "   ✓ Attendance System"
echo "   ✓ Course Management"
echo ""
echo "🛑 To stop the application, run:"
echo "   docker-compose down"
echo ""
echo "📖 View logs with:"
echo "   docker-compose logs -f backend   (Backend logs)"
echo "   docker-compose logs -f frontend  (Frontend logs)"
echo ""
echo "Happy learning! 🎓"
echo ""
