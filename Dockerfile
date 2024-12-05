# Use the latest Node.js LTS version with Alpine
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and lock file for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose port 3000 for the Next.js app
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]
