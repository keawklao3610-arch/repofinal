# OR Safety Intelligence V2.3.1 / FY2570 (Production only)

**No patient information in this ZIP or the new Google Sheets. No demo login or seeded incidents.**

Google Sheets: https://docs.google.com/spreadsheets/d/1PEpT7XygC2S0taWQ6D12qu6DBV56t9bljlnuzXB1DQo/edit
OAuth Client ID (public): `449794355375-rld9cv5rpvv02hscg1mtd0ftifb74eke.apps.googleusercontent.com`
Admin email (corrected): `keawklao3610@gmail.com`

The app requires Netlify Functions, a Service Account configured in server-only Environment Variables, and Google OAuth Authorized JavaScript Origin. It fails closed if missing. See `START_HERE_TH.txt` and `docs/Netlify_Deployment.md`.

Build: `npm run build` · Tests: `npm test` · Netlify root publish: `dist` · Functions: `netlify/functions` · Existing site: rmpbk.netlify.app

2026 FY historical patient data is NOT imported. Spreadsheet starts with empty incident/RCA/PDF tables.
