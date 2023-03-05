// import modular routes
import webRoutes from "../modules/web/routes"
import authRoutes from "../modules/auth/routes"
import userRoutes from "../modules/user/routes"
import bookRoutes from "../modules/book/routes"

export default [...webRoutes, ...authRoutes, ...userRoutes, ...bookRoutes]
