# Use official Node.js image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files and install deps
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Expose Vite default port
EXPOSE 5173

# Default dev command
CMD ["npm", "run", "dev", "--", "--host"]
