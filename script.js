
        // =============================================
        // JOBS DATA
        // =============================================
        const itiJobs = [
            { id: 1, title: "इलेक्ट्रीशियन अप्रेंटिस", company: "UPPCB — श्रावस्ती", location: "भिंगा इंडस्ट्रियल एरिया", stipend: "₹12,500/माह", duration: "12 महीने", seats: 25, trade: "Electrician", lastDate: "30 April 2026", description: "वायरिंग, पैनल मेंटेनेंस, HT/LT लाइन। ITI Electrician पास (2 Year)। आवेदन करें।", whatsapp: "919621182261" },
            { id: 2, title: "फिटर अप्रेंटिस", company: "Bharat Heavy Electricals Ltd", location: "निकटतम यूनिट", stipend: "₹10,500/माह", duration: "12 महीने", seats: 20, trade: "Fitter", lastDate: "30 April 2026", description: "मैकेनिकल फिटिंग, असेंबली वर्क, QC। ITI Fitter पास।", whatsapp: "919621182261" },
            { id: 3, title: "वेल्डर (G&M) अप्रेंटिस", company: "Piping Project — Balrampur", location: "बलरामपुर (20km)", stipend: "₹9,500/माह", duration: "6 महीने", seats: 15, trade: "Welder", lastDate: "30 April 2026", description: "GTAW, SMAW, FCAW वेल्डिंग। ITI Welder G&M पास।", whatsapp: "919621182261" },
            { id: 4, title: "टर्नर अप्रेंटिस", company: "Auto Components Ltd", location: "श्रावस्ती", stipend: "₹9,500/माह", duration: "12 महीने", seats: 12, trade: "Turner", lastDate: "30 April 2026", description: "CNC लेथ मशीन ऑपरेशन, QC इंस्पेक्शन। ITI Turner पास।", whatsapp: "919621182261" },
            { id: 5, title: "मशीनीस्ट अप्रेंटिस", company: "श्रावस्ती जिला अस्पताल", location: "जिला अस्पताल, श्रावस्ती", stipend: "₹10,200/माह", duration: "12 महीने", seats: 10, trade: "Machinist", lastDate: "30 April 2026", description: "मेडिकल इक्विपमेंट मेंटेनेंस व रिपेयर। ITI Machinist पास।", whatsapp: "919621182261" },
            { id: 6, title: "COPA अप्रेंटिस", company: "श्रावस्ती जिला प्रशासन", location: "कलेक्ट्रेट कार्यालय", stipend: "₹10,000/माह", duration: "12 महीने", seats: 8, trade: "COPA", lastDate: "30 April 2026", description: "कंप्यूटर ऑपरेटर, डेटा एंट्री, e-Office कार्य। ITI COPA पास।", whatsapp: "919621182261" },
        ];

        let allJobs = [...itiJobs];

        function renderJobs(jobs) {
            const grid = document.getElementById('jobsGrid');
            if (!jobs.length) {
                grid.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding:3rem; color:var(--text-mid);">
      <i class="fas fa-search" style="font-size:3rem; color:var(--saffron); margin-bottom:1rem; display:block;"></i>
      कोई जॉब नहीं मिली — फ़िल्टर बदलें
    </div>`;
                return;
            }
            grid.innerHTML = jobs.map(job => `
    <div class="job-card">
      <div class="job-card-top">
        <div>
          <div class="job-title">${job.title}</div>
          <div class="job-company"><i class="fas fa-building"></i> ${job.company}</div>
        </div>
        <div class="job-stipend-badge">${job.stipend}</div>
      </div>
      <p class="job-desc">${job.description}</p>
      <div class="job-meta-row">
        <div class="job-meta-item"><i class="fas fa-map-marker-alt"></i> ${job.location}</div>
        <div class="job-meta-item"><i class="fas fa-users"></i> ${job.seats} सीटें</div>
        <div class="job-meta-item"><i class="fas fa-clock"></i> ${job.duration}</div>
        <div class="job-meta-item job-deadline"><i class="fas fa-calendar-alt"></i> ${job.lastDate}</div>
      </div>
      <div class="job-actions-row">
        <button class="btn-job-apply" onclick="applyJob('${job.title}','${job.whatsapp}')">
          <i class="fas fa-file-alt"></i> Apply करें
        </button>
        <button class="btn-job-wa" onclick="window.open('https://wa.me/${job.whatsapp}?text=${encodeURIComponent('ITI भिंगा से ' + job.title + ' के लिए आवेदन!\nनाम: \nMobile: \nITI पास वर्ष: ')}','_blank')">
          <i class="fab fa-whatsapp"></i> WhatsApp
        </button>
      </div>
    </div>
  `).join('');
        }

        function filterJobs() {
            const trade = document.getElementById('tradeFilter').value;
            const search = document.getElementById('searchInput').value.toLowerCase();
            const filtered = itiJobs.filter(job => {
                const matchTrade = !trade || job.trade === trade;
                const matchSearch = !search || job.title.toLowerCase().includes(search) || job.company.toLowerCase().includes(search) || job.location.toLowerCase().includes(search);
                return matchTrade && matchSearch;
            });
            renderJobs(filtered);
        }

        function filterByTrade(trade) {
            document.getElementById('tradeFilter').value = trade;
            filterJobs();
            document.getElementById('jobs').scrollIntoView({ behavior: 'smooth' });
        }

        function applyJob(title, wa) {
            const msg = `नमस्ते! मैं ITI Bhinga से ${title} के लिए आवेदन करना चाहता हूं।\n\nनाम: \nMobile: \nITI पास वर्ष: \nMarks %: \n\nकृपया आगे की प्रक्रिया बताएं।`;
            window.open(`https://wa.me/${wa}?text=${encodeURIComponent(msg)}`, '_blank');
        }

        // Counter Animation
        function animateCounters() {
            document.querySelectorAll('.stat-num').forEach(el => {
                const target = parseInt(el.dataset.target);
                let current = 0;
                const step = target / 80;
                const timer = setInterval(() => {
                    current += step;
                    if (current >= target) { el.textContent = target; clearInterval(timer); }
                    else { el.textContent = Math.floor(current); }
                }, 20);
            });
        }

        // Navbar
        window.addEventListener('scroll', () => {
            const nb = document.getElementById('navbar');
            if (window.scrollY > 60) {
                nb.style.padding = '0.5rem 2rem';
                nb.style.background = 'rgba(7,13,58,0.98)';
            } else {
                nb.style.padding = '0.75rem 2rem';
                nb.style.background = 'rgba(13,22,87,0.96)';
            }
        });

        function toggleMenu() {
            const links = document.getElementById('navLinks');
            const ham = document.getElementById('hamburger');
            links.classList.toggle('open');
            ham.classList.toggle('active');
        }

        // Close menu on link click
        document.querySelectorAll('.nav-links a').forEach(a => {
            a.addEventListener('click', () => {
                document.getElementById('navLinks').classList.remove('open');
            });
        });

        // Fade-in Observer
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(e => { if (e.isIntersecting) { e.target.classList.add('visible'); } });
        }, { threshold: 0.1 });
        document.querySelectorAll('.fade-in').forEach(el => observer.observe(el));

        // Form Submit
        document.getElementById('apprenticeForm').addEventListener('submit', function (e) {
            e.preventDefault();
            const data = new FormData(e.target);
            const d = Object.fromEntries(data);
            const modal = document.getElementById('successModal');
            modal.style.display = 'flex';
            // Send WhatsApp msg
            const msg = `🔧 ITI भिंगा अप्रेंटिस आवेदन 2026\n\nनाम: ${d.name || '-'}\nमोबाइल: ${d.mobile || '-'}\nट्रेड: ${d.trade || '-'}\nपासआउट: ${d.passout_year || '-'}\nमार्क्स: ${d.marks || '-'}%\nसंस्थान: ${d.institute || '-'}\nपता: ${d.address || '-'}\n\nकृपया NAPS Portal पर Register करवाएं।`;
            setTimeout(() => window.open(`https://wa.me/919621182261?text=${encodeURIComponent(msg)}`, '_blank'), 1200);
            e.target.reset();
        });

        // Init
        renderJobs(itiJobs);
        animateCounters();
  