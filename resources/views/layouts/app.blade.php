<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title') | {{ $appName }}</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@400;700;800&family=Inter:wght@400;500&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary-color: #6366f1;
            --accent-color: #f43f5e;
        }
        body { font-family: 'Inter', sans-serif; color: #1e293b; background: #fdfdfd; overflow-x: hidden; }
        h1, h2, h3, .navbar-brand { font-family: 'Bricolage Grotesque', sans-serif; }

        /* Custom Soft Animation */
        .fade-in-up { animation: fadeInUp 0.8s ease-out; }
        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Glassmorphism Effect for Navbar */
        .navbar-custom {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(0,0,0,0.05);
        }

        /* Creative Card */
        .creative-card {
            border: none;
            border-radius: 24px;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            background: #ffffff;
            border: 1px solid #f1f5f9;
        }
        .creative-card:hover {
            transform: scale(1.05);
            box-shadow: 0 20px 40px rgba(0,0,0,0.05);
            border-color: var(--primary-color);
        }

        .btn-creative {
            border-radius: 12px;
            padding: 12px 28px;
            font-weight: 600;
            transition: 0.3s;
        }

        :root {
            --bg-dark: #0f172a;
            --accent-glow: rgba(99, 102, 241, 0.15);
        }
        body { 
            font-family: 'Outfit', sans-serif; 
            background-color: #f8fafc;
            color: #1e293b;
        }
        
        /* Bento Grid Style */
        .bento-card {
            background: white;
            border: 1px solid rgba(0,0,0,0.05);
            border-radius: 32px;
            padding: 2rem;
            height: 100%;
            transition: all 0.3s ease;
        }
        .bento-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.08);
            border-color: #6366f1;
        }

        /* Gradient Text */
        .text-gradient {
            background: linear-gradient(90deg, #6366f1, #a855f7);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Floating Animation */
        .floating {
            animation: float 6s ease-in-out infinite;
        }
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
            100% { transform: translateY(0px); }
        }
    </style>
</head>
<body>
    @include('components.navbar')
    <main>@yield('content')</main>
    @include('components.footer')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>