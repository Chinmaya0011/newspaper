/**
 * ⚠️ DEMO FILE ONLY
 * This file intentionally contains fake secrets
 * to test secret scanning tools.
 */

// ---------------- AWS ----------------
const AWS_ACCESS_KEY_ID = "AKIA1234567890DEMO";
const AWS_SECRET_ACCESS_KEY = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYDEMO";

// ---------------- GitHub ----------------
const GITHUB_TOKEN = "ghp_1234567890abcdefghijklmnopqrstuvwxyz";

// ---------------- Google ----------------
const GOOGLE_API_KEY = "AIzaSyD-FAKE-KEY-1234567890";
const GOOGLE_OAUTH_CLIENT_SECRET = "GOCSPX-demo-secret-123456";

// ---------------- Database ----------------
const MONGODB_URI =
  "mongodb+srv://admin:password123@cluster0.demo.mongodb.net/mydb";

const MYSQL_PASSWORD = "mysql_password_demo";

// ---------------- JWT ----------------
const JWT_SECRET = "super-secret-jwt-key-demo";

// ---------------- Stripe ----------------
const STRIPE_SECRET_KEY = "sk_test_51DemoStripeSecretKey";

// ---------------- Private Key ----------------
const PRIVATE_KEY = `
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAtotallyfakeprivatekeyfordemo
onlydontuseinproductionever
-----END RSA PRIVATE KEY-----
`;

// ---------------- Misc ----------------
const SLACK_WEBHOOK =
  "https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXX";

const SENDGRID_API_KEY = "SG.fakeSendgridKeyForDemoOnly";

// Example function
function connect() {
  console.log("Connecting using demo secrets...");
}

connect();
