module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '1a0507db15c17f359d9d8d47a73343d2'),
  },
});
