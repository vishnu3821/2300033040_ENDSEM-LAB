# Travel Management System - Frontend

A modern, responsive frontend for the Travel Management System built with React 19 and Vite.

## 🚀 Features

- ⚡ Built with React 19 and Vite
- 🎨 Modern UI with responsive design
- 🔄 State management with React Hooks
- 🛣️ Client-side routing with React Router
- 🐳 Docker containerization support
- 🧪 Unit testing setup
- 🎯 Production-ready build configuration

## 🛠️ Prerequisites

- Node.js 18 or higher
- npm or yarn
- Docker (optional, for containerized deployment)

## 🚀 Getting Started

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/vishnu1720/travel-frontend.git
   cd travel-frontend
   ```

2. Install dependencies:
   ```bash
   npm install
   # or
   yarn
   ```

3. Start the development server:
   ```bash
   npm run dev
   # or
   yarn dev
   ```

4. Open [http://localhost:5173](http://localhost:5173) in your browser.

### Docker Setup

1. Build the Docker image:
   ```bash
   docker build -t tms-frontend .
   ```

2. Run the container:
   ```bash
   docker run -p 5173:5173 tms-frontend
   ```

### Docker Compose

```bash
docker-compose up --build
```

## 📦 Scripts

- `dev` - Start development server
- `build` - Build for production
- `preview` - Preview production build
- `lint` - Run ESLint
- `test` - Run tests

## 🌐 Environment Variables

Create a `.env` file in the root directory with the following variables:

```env
VITE_API_BASE_URL=http://localhost:3000
# Add other environment variables here
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [React](https://reactjs.org/)
- [Vite](https://vitejs.dev/)
- [React Router](https://reactrouter.com/)
