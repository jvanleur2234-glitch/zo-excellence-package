import { useState } from "react";

const DEMO_CODE = "FUNNEL1";

export default function SubTrim() {
  const [email, setEmail] = useState("");
  const [code, setCode] = useState("");
  const [step, setStep] = useState<"landing" | "scanning" | "results" | "paywall">("landing");
  const [error, setError] = useState("");
  const [subscriptions, setSubscriptions] = useState<{name: string; price: string; category: string}[]>([]);
  const [total, setTotal] = useState(0);

  const runScan = () => {
    setStep("scanning");
    setTimeout(() => {
      const found = [
        { name: "Netflix", price: "$15.99/mo", category: "Streaming" },
        { name: "Spotify Premium", price: "$10.99/mo", category: "Music" },
        { name: "Disney+", price: "$7.99/mo", category: "Streaming" },
        { name: "YouTube Premium", price: "$13.99/mo", category: "Streaming" },
        { name: "Xbox Game Pass Ultimate", price: "$16.99/mo", category: "Gaming" },
        { name: "Amazon Prime", price: "$14.99/mo", category: "Shopping" },
      ];
      setSubscriptions(found);
      const totalNum = found.reduce((sum, sub) => {
        const num = parseFloat(sub.price.replace("$", "").replace("/mo", ""));
        return sum + num;
      }, 0);
      setTotal(totalNum);
      setStep("results");
    }, 2500);
  };

  const handleDemo = (e: React.FormEvent) => {
    e.preventDefault();
    if (code.trim().toUpperCase() === DEMO_CODE) {
      setError("");
      runScan();
    } else {
      setError("Invalid code. Try FUNNEL1");
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-zinc-900 via-zinc-800 to-zinc-900 text-white">
      <div className="max-w-2xl mx-auto px-6 py-16">
        <div className="text-center mb-10">
          <div className="inline-flex items-center gap-2 bg-emerald-500/10 text-emerald-400 px-4 py-1.5 rounded-full text-sm font-medium mb-6">
            <span className="w-2 h-2 bg-emerald-400 rounded-full animate-pulse" />
            Powered by Solomon OS AI
          </div>
          <h1 className="text-5xl font-bold mb-4">
            <span className="text-red-400">Sub</span>Trim
          </h1>
          <p className="text-xl text-zinc-400 max-w-md mx-auto">
            Find every subscription you are paying for but forgot about. Cancel the ones you do not need.
          </p>
        </div>

        {step === "landing" && (
          <div className="bg-zinc-800/50 border border-zinc-700 rounded-2xl p-8">
            <div className="text-center mb-6">
              <span className="text-4xl">🎁</span>
              <h2 className="text-2xl font-bold mt-2">Free One-Time Report</h2>
              <p className="text-zinc-400 mt-1">Enter your email + demo code to unlock your free scan</p>
            </div>
            <form onSubmit={handleDemo} className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-zinc-400 mb-2">Your email</label>
                <input
                  type="email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="you@email.com"
                  required
                  className="w-full px-4 py-3 bg-zinc-900 border border-zinc-700 rounded-xl focus:outline-none focus:ring-2 focus:ring-red-400 text-white placeholder-zinc-500"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-zinc-400 mb-2">Demo code</label>
                <input
                  type="text"
                  value={code}
                  onChange={(e) => setCode(e.target.value)}
                  placeholder="Enter your code"
                  required
                  className="w-full px-4 py-3 bg-zinc-900 border border-zinc-700 rounded-xl focus:outline-none focus:ring-2 focus:ring-red-400 text-white placeholder-zinc-500 text-center font-mono text-lg tracking-widest"
                />
              </div>
              {error && <p className="text-red-400 text-sm text-center">{error}</p>}
              <button
                type="submit"
                className="w-full py-4 bg-gradient-to-r from-red-500 to-red-600 hover:from-red-600 hover:to-red-700 rounded-xl font-semibold text-lg transition-all"
              >
                Get My Free Report
              </button>
            </form>
            <p className="text-center text-zinc-500 text-sm mt-4">
              Demo code: <code className="text-emerald-400">FUNNEL1</code>
            </p>
          </div>
        )}

        {step === "scanning" && (
          <div className="bg-zinc-800/50 border border-zinc-700 rounded-2xl p-12 text-center">
            <div className="w-16 h-16 mx-auto mb-6 border-4 border-red-500 border-t-transparent rounded-full animate-spin" />
            <h2 className="text-2xl font-bold mb-2">Scanning your accounts...</h2>
            <p className="text-zinc-400">Looking for forgotten subscriptions</p>
          </div>
        )}

        {step === "results" && (
          <div className="space-y-6">
            <div className="bg-gradient-to-r from-emerald-500/20 to-emerald-600/10 border border-emerald-500/30 rounded-2xl p-6 text-center">
              <p className="text-emerald-400 text-sm font-medium mb-1">Your Free Report</p>
              <p className="text-5xl font-bold text-white">${total.toFixed(2)}<span className="text-xl text-zinc-400">/mo</span></p>
              <p className="text-zinc-400 text-sm mt-1">{subscriptions.length} active subscriptions</p>
            </div>

            <div className="bg-zinc-800/50 border border-zinc-700 rounded-2xl overflow-hidden">
              <div className="p-4 bg-zinc-800 border-b border-zinc-700">
                <h3 className="font-semibold">Found Subscriptions</h3>
              </div>
              <div className="divide-y divide-zinc-700">
                {subscriptions.map((sub) => (
                  <div key={sub.name} className="p-4 flex items-center justify-between">
                    <div>
                      <p className="font-medium">{sub.name}</p>
                      <p className="text-sm text-zinc-400">{sub.category}</p>
                    </div>
                    <span className="font-semibold text-red-400">{sub.price}</span>
                  </div>
                ))}
              </div>
            </div>

            <div className="bg-gradient-to-r from-zinc-800 to-zinc-800/50 border border-zinc-700 rounded-2xl p-6">
              <div className="flex items-start gap-4">
                <div className="w-10 h-10 bg-red-500/20 rounded-full flex items-center justify-center flex-shrink-0 text-lg">$</div>
                <div>
                  <h3 className="font-semibold mb-1">Save ${(total * 0.3).toFixed(0)}/month</h3>
                  <p className="text-zinc-400 text-sm mb-4">Most people find 2-3 subs they forgot about. That is ${(total * 0.3).toFixed(0)} back in your pocket every month.</p>
                  <a
                    href="https://buy.stripe.com/dRm5kDfK85QIbKp2I04ZG0c"
                    className="inline-block w-full py-3 bg-gradient-to-r from-red-500 to-red-600 hover:from-red-600 hover:to-red-700 rounded-xl font-semibold text-center transition-all"
                  >
                    Get SubTrim Pro — $2.99/mo
                  </a>
                  <p className="text-center text-zinc-500 text-xs mt-2">Cancel anytime. Secure checkout via Stripe.</p>
                </div>
              </div>
            </div>

            <button onClick={() => { setStep("landing"); setCode(""); }} className="w-full py-3 text-zinc-400 hover:text-white transition-colors text-sm">
              Scan another email
            </button>
          </div>
        )}
      </div>
    </div>
  );
}