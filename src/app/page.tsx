export default function Home() {

  return (

    <main className="min-h-screen bg-black text-white">

      <section className="max-w-5xl mx-auto px-6 py-20">

        <h1 className="text-5xl font-bold leading-tight">

          Audit Your AI Spend
        </h1>

        <p className="text-zinc-400 mt-6 text-lg">

          Discover overspending across Cursor,
          Claude, ChatGPT, Copilot, and more.

        </p>

        <button
          className="
            mt-8
            bg-white
            text-black
            px-6
            py-3
            rounded-xl
            font-medium
          "
        >
          Start Free Audit
        </button>

      </section>

    </main>
  );
}