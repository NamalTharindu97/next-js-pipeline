export default function Home() {
  return (
    <main className="min-h-screen bg-slate-950 text-white">
      <div className="mx-auto max-w-6xl px-6 py-16">
        <div className="mb-12">
          <p className="mb-3 text-sm font-medium text-cyan-400">
            AWS DevSecOps Project
          </p>

          <h1 className="text-4xl font-bold tracking-tight sm:text-6xl">
            Next.js Pipeline
          </h1>

          <p className="mt-5 max-w-2xl text-lg text-slate-400">
            A production-style Next.js application deployed through
            GitHub Actions, Amazon ECR, and Amazon ECS Fargate.
          </p>
        </div>

        <div className="grid gap-6 md:grid-cols-3">
          <div className="rounded-2xl border border-slate-800 bg-slate-900 p-6">
            <p className="text-sm text-slate-400">Application</p>
            <h2 className="mt-2 text-xl font-semibold">Next.js</h2>
            <p className="mt-3 text-sm text-slate-500">
              Modern web application using Next.js and TypeScript.
            </p>
          </div>

          <div className="rounded-2xl border border-slate-800 bg-slate-900 p-6">
            <p className="text-sm text-slate-400">CI/CD</p>
            <h2 className="mt-2 text-xl font-semibold">GitHub Actions</h2>
            <p className="mt-3 text-sm text-slate-500">
              Automated testing, security scanning, Docker builds,
              and deployments.
            </p>
          </div>

          <div className="rounded-2xl border border-slate-800 bg-slate-900 p-6">
            <p className="text-sm text-slate-400">Infrastructure</p>
            <h2 className="mt-2 text-xl font-semibold">AWS ECS Fargate</h2>
            <p className="mt-3 text-sm text-slate-500">
              Containerized application running inside a private VPC.
            </p>
          </div>
        </div>

        <div className="mt-10 rounded-2xl border border-slate-800 bg-slate-900 p-6">
          <h2 className="text-xl font-semibold">Deployment Flow</h2>

          <div className="mt-6 flex flex-wrap items-center gap-3 text-sm">
            <span className="rounded-lg bg-slate-800 px-4 py-2">
              Developer
            </span>

            <span className="text-slate-500">→</span>

            <span className="rounded-lg bg-slate-800 px-4 py-2">
              GitHub
            </span>

            <span className="text-slate-500">→</span>

            <span className="rounded-lg bg-slate-800 px-4 py-2">
              GitHub Actions
            </span>

            <span className="text-slate-500">→</span>

            <span className="rounded-lg bg-slate-800 px-4 py-2">
              ECR
            </span>

            <span className="text-slate-500">→</span>

            <span className="rounded-lg bg-slate-800 px-4 py-2">
              ECS Fargate
            </span>
          </div>
        </div>

        <footer className="mt-12 text-sm text-slate-500">
          DevSecOps Demo • Next.js • AWS
        </footer>
      </div>
    </main>
  );
}