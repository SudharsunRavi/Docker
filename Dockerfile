# 1. Use an official Node.js runtime as the base image
# alpine is lightweight linux distro

FROM node:18-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Set environment variables (ENV)
ENV PORT=3000 DB_URL=url

# 4. Copy package.json and package-lock.json first (better for caching)
COPY package*.json ./

# 5. Install dependencies
RUN npm install

# 6. Copy the rest of the app source code
COPY . .

# 7. Expose the port using the ENV variable
EXPOSE ${PORT}

# 8. Set the entrypoint for the container
ENTRYPOINT ["npm"]
CMD ["start"]


#run this file in server folder
#env inisde app can be normally retrieved with proccess.env
